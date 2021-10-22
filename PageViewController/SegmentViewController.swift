//
//  SegmentViewController.swift
//  PageViewController
//
//  Created by sossokleng on 22/10/21.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var mySegment: UISegmentedControl!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = "Hot News"

        
    }
    @IBAction func SegmentAction(_ sender: Any) {
        switch mySegment.selectedSegmentIndex {
        case 0:
            lblResult.text = "Hot News"
        case 1:
            lblResult.text = "Spot"
        case 2:
            lblResult.text = "Funny"
        default:
            lblResult.text = "No Execute"
        }
    }
}
