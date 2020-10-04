//
//  FirstViewController.swift
//  Lesson_9
//
//  Created by Динара Аминова on 04.10.2020.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var showNextViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNextButtonSettings()
    }
    
    private func setNextButtonSettings() {
        showNextViewButton.setTitle("Next task", for: .normal)
        showNextViewButton.titleLabel?.textAlignment = .center
        showNextViewButton.titleLabel?.textColor = .black
        showNextViewButton.backgroundColor = .systemGray4
        showNextViewButton.layer.borderWidth = 1
        showNextViewButton.layer.borderColor = UIColor.systemGray2.cgColor
        showNextViewButton.layer.cornerRadius = 10
    }
    
    @IBAction private func showSubview(_ sender: Any) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "showFirstSubviewVC")
        vc.hidesBottomBarWhenPushed = true
        show(vc, sender: nil)
    }
}
