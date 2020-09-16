//
//  SettingsViewController.swift
//  Lesson_10
//
//  Created by Динара Аминова on 04.08.2020.
//  Copyright © 2020 AlekseyKudryashov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    private let settings: [[Setting]] = [[Setting(icon: "✈️", title: "Авиарежим"),
                                          Setting(icon: "💤", title: "Wi-Fi"),
                                          Setting(icon: "🌀", title: "Bluetooth"),
                                          Setting(icon: "📱", title: "Сотовая связь"),
                                          Setting(icon: "🤳", title: "Режим модема")],
                                        [Setting(icon: "📳", title: "Уведомления"),
                                         Setting(icon: "🔊", title: "Звуки, тактильные сигналы"),
                                         Setting(icon: "📵", title: "Не беспокоить"),
                                         Setting(icon: "⏱️", title: "Экранное время")],
                                        [Setting(icon: "🎛️", title: "Основные"),
                                         Setting(icon: "🖥️", title: "Пункт управления"),
                                         Setting(icon: "💡", title: "Экран и яркость"),
                                         Setting(icon: "😎", title: "Универсальный доступ"),
                                         Setting(icon: "🖼️", title: "Обои"),
                                         Setting(icon: "🔍", title: "Siri и Поиск"),
                                         Setting(icon: "🔢", title: "Face ID и код-пароль"),
                                         Setting(icon: "🆘", title: "Экстренный вызов - SOS"),
                                         Setting(icon: "🔋", title: "Аккумулятор"),
                                         Setting(icon: "🐒", title: "Конфиденциальность")]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Настройки"
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        switch section {
        case 0:
            label.text = "Section \(section)"
        case 1:
            label.text = "Section \(section)"
        case 2:
            label.text = "Section \(section)"
        default:
            label.text = "-"
        }
        label.textAlignment = .center
        label.backgroundColor = .systemYellow
        return label
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingsTableViewCell
        cell.iconLabel.text = settings[indexPath.section][indexPath.row].icon
        cell.nameLabel.text = settings[indexPath.section][indexPath.row].title
        return cell
    }
    
    //функция ниже добавлена мною для красоты обработки нажатий на ячейку таблицы)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
