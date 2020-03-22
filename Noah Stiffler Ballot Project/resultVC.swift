//
//  resultVC.swift
//  Noah Stiffler Ballot Project
//
//  Created by Noah Stiffler on 3/20/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class resultVC: UIViewController {
    
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var pizzaVote: UILabel!
    @IBOutlet weak var opSysVote: UILabel!
    @IBOutlet weak var gameVote: UILabel!
    
    // voteError() will detect if a user did not vote for one of the options (I used the same alert code from Assignment 4 (the obnoxious cat one))
    func voteError() {
        let alert = UIAlertController(title: "Error", message: "You did not vote for at least one of the options on the poll tab. Please go back and answer all the questions.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
        self.present(alert,animated: true)

        
    }
    
    override func viewWillAppear(_ animated: Bool){
        
        // Shows the users first and last name
        userName.text = ((parent as! TabBarViewController).fName) + " " + (parent as! TabBarViewController).lName
        
        
        
        if (parent as! TabBarViewController).pizza == 1 {
            pizzaVote.text = "The voter is a terrorist and voted for pizza with pineapple"
        }
        else if (parent as! TabBarViewController).pizza == 2 { pizzaVote.text = "The voter is a not insane and voted for normal person pizza"
            
        } else {
            // The else statment will trigger if the user did not choose an option on the poll
            voteError()
        }
        
        
        
        
        // Operating System Vote
        if (parent as! TabBarViewController).opSys == 1 {
            opSysVote.text = "You voted for Mac. Please stop giving them money, they charge $70 for a USB C to HDMI adapter"
        }
        else if(parent as! TabBarViewController).opSys == 2 {
            opSysVote.text = "You made an 'average' decision by going with windows. At least you aren't a Linux snob!"
        }
        else if(parent as! TabBarViewController).opSys == 3 {
            opSysVote.text = "You prefer linux, therefore you are a God among men and you deserve to be treated better than anyone else. Make sure all the normies know who is better than them. You. "
        } else {
            voteError()
        }
        
        
        // Game Vote
        if (parent as! TabBarViewController).game == 1 {
            gameVote.text = "You chose Animal Crossing, a brave, yet very respectul decision."
        }
        else if (parent as! TabBarViewController).game == 2 {
            gameVote.text = "You chose doom eternal, a very respectful decision. Rip and tear soldier, RIP. AND. TEAR."
            
        }
        else {
            voteError()
        }
        
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

