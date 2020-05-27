//
//  ViewController.swift
//  What Day Is It?
//
//  Created by rob on 5/25/20.
//  Copyright © 2020 rob. All rights reserved.
//

import UIKit

var today = Date()
var dayOfWeek = "Today"

var timeLaunched: Int = 0
var timer: Timer?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.updateLabel)), userInfo: nil, repeats: true)
        refresh()
    }
    
    @objc func updateLabel() {
        updateLabels()
        timeLaunched += 1
    }
    
    func refresh() {
        today = Date()
        updateLabels()
    }
    
    @IBOutlet weak var targetLabel: UILabel!
    
    func updateLabels () {
        today = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = "eeee"
//        formatter.dateFormat = "mm:ss"
        targetLabel.text = formatter.string(from: today)
    }
    
//    let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateLabels), userInfo: nil, repeats: true)
//    let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: 2, block: (Timer) -> Void)

}

