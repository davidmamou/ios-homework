//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by David Mamou on 30/11/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")


    @IBOutlet weak var animalSoundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func catButtonTapped() {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }

    @IBAction func dogButtonTapped() {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped() {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
}

