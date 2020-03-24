//
//  RoundedView.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 24/03/20.
//  Copyright © 2020 {lfn}. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 25
    }

}
