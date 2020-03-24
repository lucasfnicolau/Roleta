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
        self.layer.cornerRadius = 25
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        UIView.animate(withDuration: 0.2) {
            self.alpha = 0.6
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)

        UIView.animate(withDuration: 0.2) {
            self.alpha = 0.6
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)

        UIView.animate(withDuration: 0.2) {
            self.alpha = 1
        }
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)

        UIView.animate(withDuration: 0.2) {
            self.alpha = 1
        }
    }
}
