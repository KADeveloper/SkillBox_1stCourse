//
//  FirstSubviewVC.swift
//  Lesson_9
//
//  Created by Динара Аминова on 03.09.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class FirstSubviewVC: UIViewController {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        dismiss(animated: true, completion: nil)
    }
}
