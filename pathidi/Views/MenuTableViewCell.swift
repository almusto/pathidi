//
//  MenuTableViewCell.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/21/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation
import UIKit


class MenuTableViewCell: UITableViewCell {
    var iconImageView: UIImageView!
    var iconImage: UIImage!
    var itemNameLabel: MenuLabel!
    var hasIcon: Bool! {
        didSet {
            if hasIcon {
                commonInitWithIcon()
                setConstraintsWithIcon()
            } else {
                commonInit()
                setConstraints()
            }
        }
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.menuBlack
        self.contentView.backgroundColor = UIColor.menuBlack
        self.selectionStyle = .none

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

    }

    private func commonInit() {
        itemNameLabel = MenuLabel()
        itemNameLabel.textAlignment = .left
        itemNameLabel.textColor = UIColor.white
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(itemNameLabel)
    }

    private func setConstraints() {
        itemNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        itemNameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -50).isActive = true
        itemNameLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -10).isActive = true
        itemNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
    }

    private func commonInitWithIcon() {
        iconImageView = UIImageView(image: iconImage)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(iconImageView)

        itemNameLabel = MenuLabel()
        itemNameLabel.textAlignment = .left
        itemNameLabel.textColor = UIColor.white
        itemNameLabel.font = UIFont(name: ".SFUIText-Bold", size: 20)!
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(itemNameLabel)

    }

    private func setConstraintsWithIcon() {
        iconImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: contentView.heightAnchor, constant: -10).isActive = true
        iconImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -10).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true

        itemNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        itemNameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -50).isActive = true
        itemNameLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -10).isActive = true
        itemNameLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 10).isActive = true

    }


}
