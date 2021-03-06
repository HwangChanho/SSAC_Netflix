//
//  SignUpViewController.swift
//  SSAC_Netflix
//
//  Created by ChanhoHwang on 2021/09/30.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    //MARK: - Declaration
    
    //    lazy var textField: UITextField = {
    //        // Set x, y and width and height to place UITextField
    //        let width: CGFloat = 250
    //        let height: CGFloat = 50
    //        let posX: CGFloat = (self.view.bounds.width - width)/2
    //        let posY: CGFloat = (self.view.bounds.height - height)/2
    //
    //        // Create a UITextField
    //        let textField = UITextField(frame: CGRect(x: posX, y: posY, width: width, height: height))
    //
    //        // Substitude the characters to be displayed
    //        textField.text = "JACKFLIX"
    //
    //        // Set Delegate to itself
    //        // textField.delegate = self
    //
    //        // Display frame.
    //        textField.borderStyle = .roundedRect
    //
    //        // Add clear button
    //        textField.clearButtonMode = .whileEditing
    //
    //        return textField
    //    }()
    
    var switchOn: Bool = true
    
    var button: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 15)
        button.backgroundColor = .white
        button.cornerRadius = 6
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    var emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .gray
        // textField.placeholder = text
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        textField.font = .boldSystemFont(ofSize: 15)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.cornerRadius = 6
        textField.textAlignment = .center
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        
        // ?????????????????? ?????? ?????????????????? ?????? ??????
        textField.tag = 1
        
        return textField
    }()
    
    var passTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .gray
        // textField.placeholder = text
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        textField.font = .boldSystemFont(ofSize: 15)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.cornerRadius = 6
        textField.textAlignment = .center
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        
        // ?????????????????? ?????? ?????????????????? ?????? ??????
        textField.tag = 2
        
        return textField
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .gray
        // textField.placeholder = text
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        textField.font = .boldSystemFont(ofSize: 15)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.cornerRadius = 6
        textField.textAlignment = .center
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        
        // ?????????????????? ?????? ?????????????????? ?????? ??????
        textField.tag = 3
        
        return textField
    }()
    
    var contentTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .gray
        // textField.placeholder = text
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        textField.font = .boldSystemFont(ofSize: 15)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.cornerRadius = 6
        textField.textAlignment = .center
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        
        // ?????????????????? ?????? ?????????????????? ?????? ??????
        textField.tag = 4
        
        return textField
    }()
    
    var codeTextField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .gray
        // textField.placeholder = text
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        textField.font = .boldSystemFont(ofSize: 15)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.cornerRadius = 6
        textField.textAlignment = .center
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        
        // ?????????????????? ?????? ?????????????????? ?????? ??????
        textField.tag = 5
        
        return textField
    }()
    
    func jackflixLabel() {
        let textLabel = UILabel()
        
        textLabel.text = "JACKFLIX"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = .boldSystemFont(ofSize: 40)
        textLabel.textColor = .red
        textLabel.numberOfLines = 1
        //textLabel.textAlignment = .center
        
        view.addSubview(textLabel)
        
        // x ???, y ??? ??????
        textLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 60).isActive = true
        // textLabel.centerYAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive
        
        // ?????? ??????, ?????? ?????? ??????
        textLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func additionalInputLabel() {
        let textLabel = UILabel()
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "?????? ?????? ??????"
        textLabel.font = .boldSystemFont(ofSize: 15)
        textLabel.textColor = .white
        textLabel.numberOfLines = 1
        //textLabel.textAlignment = .center
        
        view.addSubview(textLabel)
        
        // x ???, y ??? ??????
        textLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 600).isActive = true
        // textLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 60).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -49).isActive = true
        // textLabel.centerYAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive
        
        // ?????? ??????, ?????? ?????? ??????
        textLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func switchButton() {
        let switchButton = UISwitch()
        
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        switchButton.setOn(true, animated: true)
        switchButton.backgroundColor = .clear
        
        // ????????? ????????? ??????
        switchButton.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
        
        view.addSubview(switchButton)
        
        // x ???, y ??? ??????
        switchButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 605).isActive = true
        //switchButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -70).isActive = true
        switchButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 120).isActive = true
        
        // ?????? ??????, ?????? ?????? ??????
        switchButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        switchButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func buttonAction(sender: UISwitch!) {
        if sender.isOn == false {
            nameTextField.isHidden = true
            contentTextField.isHidden = true
            codeTextField.isHidden = true
            switchOn = false
            
            view.addSubview(button)
            button.setTitle("?????????", for: .normal)
            button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 550).isActive = true
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 300).isActive = true
            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
            // ????????? ????????? ??????
            button.addTarget(self, action: #selector(self.loginButtonPressedAction), for: .touchUpInside)
            
        } else {
            nameTextField.isHidden = false
            contentTextField.isHidden = false
            codeTextField.isHidden = false
            switchOn = true
            
            view.addSubview(button)
            button.setTitle("????????????", for: .normal)
            button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 550).isActive = true
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 300).isActive = true
            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
            // ????????? ????????? ??????
            button.addTarget(self, action: #selector(self.buttonPressedAction), for: .touchUpInside)
        }
    }
    
    @objc func buttonPressedAction(sender: UIButton!) {
        if switchOn {
            let emailTextField = self.view.viewWithTag(1) as! UITextField
            let passTextField = self.view.viewWithTag(2) as! UITextField
            let nameTextField = self.view.viewWithTag(3) as! UITextField
            let contentTextField = self.view.viewWithTag(4) as! UITextField
            let codeTextField = self.view.viewWithTag(5) as! UITextField
            
            print("???????????? ?????? ??????")
            print("ID: " + emailTextField.text!)
            print("PW: " + passTextField.text!)
            print("NICK: " + nameTextField.text!)
            print("LOCATION: " + contentTextField.text!)
            print("CODE: " + codeTextField.text!)
            
            let email = emailTextField.text!.lowercased()
            let pwd = Int(passTextField.text!)
            let nick = nameTextField.text!.lowercased()
            let loc = contentTextField.text!.lowercased()
            let code = Int(codeTextField.text!)
            
            if Int(email) == nil { // email input
                if isValidEmail(Str: email) == false {
                    print("email err")
                    return
                }
            } else { }  // phonenumber input
            if ((pwd == nil) || (pwd! < 6)) { // pwd check!
                print("pwd error")
                return
            }
            
            if (code == nil) {
                print("code error")
                return
            }
        }
    }
    
    @objc func loginButtonPressedAction(sender: UIButton!) {
    }
    
    
    //MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        jackflixLabel()
        
        view.addSubview(emailTextField)
        emailTextField.attributedPlaceholder = NSAttributedString(string: "????????? ?????? ????????????", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 15)])
        emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.emailTextField.delegate = self
        
        view.addSubview(passTextField)
        passTextField.attributedPlaceholder = NSAttributedString(string: "????????????", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 15)])
        passTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 350).isActive = true
        passTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        passTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.passTextField.delegate = self
        
        view.addSubview(nameTextField)
        nameTextField.attributedPlaceholder = NSAttributedString(string: "?????????", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 15)])
        nameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive = true
        nameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.nameTextField.delegate = self
        
        view.addSubview(contentTextField)
        contentTextField.attributedPlaceholder = NSAttributedString(string: "??????", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 15)])
        contentTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 450).isActive = true
        contentTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        contentTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        contentTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.contentTextField.delegate = self
        
        view.addSubview(codeTextField)
        codeTextField.attributedPlaceholder = NSAttributedString(string: "?????? ?????? ??????", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 15)])
        codeTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 500).isActive = true
        codeTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        codeTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        codeTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.codeTextField.delegate = self
        
        view.addSubview(button)
        button.setTitle("????????????", for: .normal)
        button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 550).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        // ????????? ????????? ??????
        button.addTarget(self, action: #selector(self.buttonPressedAction), for: .touchUpInside)
        
        additionalInputLabel()
        switchButton()
        // self.view.addSubview(self.textField)
    }
    
    // ?????? ????????? ????????? ?????????
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    // return ?????? ????????? textfield??? ???????????? ?????? UITextFieldDelegate ??????????????? ????????? ????????? ?????? ????????? ?????? TextField??? Outlet ????????? delegate??? ???????????? ????????? ???????????? ????????? ??? ??????.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // ??????????????? ????????????
        return true
    }
    
    func isValidEmail(Str:String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let email = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          return email.evaluate(with: Str)
    }
}


//MARK: - Method

#if DEBUG
import SwiftUI
struct SignUpViewControllerRepresentable: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiView: UIViewController, context: Context) {
        // leave this empty
    }
    
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        SignUpViewController()
    }
}
@available(iOS 13.0, *)
struct SignUpViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            if #available(iOS 14.0, *) {
                SignUpViewControllerRepresentable()
                    .ignoresSafeArea()
                    .previewDisplayName("Preview")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            }
            
        }
    }
}
#endif
