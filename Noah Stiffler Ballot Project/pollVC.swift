//
//  pollVC.swift
//  Noah Stiffler Ballot Project
//
//  Created by Noah Stiffler on 3/20/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class pollVC: UIViewController {

    
    // Sets all buttons to the enabled state, also resets the values of the voting variables to 0
    @IBAction func resetPoll(_ sender: Any) {
        pizzaYesOut.isEnabled = true
        pizzaNoOut.isEnabled = true
        macYesOut.isEnabled = true
        winYesOut.isEnabled = true
        linYesOut.isEnabled = true
        acYesOut.isEnabled = true
        deYesOut.isEnabled = true
        (parent as! TabBarViewController).pizza=0
        (parent as! TabBarViewController).opSys=0
        (parent as! TabBarViewController).game=0
    }
    
    // The default value of the voting options is 0, allowing me to detect when a user does not select a vote (which will trigger an error alert on the "ResultVC" controller
    
    
    // Creating the buttons as outlets so I can disable them once the button is pressed to prevent mutiple votes.
    @IBOutlet weak var pizzaYesOut: UIButton!
    @IBOutlet weak var pizzaNoOut: UIButton!
    
    // Pizza vote collection
    @IBAction func pizzaYes(_ sender: Any) {
        (parent as! TabBarViewController).pizza+=1
        pizzaYesOut.isEnabled = false
        pizzaNoOut.isEnabled = false
        
    }
    @IBAction func pizzaNo(_ sender: Any) {
        (parent as! TabBarViewController).pizza+=2
        pizzaYesOut.isEnabled = false
        pizzaNoOut.isEnabled = false
        
    
    }

    // Operating system vote collection
    @IBOutlet weak var macYesOut: UIButton!
    @IBOutlet weak var winYesOut: UIButton!
    @IBOutlet weak var linYesOut: UIButton!
    
    @IBAction func macYes(_ sender: Any) {
        (parent as! TabBarViewController).opSys+=1
        macYesOut.isEnabled = false
        winYesOut.isEnabled = false
        linYesOut.isEnabled = false
    }
    @IBAction func windowsYes(_ sender: Any) {
        (parent as! TabBarViewController).opSys+=2
        macYesOut.isEnabled = false
        winYesOut.isEnabled = false
        linYesOut.isEnabled = false
    }
    @IBAction func linuxYes(_ sender: Any) {
        (parent as! TabBarViewController).opSys+=3
        macYesOut.isEnabled = false
        winYesOut.isEnabled = false
        linYesOut.isEnabled = false

    }
    @IBOutlet weak var acYesOut: UIButton!
    @IBOutlet weak var deYesOut: UIButton!
    
    @IBAction func acYes(_ sender: Any) {
        (parent as! TabBarViewController).game+=1
        acYesOut.isEnabled = false
        deYesOut.isEnabled = false
        
    }
    
    @IBAction func deYes(_ sender: Any) {
        (parent as! TabBarViewController).game+=2
        acYesOut.isEnabled = false
        deYesOut.isEnabled = false

    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
