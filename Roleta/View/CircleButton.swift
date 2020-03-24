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
