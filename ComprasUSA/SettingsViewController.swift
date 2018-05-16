//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by School Picture Dev on 16/05/18.
//  Copyright © 2018 Joao Rocha. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTexas: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfStateTexas.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfStateTexas.text!)
    }
    
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
