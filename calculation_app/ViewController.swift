//
//  ViewController.swift
//  calculation_app
//
//  Created by 荘司実祐 on 2024/02/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var totalNumberlabel: UILabel!

    @IBAction func calculation(_ sender: Any) {
        
        //textFieldのtextをIntに変換　nilの場合は0と表記されるようにする
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        let num3 = Int(textField3.text ?? "") ?? 0
        let num4 = Int(textField4.text ?? "") ?? 0
        let num5 = Int(textField5.text ?? "") ?? 0
        
        //足す
        let totalNumber = num1 + num2 + num3 + num4 + num5
        
        //計算結果
        totalNumberlabel.text = "\(totalNumber)"
    }
}

