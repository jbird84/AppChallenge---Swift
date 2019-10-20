//
//  SecondViewController.swift
//  AppChallenge
//
//  Created by Kinney Kare on 10/19/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //func that sets the delegate and datasource and border
        setupTableView()
    }
}


