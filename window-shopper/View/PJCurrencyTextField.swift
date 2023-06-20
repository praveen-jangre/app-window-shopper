//
//  PJCurrencyTextField.swift
//  window-shopper
//
//  Created by Praveen Jangre on 20/06/2023.
//

import UIKit

class PJCurrencyTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let ph = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = ph
            textColor = .white
            
        }
        
        
        
    }

}
