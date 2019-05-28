//
//  BaseTextView.swift
//  Number Fact
//
//  Created by New User on 5/28/19.
//  Copyright © 2019 sasan soroush. All rights reserved.
//

import UIKit

class BaseTextView: UITextView {
    override var contentSize: CGSize {
        didSet {
            var topCorrection = (bounds.size.height - contentSize.height * zoomScale) / 2.0
            topCorrection = max(0, topCorrection)
            contentInset = UIEdgeInsets(top: topCorrection, left: 0, bottom: 0, right: 0)
        }
    }
}
