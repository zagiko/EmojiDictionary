// EmojiDictionary

import UIKit

class EmojiCollectionViewCell: UICollectionViewCell {
    lazy var stackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 2
        return stackView
    }()

    lazy var symbolLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .regular)
        return label
    }()

    lazy var nameLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    lazy var descriptionLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 204/255, alpha: 1)
        addSubviews()
        configureContstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }

    private func addSubviews() {
        contentView.addSubview(stackView)

        stackView.addArrangedSubview(symbolLabel)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(descriptionLabel)
    }

    private func configureContstraints() {
//        stackView.align(with: contentView, constant: 20)
        stackView.alignLeading(to: leadingAnchor, constant: 20)
        stackView.alignTrailing(to: trailingAnchor, constant: 20)
        stackView.alignTop(to: topAnchor, constant: 20)
//        stackView.alignBottom(to: bottomAnchor, constant: 20)
        stackView.alignBottomGreaterThanOrEqual(to: bottomAnchor, constant: -40)

    }
}
