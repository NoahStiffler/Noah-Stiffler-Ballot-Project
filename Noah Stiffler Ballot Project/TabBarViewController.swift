//
//  TabBarViewController.swift
//  Noah Stiffler Ballot Project
//
//  Created by Noah Stiffler on 3/20/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit
//import CoreData


class TabBarViewController: UITabBarController {

    
    var fName = String()
    var lName = String()
    var pizza = 0
    var opSys = 0
    var game = 0
    
    
    // I tried to implement Core Data into my application so that even if the user closed out of the app and re-launched it, it would still keep their votes and they could not change it (until a reset action is triggered).
    // Needless to say, I couldnt figure out how to use it, but instead of deleting everything I had, I just commented it out.
    // I got everything I had from an outdated youtube video and I tried many random changes and methods I found on Apple Developer Documentation
    
    
   
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
       // let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
       // let context = appDelegate.persistentContainer.viewContext
       // let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
        
    //NSEntityDescription.insertNewObject(forEntityName: "User", into: context)

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
