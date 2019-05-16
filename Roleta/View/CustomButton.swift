//
//  CustomButton.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 04/05/19.
//  Copyright © 2019 {lfn}. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
    }

}
