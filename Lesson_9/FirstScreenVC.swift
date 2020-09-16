//
//  FirstScreenVC.swift
//  Lesson_9
//
//  Created by Динара Аминова on 23.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class FirstScreenVC: UIViewController {
    @IBOutlet weak var showVerticalSubviewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showVerticalSubviewButton.tag = 0
        showVerticalSubviewButton.layer.cornerRadius = showVerticalSubviewButton.frame.height / 2
        showVerticalSubviewButton.layer.borderWidth = 1
        showVerticalSubviewButton.layer.borderColor = UIColor.red.cgColor
    }

    @IBAction func showColoredScreen(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            let vc = storyboard!.instantiateViewController(withIdentifier: "SubviewScreen")
            show(vc, sender: nil)
        default:
            return
        }
    }
}
