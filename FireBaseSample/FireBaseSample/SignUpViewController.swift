//
//  SignUpViewController.swift
//  FireBaseSample
//
//  Created by Rabin on 24/03/23.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonActionSignUp(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: textFieldEmail.text ?? "", password: textFieldPassword.text ?? "") { result, error in
            if let error = error{
                print("Error: \(error)")
            }else {
                print("Result: \(result)")
            }
        }
    }
    
    @IBAction func buttonActionSignIn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

