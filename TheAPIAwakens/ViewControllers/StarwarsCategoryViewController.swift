//
//  StarwarsCategoryController.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/24/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import UIKit

class StarwarsCategoryViewController: UIViewController {
    var category: StarwarsCategory? = nil
    
    @IBOutlet weak var Field1Label: UILabel!
    @IBOutlet weak var Field1Value: UILabel!
    @IBOutlet weak var Field2Label: UILabel!
    @IBOutlet weak var Field2Value: UILabel!
    @IBOutlet weak var CurrencyUSDLabel: UILabel!
    @IBOutlet weak var CurrencyCreditsLabel: UILabel!
    @IBOutlet weak var Field3Label: UILabel!
    @IBOutlet weak var Field3Value: UILabel!
    @IBOutlet weak var UnitsEnglishLabel: UILabel!
    @IBOutlet weak var UnitsMetricLabel: UILabel!
    @IBOutlet weak var Field4Label: UILabel!
    @IBOutlet weak var Field4Value: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Field1Label.text = String(describing: category!)
        // OK, we have successfully set and passed the category.
        
        // next: load and enable the picker, and load the selected values for that category
        
    }

    
    
    
    
    
    
}
