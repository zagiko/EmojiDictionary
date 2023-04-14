//
//  EmojiDictionaryCollectionViewCellColumnItem.swift
//  EmojiDictionary
//
//  Created by Mykhailo Zagiko on 13.04.2023.
//

import UIKit

class EmojiDictionaryCollectionViewCellColumnItem: UICollectionViewCell {
    
    lazy var stackViewSymbolText = {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()

    lazy var symbolLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        return label
    }()

    lazy var stackViewText = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 4
        return stackView
    }()
    
    lazy var nameLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var descriptionLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 204/255, alpha: 1)
        addSubview()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    
    }
    
    private func addSubview() {
        contentView.addSubview(stackViewSymbolText)
        
        stackViewText.addArrangedSubview(nameLabel)
        stackViewText.addArrangedSubview(descriptionLabel)
        
        stackViewSymbolText.addArrangedSubview(symbolLabel)
        stackViewSymbolText.addArrangedSubview(stackViewText)
    }
    
    private func configureConstraints() {
        stackViewSymbolText.align(with: contentView, constant: 16)
    }
    
    
}
