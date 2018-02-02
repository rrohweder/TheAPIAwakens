//
//  StarwarsCategoryViewController.swift
//  TheAPIAwakens
//
//  Created by Roger Rohweder on 1/24/18.
//  Copyright © 2018 Roger Rohweder. All rights reserved.
//

import UIKit

class StarwarsCategoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var category: StarwarsCategory? = nil
    var pickerData: [String] = [String]()

    @IBOutlet weak var returnLinkLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var field1Label: UILabel!
    @IBOutlet weak var field1Value: UILabel!
    @IBOutlet weak var field2Label: UILabel!
    @IBOutlet weak var field2Value: UILabel!
    @IBOutlet weak var currencyUSDLabel: UILabel!
    @IBOutlet weak var currencyCreditsLabel: UILabel!
    @IBOutlet weak var field3Label: UILabel!
    @IBOutlet weak var field3Value: UILabel!
    @IBOutlet weak var unitsEnglishLabel: UILabel!
    @IBOutlet weak var unitsMetricLabel: UILabel!
    @IBOutlet weak var field4Label: UILabel!
    @IBOutlet weak var field4Value: UILabel!
    @IBOutlet weak var field5Label: UILabel!
    @IBOutlet weak var field5Value: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        field1Label.text = String(describing: category!)
        pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
        // Connect data
        self.picker.dataSource = self;
        self.picker.delegate = self;
        
        
        
        // OK, we have successfully set and passed the category.
        
        // next: load and enable the picker, and load the selected values for that category
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    
    
    
}
