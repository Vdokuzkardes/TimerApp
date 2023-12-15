//
//  ViewController.swift
//  timerApp
//
//  Created by Vedat Dokuzkardeş on 8.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0
    @IBOutlet weak var timeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        

        }
    
    @objc func timerFunction(){
        
        timeLbl.text = "Time: \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLbl.text = "Time's Over"
        }
        
    }

    @IBAction func btnBtn(_ sender: Any) {
        print("Button clicked.")
    }
    
}

