//
//  SecondScreenVC.swift
//  Lesson_9
//
//  Created by Динара Аминова on 23.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class SecondScreenVC: UIViewController {
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    
    override func viewDidLoad() {
        leftTextField.tag = 1
        rightTextField.tag = 2
        
        leftTextField.text = "Label"
        rightTextField.text = "some words for this label here"
    }
    
    @IBAction func showText(_ sender: UITextField) {
        switch sender.tag {
        case 1:
            leftLabel.text = leftTextField.text
        case 2:
            rightLabel.text = rightTextField.text
        default:
            return
        }
    }
}
