//
//  ViewController.swift
//  window-shopper
//
//  Created by Codesorbit on 13/09/2024.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var clearValueButton: UIButton!
    @IBOutlet weak var itemWageResult: UILabel!
    @IBOutlet weak var itemTxt: UITextField!
    @IBOutlet weak var wageTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.25)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.25), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        clearValueButton.addTarget(self, action: #selector(MainVC.clearValue), for: .touchUpInside)
        wageTxt.inputAccessoryView = calBtn
        itemTxt.inputAccessoryView = calBtn
        
    }

    @objc func calculate() {
        let wageItemValue = Int(wageTxt.text ?? "0")! * Int(itemTxt.text ?? "0")!
        itemWageResult.text = "\(wageItemValue)"
        hideKeyboard()
        print(wageItemValue)
        print("We got here")
    }
    
    @objc func clearValue() {
        wageTxt.text = ""
        itemTxt.text = ""
        itemWageResult.text = ""
    }
    
    @IBAction func hideKeyboard() {
        self.view.endEditing(true)
    }

}

