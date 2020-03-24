//
//  InfoVC.swift
//  Roleta
//
//  Created by Lucas Fernandez Nicolau on 24/03/20.
//  Copyright © 2020 {lfn}. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissVC))
        self.view.addGestureRecognizer(tapGesture)
    }

    @IBAction func gotIt(_ sender: UIButton) {
        dismissVC()
    }

    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
}
