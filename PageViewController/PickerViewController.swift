//
//  PickerViewController.swift
//  PageViewController
//
//  Created by sossokleng on 22/10/21.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let sdx1 = pickerView.selectedRow(inComponent: 0)
        let sdx2 = pickerView.selectedRow(inComponent: 1)
        let sdx3 = pickerView.selectedRow(inComponent: 2)
        let sdx4 = pickerView.selectedRow(inComponent: 3)

        
        resultLabel.text = "\(pickerData[0][sdx1]) \(pickerData[1][sdx2]) \(pickerData[2][sdx3]) \(pickerData[3][sdx4])"
        
    }
    

    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var pickerData: [[String]] = [
            ["A","B","C","D"],
            ["a","b","c"],
            ["1","2","3","4"],
            ["!","@","#","$"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPicker.delegate = self
        myPicker.dataSource = self
    }
}
