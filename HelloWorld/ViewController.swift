//
//  ViewController.swift
//  HelloWorld
//
//  Created by kimhyungyu on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider :UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderValueChanged(_ sender : UISlider) {
        print(sender.value)
    }
    @IBAction func touchUpHitButton(_ sender : UIButton){
        print(slider.value)
    }
    @IBAction func touchUpResetButton(_ sender : UIButton){
        print("touch up reset button")
    }
}

