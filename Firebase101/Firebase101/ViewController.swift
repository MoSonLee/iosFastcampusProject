//
//  ViewController.swift
//  Firebase101
//
//  Created by 이승후 on 2022/02/18.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    let db = Database.database().reference()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        db.child("firstData").observeSingleEvent(of: .value){ snapshot in
            print("--> \(snapshot)")
            
            let value = snapshot.value as? String ?? ""
            
            self.dataLabel.text = value
        }
    }
}

