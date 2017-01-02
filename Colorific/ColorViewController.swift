//
//  ColorViewController.swift
//  Colorific
//
//  Created by Jeff Li on 1/2/17.
//  Copyright © 2017 Jeff Li. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if view.backgroundColor == UIColor.red {
            self.colorLabel.text = "Red!"
        } else if view.backgroundColor == UIColor.blue {
            self.colorLabel.text = "Blue!"
        } else if view.backgroundColor == UIColor.green {
            self.colorLabel.text = "Green!"
        } else if view.backgroundColor == UIColor.purple {
            self.colorLabel.text = "Purple!"
        } else if view.backgroundColor == UIColor(red: 255/255, green:0/255 ,blue: 120/255, alpha: 1.0) {
            self.colorLabel.text = "Pink!"
        } else if view.backgroundColor == UIColor.black {
            self.colorLabel.text = "Black!"
        } else if view.backgroundColor == UIColor.yellow {
            self.colorLabel.text = "Yellow!"
        }
    }
}
