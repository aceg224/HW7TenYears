//
//  ViewController.swift
//  HW7TenYears
//
//  Created by min-chia on 2019/1/29.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearSlider: UISlider!
    @IBOutlet weak var yearPicker: UIDatePicker!
    @IBOutlet weak var tenYearImageview: UIImageView!
    @IBOutlet weak var yearLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func yearPicker(_ sender: UIDatePicker) {
        let date = sender.date
        let yearFormater = DateFormatter()
        yearFormater.dateFormat = "y"
        let year = yearFormater.string(from: date)
        tenYearImageview.image = UIImage(named: year + ".jpg")
        let numberFormatter = NumberFormatter()
        let number = numberFormatter.number(from: year)
        let numberFloatValue = number?.floatValue
        yearSlider.value = numberFloatValue!
        }
    
    @IBAction func tenYearsSlider(_ sender: UISlider) {
        let year = sender.value
        let yearInt = Int(year)
        yearLabel.text = yearInt.description
        tenYearImageview.image = UIImage(named: yearInt.description + ".jpg")
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =  "yyyy"
        
        let date = dateFormatter.date(from: yearInt.description)
        
        yearPicker.date = date!

    }
}

