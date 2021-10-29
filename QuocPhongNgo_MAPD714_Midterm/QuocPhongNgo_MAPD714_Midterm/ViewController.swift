/**
 * File Name: ViewController
 * Author's Name: Quoc Phong Ngo
 * Student ID: 301148406
 * Date: October 27th, 2021
 */

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var lblListName: UILabel!
    @IBOutlet weak var textFieldListName: UITextField!
    //    @IBOutlet weak var lblListName: UILabel!
//    @IBOutlet weak var textFieldListName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        for textField in self.view.subviews where textField is UITextField {
//            textField.resignFirstResponder()
//        }
        textFieldListName.text = nil
        textFieldListName.placeholder = "Enter New List Name"
        lblListName.text = "My Shopping List"
    }
    
    @IBAction func texFieldListNameChanged(_ sender: UITextField) {
        lblListName.text = textFieldListName.text
    }
}

