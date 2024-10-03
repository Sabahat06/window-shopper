//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Codesorbit on 13/09/2024.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeFunc()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeFunc()
    }
    
    func customizeFunc() {
        backgroundColor = UIColor(white: 1.0, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let unwrappedPlaceholder = placeholder {
            let placeholderAttributes = NSAttributedString(
                string: unwrappedPlaceholder,
                attributes: [.foregroundColor: UIColor.white]
            )
            attributedPlaceholder = placeholderAttributes
        } else {
            placeholder = " "
        }
        textColor = UIColor.black
    }
}

