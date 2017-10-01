//
//  ViewController.swift
//  MBJoyStick
//
//  Created by Mehul on 01/10/17.
//  Copyright © 2017 Mehul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myJoyStick: MBJoyStick! = nil

    @IBOutlet weak var myJouyStick2: MBJoyStick!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myJoyStick = MBJoyStick(frame: CGRect(x: 20, y: 20, width: 200, height: 200))
//        self.view.addSubview(myJoyStick)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

