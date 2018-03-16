//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Pooya on 12/24/1396 AP.
//  Copyright © 1396 Binogoo. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        nextButton.isEnabled = false
        
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectType(selectedType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectType(selectedType: "Womens")
        
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectType(selectedType: "Coed")
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSeque", sender: self)
    }
    
    func selectType(selectedType: String){
        
        player.desiredLeague = selectedType
        nextButton.isEnabled = true
        
        print("\(selectedType) is selected!")
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = self.player
        }
    
    }
    

}
