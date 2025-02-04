//
//  ViewController.swift
//  Geo Calculator App
//
//  Created by James R. Zesiger on 1/28/25.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var userInput_latp1: DecimalMinusTextField!
    @IBOutlet weak var userInput_longp1: DecimalMinusTextField!
    @IBOutlet weak var userInput_latp2: DecimalMinusTextField!
    @IBOutlet weak var userInput_longp2: DecimalMinusTextField!
    
    
    
    @IBAction func LatP1_Input(_ sender: Any) {
    }
    @IBAction func LatP2_Input(_ sender: Any) {
    }
    @IBAction func LongP1_Input(_ sender: Any) {
    }
    @IBAction func LongP2_Input(_ sender: Any) {
    }
    @IBAction func Calc_Button(_ sender: Any) {
        let latp1 = Double(userInput_latp1.text!)! * Double.pi/180
        let longp1 = Double(userInput_longp1.text!)! * Double.pi/180
        let latp2 = Double(userInput_latp2.text!)! * Double.pi/180
        let longp2 = Double(userInput_longp2.text!)! * Double.pi/180
        let location1 = CLLocation(latitude: latp1 * 180/Double.pi, longitude: longp1 * 180/Double.pi)
        let location2 = CLLocation(latitude: latp2 * 180/Double.pi, longitude: longp2 * 180/Double.pi)
        let Dist = String(format:"%.4f",location1.distance(from: location2)/1000)

        Dist_Txt.text = "Distance: \(Dist) kilometers"
        let bearing = String(format:"%.4f",atan2(sin(longp2 - longp1) * cos(latp2), cos(latp1) * sin(latp2) - sin(latp1) * cos(latp2) * cos(longp2 - longp1)) * 180/Double.pi)
        Bear_Txt.text = "Bearing: \(bearing) degrees"
    }
    @IBAction func Clear_Button(_ sender: Any) {
        userInput_latp1.text = nil
        userInput_longp1.text = nil
        userInput_latp2.text = nil
        userInput_longp2.text = nil
        Dist_Txt.text = "Distance:"
        Bear_Txt.text = "Bearing:"
    }
    @IBOutlet weak var Dist_Txt: UILabel!
    @IBOutlet weak var Bear_Txt: UILabel!
    
    override func touchesBegan(_ touches:Set<UITouch>, with event:UIEvent?){
        self.view.endEditing(true)
    }
}
