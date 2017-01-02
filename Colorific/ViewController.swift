//
//  ViewController.swift
//  Colorific
//
//  Created by Jeff Li on 1/2/17.
//  Copyright © 2017 Jeff Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var selectedColor: UIColor?
    
    let colors: [UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.purple, UIColor(red: 255/255, green:0/255 ,blue: 120/255, alpha: 1.0), UIColor.black, UIColor.yellow]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = self.colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedColor = self.colors[indexPath.row]
        self.performSegue(withIdentifier: "toColorScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toColorScreen" {
            segue.destination.view.backgroundColor = self.selectedColor
        }
    }

}

