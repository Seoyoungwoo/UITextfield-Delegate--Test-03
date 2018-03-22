//
//  ViewController.swift
//  UITextfield Delegate -Test-03
//
//  Created by D7703_17 on 2018. 3. 22..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
      @IBOutlet weak var lahello: UILabel!
      
      @IBOutlet weak var txname: UITextField!
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            txname.placeholder = "입력을 하세요"
            txname.clearButtonMode = UITextFieldViewMode.whileEditing
            txname.borderStyle = UITextBorderStyle.line
      }
      @IBAction func btn(_ sender: Any) {
            lahello.text = "Hello" + txname.text!
            txname.text = ""
            //키패드를 내림.
            txname.resignFirstResponder()
      }
      // background view를 touch하면 키패드가 사라짐
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
      }
}

