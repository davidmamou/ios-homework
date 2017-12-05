//
//  ViewController.swift
//  cards
//
//  Created by David Mamou on 14/11/17.
//  Copyright © 2017 David Mamou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slide: UISlider!
    @IBOutlet weak var swich: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1(_ sender: Any) {
        print("you click me")
        
    }
    @IBAction func swichtoggle(_ sender: Any) {
        if( self.swich.isOn ){
            print("you turned me on")
        }else{
            print("you turned me off")
        }
    }
    
    @IBAction func s(_ sender: Any) {
        print(self.slide.value)
        
    }
}

