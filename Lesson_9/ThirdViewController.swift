//
//  ThirdViewController.swift
//  Lesson_9
//
//  Created by Динара Аминова on 04.10.2020.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabelSettings()
        setButtonSettings()
    }
    
    private func setButtonSettings() {
        button.setTitle("Show and hide text", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.textColor = .black
        button.backgroundColor = .systemGray4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemGray2.cgColor
        button.layer.cornerRadius = 10
    }
    
    private func setLabelSettings() {
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "строка номер один или два"
    }
    
    @IBAction private func showAllText(_ sender: Any) {
        if labelHeightConstraint.constant == 30 {
            label.preferredMaxLayoutWidth = 55
            labelHeightConstraint.constant = labelHeightConstraint.constant * 5
        } else {
            labelHeightConstraint.constant = 30
            label.preferredMaxLayoutWidth = .nan
        }
        view.layoutIfNeeded()
    }
}
