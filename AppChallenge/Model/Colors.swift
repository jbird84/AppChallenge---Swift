//
//  Colors.swift
//  AppChallenge
//
//  Created by Kinney Kare on 10/19/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import Foundation
import UIKit

  let colorArray: [UIColor] = [.red, .black, .blue, .orange, .brown, .darkGray, .green, .magenta, .purple]

  let colorNames = ["Red", "Black", "Blue", "Orange", "Brown", "DarkGray", "Green", "Magenta", "Purple"]

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        let tableview = colorsTableView.layer
        colorsTableView.delegate = self
        colorsTableView.dataSource = self
        tableview.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tableview.borderWidth = 2
        tableview.cornerRadius = 15
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = colorsTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = colorNames[indexPath.row]
        
        //sets the cells background colors
        switch indexPath.row {
        case 0:
             cell.backgroundColor = UIColor.red
        case 1:
             cell.backgroundColor = UIColor.black
        case 2:
            cell.backgroundColor = UIColor.blue
        case 3:
            cell.backgroundColor = UIColor.orange
        case 4:
            cell.backgroundColor = UIColor.brown
        case 5:
            cell.backgroundColor = UIColor.darkGray
        case 6:
            cell.backgroundColor = UIColor.green
        case 7:
            cell.backgroundColor = UIColor.magenta
        case 8:
            cell.backgroundColor = UIColor.purple
        default:
            cell.backgroundColor = view.backgroundColor
        }
    
        return cell
    }
    //sets the view background to match the cell that was tapped.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           switch indexPath.row {
             case 0:
                  view.backgroundColor = UIColor.red
             case 1:
                  view.backgroundColor = UIColor.black
             case 2:
                 view.backgroundColor = UIColor.blue
             case 3:
                 view.backgroundColor = UIColor.orange
             case 4:
                 view.backgroundColor = UIColor.brown
             case 5:
                 view.backgroundColor = UIColor.darkGray
             case 6:
                 view.backgroundColor = UIColor.green
             case 7:
                 view.backgroundColor = UIColor.magenta
             case 8:
                 view.backgroundColor = UIColor.purple
             default:
                 view.backgroundColor = view.backgroundColor
             }
        tableView.reloadData()
    }
}

