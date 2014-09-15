//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Tony Christie on 15/09/2014.
//  Copyright (c) 2014 Spire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedSizeLabel: UILabel!
    
    @IBOutlet weak var womensConvertedSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertMensShoeButtonPress(sender: UIButton) {
        let conversionConstant = 30
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensConvertedSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in EU sizes"
        mensConvertedSizeLabel.hidden = false
    }
    
    @IBAction func convertWomensShoeButtonPress(sender: UIButton) {
        let conversionConstant = 30.5
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        womensConvertedSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in EU sizes"
        womensConvertedSizeLabel.hidden = false
    }

}

