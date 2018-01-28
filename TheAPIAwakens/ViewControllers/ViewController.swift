//
//  ViewController.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/18/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import UIKit

enum StarwarsCategory {
    case People
    case Vehicles
    case Starships
}

let StarwarsCategoryTagIntToString:[Int:StarwarsCategory] =
    [1:.People, 2:.Vehicles, 3:.Starships]

var currentCategory: StarwarsCategory? = nil

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func displayStarWarsCategory(_ sender: UIButton) {
        
        let starwarsCategoryViewController = self.storyboard?.instantiateViewController(withIdentifier: "StarwarsCategory") as! StarwarsCategoryViewController
        starwarsCategoryViewController.category = StarwarsCategoryTagIntToString[sender.tag]
        self.present(starwarsCategoryViewController, animated: true, completion: nil)
        
    }
}

