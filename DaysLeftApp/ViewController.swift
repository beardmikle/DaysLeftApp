//
//  ViewController.swift
//  DaysLeftApp
//
//  Created by beardmikle on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        
        // my code
        var vowels: Set<Character> = ["д", "н", "е", "й","и"]
        numberOfDays.removeAll(where: { vowels.contains($0) })
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = " You 're enjoying life already \(numberOfDays) days"
        

    }
    
}

