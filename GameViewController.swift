//
//  GameViewController.swift
//  Project
//
//  Created by Chao Liu on 2020-12-05.
//  Copyright © 2020 Chao Liu. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var playercard: UIImageView!
    @IBOutlet weak var aicard: UIImageView!
    @IBOutlet weak var playerscore: UILabel!
    @IBOutlet weak var aiscore: UILabel!
    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var result: UIButton!
    
    var playerScore = 0
    var aiScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        result.isHidden = true
    }

    @IBAction func gameStart(_ sender: Any) {
        gameButton.setImage(UIImage(named: "continue"), for: .normal)
        let playerNumber = arc4random_uniform(13) + 2
        let aiNumber = arc4random_uniform(13) + 2
        var playerMark = Int(playerscore.text!)
        var aiMark = Int(aiscore.text!)
        if playerMark == 0 && aiMark == 0 {
        playercard.image = UIImage(named: "card" + String(playerNumber))
        aicard.image = UIImage(named: "card" + String(aiNumber))
        playerscore.text = String(playerNumber)
        aiscore.text = String(aiNumber)
        }
        else if (1..<21).contains(playerMark!) && (1..<21).contains(aiMark!){
        let playerNumber2 = arc4random_uniform(13) + 2
        let aiNumber2 = arc4random_uniform(13) + 2
        playerMark = playerMark!+Int(playerNumber2)
        aiMark = aiMark!+Int(aiNumber2)
       playercard.image = UIImage(named: "card" + String(playerNumber2))
       aicard.image = UIImage(named: "card" + String(aiNumber2))
        playerscore.text = playerMark.map(String.init)
        aiscore.text = aiMark.map(String.init)
            
        if playerMark! == 21 && aiMark! < 21{
        let alertPlayerWin = UIAlertController(title: "Congratulations !", message: "You are the winner !", preferredStyle: .alert)
        alertPlayerWin.addAction(UIAlertAction(title: "Okay", style: .default))
             self.present(alertPlayerWin,animated: true)
            result.isHidden = false
            
        }
        else if aiMark! == 21 && playerMark! < 21{
        let alertAiWin = UIAlertController(title: "Game Over", message: "You Lost !", preferredStyle: .alert)
            alertAiWin.addAction(UIAlertAction(title: "Okay", style: .default))
                 self.present(alertAiWin,animated: true)
            result.isHidden = false
            
        }
        else if aiMark! > 21 && playerMark! < 21{
         let alertPlayerWin2 = UIAlertController(title: "Congratulations !", message: "You are the winner !", preferredStyle: .alert)
        alertPlayerWin2.addAction(UIAlertAction(title: "Okay", style: .default))
             self.present(alertPlayerWin2,animated: true)
            result.isHidden = false
            
        }
        else if aiMark! < 21 && playerMark! > 21{
            let alertAiWin2 = UIAlertController(title: "Game Over", message: "You Lost !", preferredStyle: .alert)
            alertAiWin2.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alertAiWin2,animated: true)
            result.isHidden = false
        }
        else if aiMark! == 21 && playerMark! == 21{
            let alertTie = UIAlertController(title: "Game Over", message: "Tied !", preferredStyle: .alert)
            alertTie.addAction(UIAlertAction(title: "Okay", style: .default))
                      self.present(alertTie,animated: true)
              result.isHidden = false
            
            }
        else if aiMark! > 21 && playerMark! > 21{
            let alertTie = UIAlertController(title: "Game Over", message: "Tied !", preferredStyle: .alert)
            alertTie.addAction(UIAlertAction(title: "Okay", style: .default))
                      self.present(alertTie,animated: true)
              result.isHidden = false
            
            }
            
        }
        
        
    }
    @IBAction func result(_ sender: Any) {
        performSegue(withIdentifier: "FinalPage1", sender: self)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

