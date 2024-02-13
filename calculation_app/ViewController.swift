//
//  ViewController.swift
//  calculation_app
//
//  Created by 荘司実祐 on 2024/02/12.
//

import UIKit

final class  ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    
    @IBOutlet private weak var totalNumberlabel: UILabel!

    @IBAction private func calculation(_ sender: Any) {
        
//        //textFieldのtextをIntに変換　nilの場合は0と表記されるようにする
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
// 5つの足し算の結果の返り値の関数
    func convertToInt(_ text: String?) -> Int {
        return Int(text ?? "") ?? 0
    }
    func processTextFieldValues(textfield1: String?, textField2: String?, textField3: String?, textField4: String?, textField5: String?) -> (Int,Int,Int,Int,Int) {
        let num1 = convertToInt(textfield1)
        let num2 = convertToInt(textField2)
        let num3 = convertToInt(textField3)
        let num4 = convertToInt(textField4)
        let num5 = convertToInt(textField5)
        
        return(num1,num2,num3,num4,num5)
    }
    
}

