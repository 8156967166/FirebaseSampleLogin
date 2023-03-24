//
//  ViewController.swift
//  FireBaseSample
//
//  Created by Rabin on 23/03/23.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonActionSignIn(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: textFieldEmail.text ?? "", password: textFieldPassword.text ?? "") { result, error in
            if let error = error {
                print("Error : \(error)")
            }else {
                print("Success")
            }
        }
    }
    
    @IBAction func buttonActionSignUp(_ sender: UIButton) {
        let signUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
}

