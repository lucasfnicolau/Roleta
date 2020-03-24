//
//  CustomTextField.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 24/03/20.
//  Copyright © 2020 {lfn}. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 35)

    override init(frame: CGRect) {
        super.init(frame: .zero)
        layoutSubviews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layoutSubviews()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7530768408)
        self.layer.cornerRadius = self.frame.width / 15
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
