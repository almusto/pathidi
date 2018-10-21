//
//  MenuLabel.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/21/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation
import UIKit

class MenuLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        self.font = UIFont(name: ".SFUIText", size: 17)!

    }
}
