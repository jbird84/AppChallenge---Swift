//
//  ViewController.swift
//  AppChallenge
//
//  Created by Kinney Kare on 10/19/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    //sets the VC2 background color to match VC1 background color
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination
        vc2.view.backgroundColor = view.backgroundColor
    }
    
    
    
    // UIButton title - "Random"
    @IBAction func randomButtonTapped(_ sender: Any) {
        view.backgroundColor = colorArray.randomElement()
    }
    
    
    
    //UIButton title - "Push"
    @IBAction func pushButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "gotovc2", sender: self)
    }
    
}

