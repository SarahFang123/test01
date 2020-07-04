//
//  ViewController.swift
//  AngryBirds
//
//  Created by Shixian Fang on 6/28/20.
//  Copyright © 2020 Shixian Fang. All rights reserved.
//

import UIKit

class BirdListViewController: UIViewController {

    

    @IBOutlet weak var tableView: UITableView!
    
    var flock: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.flock = ["Oriole","Bluebird","Blackbird","Owl","Eagle","Duck","Swan","Goose","Seagull","Pigeon","Redbird","Sparrow","Parrot","Finch","Woodpecker","Quail","Flamingo","Grebe","Condor","Flamingo"]
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

}
    
extension BirdListViewController: UITableViewDataSource {
    //Mark: Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.flock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "birdCell") as! BirdCell
        
        cell.BirdNameLabel.text = self.flock[indexPath.row]
        let string1 = "I am an angry "
        cell.BirdDescriptionLabel.text = string1 + self.flock[indexPath.row]
        cell.BirdDescriptionLabel.textColor = UIColor.systemGray
        return cell
    }
}

extension BirdListViewController: UITableViewDelegate {
    //Mark: Delegate
}
