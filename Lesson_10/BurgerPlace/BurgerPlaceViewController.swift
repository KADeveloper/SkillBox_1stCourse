//
//  BurgerPlaceViewController.swift
//  Lesson_10
//
//  Created by Динара Аминова on 04.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class BurgerPlaceViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    private let logoImage: UIImageView = UIImageView.init(image: UIImage(named: "logo"))
    private let contentTitle: UILabel = {
        let label = UILabel()
        label.text = "Beaty Place"
        label.font = .boldSystemFont(ofSize: 40)
        label.textColor = .systemRed
        label.textAlignment = .center
        return label
    }()
    
    private let discountImage: UILabel = { //назвал Image для удобства и чтобы не запутаться
        let image = UILabel()
        image.text = "🏷️"
        return image
    }()
    
    private let discountLabel: UILabel = {
        let label = UILabel()
        label.text = "Ваша скидка "
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private let discountSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "20%"
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .systemYellow
        label.textAlignment = .center
        return label
    } ()
    
    private let rateImage: UILabel = {
        let label = UILabel()
        label.text = "⭐"
        label.textAlignment = .center
        return label
    } ()
    
    private let rateLabel: UILabel = {
        let label = UILabel()
        label.text = "5.0"
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .systemRed
        label.textAlignment = .center
        return label
    } ()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    } ()
    
    private let contentDescription: UILabel = {
        let label = UILabel()
        label.text = "Коворкинг для бьюти мастеров"
        label.textColor = .systemYellow
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadContent()
    }
    
    private func loadContent() {
        logoImage.frame = CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.width - 20)
        contentTitle.frame = CGRect(x: logoImage.frame.minX, y: logoImage.frame.maxY + 10, width: logoImage.frame.width, height: 40)
        contentDescription.frame = CGRect(x: logoImage.frame.minX, y: contentTitle.frame.maxY + 5, width: logoImage.frame.width, height: 40)
        discountImage.frame = CGRect (x: logoImage.frame.minX, y: contentDescription.frame.maxY + 10, width: 30, height: 30)
        discountLabel.frame = CGRect (x: discountImage.frame.maxX, y: contentDescription.frame.maxY + 10, width: 160, height: discountImage.frame.height)
        rateLabel.frame = CGRect (x: logoImage.frame.maxX - 60, y: contentDescription.frame.maxY + 10, width: 60, height: 30)
        rateImage.frame = CGRect (x: rateLabel.frame.minX - 30, y: contentDescription.frame.maxY + 10, width: 30, height: 30)
        contentView.frame = CGRect (x: logoImage.frame.minX + 10, y: rateImage.frame.maxY + 20, width: view.frame.width - 40, height: view.frame.width)
        scrollView.addSubview(contentView)
        scrollView.addSubview(discountImage)
        scrollView.addSubview(discountLabel)
        scrollView.addSubview(rateImage)
        scrollView.addSubview(rateLabel)
        scrollView.addSubview(logoImage)
        scrollView.addSubview(contentTitle)
        scrollView.addSubview(contentDescription)
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: contentView.frame.maxY + 10)
    }
}
