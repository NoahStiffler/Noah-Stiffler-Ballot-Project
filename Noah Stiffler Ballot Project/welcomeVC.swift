//
//  welcomeVC.swift
//  Noah Stiffler Ballot Project
//
//  Created by Noah Stiffler on 3/20/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class welcomeVC: UIViewController {
    let pollObject = pollVC()
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    
    
    // The text fields are set up as actions that trigger the event inside (saving the typed data to TabBarViewController) whenever the user finishes typing. This removes the need for a button to save the data, and also allows the user to easily change the data in this field in the event of a typo.
    @IBAction func fNameFieldAction(_ sender: Any) {
        (parent as! TabBarViewController).fName = firstName.text!
    }
    
    @IBAction func lNameFieldAction(_ sender: Any) {
        (parent as! TabBarViewController).lName = lastName.text!
    }
    
    
   
        
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
