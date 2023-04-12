//
//  UICollectionView+Extension.swift
//  EmojiDictionary
//
//  Created by Taras Gural on 12.04.2023.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        let identifier = "\(cellType)"
        register(cellType, forCellWithReuseIdentifier: identifier)
    }

    func cell<T: UICollectionViewCell>(cellType: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: "\(cellType)", for: indexPath) as? T else {
            return T()
        }
        return cell
    }

    func registerHeader<T: UICollectionReusableView>(_ type: T.Type) {
        let identifier = "\(type)"
        self.register(
            type,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: identifier)
    }

    func dequeueHeader<T: UICollectionReusableView>(_ type: T.Type, indexPath: IndexPath) -> T {
        let identifier = "\(type)"
        guard let header = self.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: identifier,
            for: indexPath) as? T else {
            return T()
        }
        return header
    }
}
