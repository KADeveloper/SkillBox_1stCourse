//
//  ThirdScreenVC.swift
//  Lesson_9
//
//  Created by Динара Аминова on 23.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class ThirdScreenVC: UIViewController {
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var labelHightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        someLabel.numberOfLines = 0
        someLabel.textAlignment = .center
        someLabel.text = "строка номер один или два"
    }
    
    @IBAction func showAllText() {
        if labelHightConstraint.constant == 30 {
            someLabel.preferredMaxLayoutWidth = 55
            labelHightConstraint.constant = labelHightConstraint.constant * 5
        } else {
            labelHightConstraint.constant = 30
            someLabel.preferredMaxLayoutWidth = .nan
        }
        view.layoutIfNeeded()
    }
}
