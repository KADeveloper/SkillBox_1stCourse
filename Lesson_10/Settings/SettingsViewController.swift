//
//  SettingsViewController.swift
//  Lesson_10
//
//  Created by Динара Аминова on 04.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    private let content = SettingsModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Настройки"
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingsTableViewCell
        cell.iconLabel.text = content.icons[indexPath.row]
        cell.nameLabel.text = content.names[indexPath.row]
        return cell
    }
    
    //функция ниже добавлена мною для красоты обработки нажатий на ячейку таблицы)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
