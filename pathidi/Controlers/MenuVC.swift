//
//  MenuVC.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/21/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation
import UIKit


class MenuVC: BaseVC {

    let menuView = MenuView()
    var isEducator: Bool!

    override func loadView() {
        self.view = menuView
        menuView.tableView.delegate = self
        menuView.tableView.dataSource = self
        isEducator = false

    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension MenuVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isEducator ? 5 : 7
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuTableViewCell

        var text = ""

        if isEducator {
            switch (indexPath.row) {
            case 0:
                text = "connect"
                cell.iconImage = #imageLiteral(resourceName: "Events")
                cell.hasIcon = true
            case 1:
                text = "profile"
                cell.iconImage = #imageLiteral(resourceName: "Profile")
                cell.hasIcon = true
            case 2:
                text = "settings"
                cell.hasIcon = false
            case 3:
                text = "feedback"
                cell.hasIcon = false
            case 4:
                text = "log out"
                cell.hasIcon = false
            default:
                text = ""
                cell.hasIcon = false
            }

            cell.itemNameLabel.text = text
            return cell

        } else {
            switch (indexPath.row) {
            case 0:
                text = "my careers"
                cell.iconImage = #imageLiteral(resourceName: "mycareers")
                cell.hasIcon = true
            case 1:
                text = "my schools"
                cell.iconImage = #imageLiteral(resourceName: "myschools")
                cell.hasIcon = true
            case 2:
                text = "events"
                cell.iconImage = #imageLiteral(resourceName: "Events")
                cell.hasIcon = true
            case 3:
                text = "profile"
                cell.iconImage = #imageLiteral(resourceName: "Profile")
                cell.hasIcon = true
            case 4:
                text = "settings"
                cell.hasIcon = false
            case 5:
                text = "feedback"
                cell.hasIcon = false
            case 6:
                text = "log out"
                cell.hasIcon = false
            default:
                text = ""
                cell.hasIcon = false
            }
            cell.itemNameLabel.text = text
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        cell.itemNameLabel.textColor = UIColor.pathidiGreen
        if cell.hasIcon {
            cell.iconImageView.tintColor = UIColor.pathidiGreen
        }

        //TODO: - implement view switching on select
        if isEducator {
//            switch (indexPath.row) {
//            case 0:
//            case 1:
//            case 2:
//            case 3:
//            case 4:
//            default:
//
//            }

        } else {
//            switch (indexPath.row) {
//            case 0:
//            case 1:
//            case 2:
//            case 3:
//            case 4:
//            default:
//            }
        }
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        cell.itemNameLabel.textColor = UIColor.white
        if cell.hasIcon {
            cell.iconImageView.tintColor = UIColor.white
        }

    }
}
