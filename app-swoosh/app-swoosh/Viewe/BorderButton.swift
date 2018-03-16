//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Pooya on 12/22/1396 AP.
//  Copyright © 1396 Binogoo. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
