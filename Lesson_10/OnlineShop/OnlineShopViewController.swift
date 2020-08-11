//
//  OnlineShopViewController.swift
//  Lesson_10
//
//  Created by Динара Аминова on 04.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class OnlineShopViewController: UIViewController {
    private let content = Closes()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Скидки"
    }
}

extension OnlineShopViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width / 2) - 10, height: UIScreen.main.bounds.height / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "showOnlineShopCell", for: indexPath) as! OnlineShopCollectionViewCell
        cell.wearImage.image = content.images[indexPath.row]
        cell.oldPriceLabel.text = String(content.prices[indexPath.row]) + " руб"
        cell.discountLabel.text = "-\(String(content.discounts[indexPath.row]))%"
        cell.newPriceLabel.text = String((content.prices[indexPath.row] * (100 - content.discounts[indexPath.row]) / 100)) + " руб"
        cell.wearDescriptionLabel.text = content.names[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}
