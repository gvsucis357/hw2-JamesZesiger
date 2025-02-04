//
//  ViewController.swift
//  Geo Calculator App
//
//  Created by James R. Zesiger on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func LatP1_Input(_ sender: Any) {
    }
    @IBAction func LatP2_Input(_ sender: Any) {
    }
    @IBAction func LongP1_Input(_ sender: Any) {
    }
    @IBAction func LongP2_Input(_ sender: Any) {
    }
    @IBAction func Calc_Button(_ sender: Any) {
    }
    @IBAction func Clear_Button(_ sender: Any) {
    }
    @IBOutlet weak var Dist_Txt: UILabel!
    @IBOutlet weak var Bear_Txt: UILabel!
    
    override func touchesBegan(_ touches:Set<UITouch>, with event:UIEvent?){
        self.view.endEditing(true)
    }
}
