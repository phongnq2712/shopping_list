/**
 * File Name:           ViewController
 * Author's Name:   Quoc Phong Ngo
 * Student ID:          301148406
 * Date Modified:    October 30th, 2021
 */

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblListName: UILabel!
    @IBOutlet weak var textFieldListName: UITextField!
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var qty5: UITextField!
    @IBOutlet weak var qty4: UITextField!
    @IBOutlet weak var qty3: UITextField!
    @IBOutlet weak var qty2: UITextField!
    @IBOutlet weak var qty1: UITextField!
    @IBOutlet weak var item5: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
        initialize()
    }
    
    /**
     * Application Initialization
     */
    private func initialize() {
        textFieldListName.text = nil
        textFieldListName.placeholder = "Enter New List Name"
        lblListName.text = "My Shopping List"
        item1.text = "Non-Fat Milk"
        item2.text = "Carton of Eggs"
        item3.text = "Wheat Bread"
        item4.text = "Canned Tuna"
        item5.text = "Lemons"
        qty1.text = "0"
        qty2.text = "0"
        qty3.text = "0"
        qty4.text = "0"
        qty5.text = "0"
    }
    
    /**
     * Handling on click of Stepper
     */
    @IBAction func stepperHandle(_ sender: UIStepper) {
        if(sender == self.stepper1) {
            qty1.text = String(Int(stepper1.value))
        } else if(sender == self.stepper2) {
            qty2.text = String(Int(stepper2.value))
        } else if(sender == self.stepper3) {
            qty3.text = String(Int(stepper3.value))
        } else if(sender == self.stepper4) {
            qty4.text = String(Int(stepper4.value))
        } else {
            qty5.text = String(Int(stepper5.value))
        }
    }
    
    /**
     * Handling event OnChanged of Text Input List Name
     */
    @IBAction func texFieldListNameChanged(_ sender: UITextField) {
        lblListName.text = textFieldListName.text
    }
    
    /**
     * Handling on click event of Cancel button
     */
    @IBAction func btnCancel_Clicked(_ sender: UIButton) {
        qty1.text = "0"
        qty2.text = "0"
        qty3.text = "0"
        qty4.text = "0"
        qty5.text = "0"
        item1.text = ""
        item2.text = ""
        item3.text = ""
        item4.text = ""
        item5.text = ""
    }
}

