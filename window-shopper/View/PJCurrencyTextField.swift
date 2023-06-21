//
//  PJCurrencyTextField.swift
//  window-shopper
//
//  Created by Praveen Jangre on 20/06/2023.
//

import UIKit


@IBDesignable
class PJCurrencyTextField: UITextField {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        currencyLbl.textColor = .darkGray
        currencyLbl.textAlignment = .center
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let ph = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = ph
            textColor = .white
            
        }
        
    }

}
