//
//  OnlineShopViewController.swift
//  Lesson_10
//
//  Created by Динара Аминова on 04.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class OnlineShopViewController: UIViewController {
    @IBOutlet weak var shopCollectionView: UICollectionView!
    
    private let content: [Clothe] = [Clothe(price: 2900.00, name: "Футболка VICTORY", image: UIImage.init(named: "man1")!, discount: 10),
                                     Clothe(price: 10900.0, name: "Костюм спортивный LUX", image: UIImage.init(named: "woman2")!, discount: 5),
                                     Clothe(price: 3900.0, name: "Худи RUS", image: UIImage.init(named: "woman3")!, discount: 10),
                                     Clothe(price: 2900.0, name: "Боди COLOR BS", image: UIImage.init(named: "woman4")!, discount: 15),
                                     Clothe(price: 4500.0, name: "Зонт BS", image: UIImage.init(named: "man5")!, discount: 15),
                                     Clothe(price: 1100.0, name: "Трусы-стринги GOTHIC WORLD BS", image: UIImage.init(named: "woman6")!, discount: 5)]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Скидки"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shopCollectionView.reloadData()
    }
}

extension OnlineShopViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: shopCollectionView.bounds.width / 2.15, height: shopCollectionView.bounds.height / 1.95)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "showOnlineShopCell", for: indexPath) as! OnlineShopCollectionViewCell
        cell.wearImage.image = content[indexPath.row].image
        cell.wearImage.layer.cornerRadius = 10
        cell.oldPriceLabel.text = String(content[indexPath.row].price) + " руб"
        cell.discountLabel.text = "-\(String(content[indexPath.row].discount))%"
        cell.discountLabel.layer.cornerRadius = 15
        cell.newPriceLabel.text = String((Int(content[indexPath.row].price) * (100 - content[indexPath.row].discount) / 100)) + " руб"
        cell.wearDescriptionLabel.text = content[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 10)
    }
}
