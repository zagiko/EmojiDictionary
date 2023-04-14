// EmojiDictionary

import UIKit

class EmojiCollectionViewHeader: UICollectionReusableView {
    lazy var effect = {
//        print("effect")
        return UIVisualEffectView(effect: UIBlurEffect(style: .prominent))
    }()

    lazy var titleLabel = {
//        print("in title label")
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .headline)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        print("init")
        addSubviews()
        configureConstraints()

//        let effect = UIVisualEffectView(effect: UIBlurEffect(style: .prominent))
//
//        self.addSubview(effect)
//
//        effect.align(with: self)
//
//        effect.contentView.addSubview(titleLabel)
//
//        titleLabel.alignCenter(to: effect.contentView)
////        NSLayoutConstraint.activate([
////            titleLabel.centerYAnchor.constraint(equalTo: titleLabel.superview!.centerYAnchor),
////            titleLabel.centerXAnchor.constraint(equalTo: titleLabel.superview!.centerXAnchor)
////        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        addSubview(effect)
        effect.contentView.addSubview(titleLabel)
    }

    private func configureConstraints() {
        effect.align(with: self)
        titleLabel.alignCenter(to: effect.contentView)
    }
}
