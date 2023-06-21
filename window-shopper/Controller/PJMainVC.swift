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
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!

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
        
        resultLbl.isHidden = true
        hourLbl.isHidden  = true
    }
    
    @objc func calculate() {
        if let wageText = wageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    
    
    @IBAction func clearCalculator(_ sender: Any) {
        resetInputViews()
    }
    
    func resetInputViews() {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }

}

