//
//  ViewController.swift
//  T-Convert
//
//  Created by User on 23/06/2020.
//  Copyright © 2020 HomeMade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusTemp: UILabel!
    @IBOutlet weak var faringTemp: UILabel!
    
    @IBOutlet weak var slideButt: UISlider!{
        didSet {
            slideButt.minimumValue = -50
            slideButt.maximumValue = 50
            slideButt.value = 0
        }
    }
    open var minimumTrackTintColor: UIColor?
    
    @IBAction func sliderValueChange(_ sender: UISlider!) {
        let celsuisTemperatura = Int(round(sender.value))
            celsiusTemp.text = "\(celsuisTemperatura)ºC"
        
        let faringeitTemperatura = Int(round(((sender.value) * 9 / 5) + 32))
        faringTemp.text = "\(faringeitTemperatura)ºF"
        
    }
    
}

