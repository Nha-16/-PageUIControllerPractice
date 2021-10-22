//
//  SwViewController.swift
//  PageViewController
//
//  Created by sossokleng on 22/10/21.
//

import UIKit

class SwViewController: UIViewController {

    @IBOutlet weak var StateSwitch: UISwitch!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "True"
    }
    

  
    @IBAction func ButtonTaped(_ sender: Any) {
        if StateSwitch.isOn {
            textField.text = "True"
            StateSwitch.setOn(true, animated: false)
        }else {
            textField.text = "False"
            StateSwitch.setOn(false, animated: true)
        }
    }
    
    @objc func stateChanged(switchState: UISwitch){
        if switchState.isOn {
            textField.text = "True"
            
        }else {
            textField.text = "False"
        }
    }
    
}
