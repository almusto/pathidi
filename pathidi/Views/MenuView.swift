//
//  MenuView.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/21/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIView {

    var tableView: UITableView!
    var isEducator: Bool!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        setConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func commonInit() {
        self.backgroundColor = UIColor.menuBlack

        tableView = UITableView()
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.rowHeight = 50;
        tableView.backgroundColor = UIColor.menuBlack
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableView)

    }

    func setConstraints() {
        let hamburgerMenuOffset: CGFloat = -40


        tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        tableView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: hamburgerMenuOffset).isActive = true
        tableView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -100).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true


    }

}
