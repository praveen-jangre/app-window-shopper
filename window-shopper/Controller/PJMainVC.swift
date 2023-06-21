//
//  ViewController.swift
//  window-shopper
//
//  Created by Praveen Jangre on 20/06/2023.
//

import UIKit

class PJMainVC: UIViewController {
    
    
    @IBOutlet weak var wageTextField: PJCurrencyTextField!
    @IBOutlet weak var priceTextField: PJCurrencyTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = .orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(PJMainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate(){
        debugPrint("calculate the pay")
        
    }


}

