//
//  ViewController.swift
//  MoviesList
//
//  Created by Niso on 12/16/18.
//  Copyright © 2018 Niso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let moviesData = ["Black Panther","Mission: Impossible - Fallout","Avengers: Infinity War","A Star Is Born","Deadpool 2"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let movie = moviesData[indexPath.row]
        cell.textLabel?.text = movie
        
        return cell
    }


}

