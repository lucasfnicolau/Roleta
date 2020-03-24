//
//  CircleButton.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 24/03/20.
//  Copyright © 2020 {lfn}. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
    }

}
