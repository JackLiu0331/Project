//
//  FinalPageViewController.swift
//  Project
//
//  Created by Chao Liu on 2020-12-06.
//  Copyright © 2020 Chao Liu. All rights reserved.
//

import UIKit

class FinalPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "game", sender: self)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
