//
//  ViewController.swift
//  BullyEye2
//
//  Created by user on 2020/7/9.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue : Int = 0
    @IBOutlet weak var slider : UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundValue = slider.value.rounded()
        currentValue = Int(roundValue)
        // Do any additional setup after loading the view.
        
    }

    @IBAction func showAlert(){
        let message = "The value of the slider is now :\(currentValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion:nil)
        
    }
    @IBAction func sliderMoved (_ slider : UISlider){
        let roundValue = slider.value.rounded()
        currentValue = Int(roundValue)
        
    }

}

