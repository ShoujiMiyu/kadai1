//
//  ViewController.swift
//  calculation_app
//
//  Created by 荘司実祐 on 2024/02/12.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!

    @IBOutlet private weak var totalNumberlabel: UILabel!

    @IBAction private func calculation(_ sender: Any) {

        //textFieldのtextをIntに変換　nilの場合は0と表記されるようにする
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        let num3 = Int(textField3.text ?? "") ?? 0
        let num4 = Int(textField4.text ?? "") ?? 0
        let num5 = Int(textField5.text ?? "") ?? 0
        
        //足す
        #warning("②作成した関数を呼び出して計算結果を取得しましょう")
        let totalNumber = num1 + num2 + num3 + num4 + num5
        
        //計算結果
        totalNumberlabel.text = "\(totalNumber)"
    }

    #warning("↓ここに5つの数字を足し算してその結果を返す関数を作成してみましょう。")

}

