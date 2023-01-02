//
//  LoginViewController.swift
//  db-cauAirport
//
//  Created by 안지완 on 2023/01/02.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    var idTextCount = 0
    var pwTextCount = 0
    
    let loginLabel : UILabel = {
        let label = UILabel()
        label.text = "중앙공항에 로그인해주세요"
        label.font = .boldSystemFont(ofSize: 25.0)
        label.textAlignment = .left
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let idField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디"
        textField.font = .systemFont(ofSize: 13.0)
        textField.textColor = .black
        textField.adjustsFontSizeToFitWidth = true
        
        return textField
    }()
    
    let idFieldLine : UIView = {
        let view = UIView()
        view.backgroundColor = .disableColor
        
        return view
    }()
    
    let pwField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 13.0)
        textField.adjustsFontSizeToFitWidth = true
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let pwFieldLine : UIView = {
        let view = UIView()
        view.backgroundColor = .disableColor
        
        return view
    }()
    
    let loginButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .disableColor
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20.0)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.2
        button.layer.cornerCurve = .continuous
        button.layer.cornerRadius = 12.0
        button.isEnabled = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        setLayout()
        setAttributes()

        // Do any additional setup after loading the view.
    }
    
    private func addView(){
        [loginLabel,idField,idFieldLine,pwField,pwFieldLine,loginButton].forEach({
            view.addSubview($0)
        })
    }
    
    private func setLayout(){
        loginLabel.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(view.safeAreaInsets).offset(97)
        }
        
        idField.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(loginLabel.snp.bottom).offset(63)
        }
        
        idFieldLine.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(idField.snp.bottom).offset(10)
            $0.height.equalTo(1)
        }
        
        pwField.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(idFieldLine.snp.bottom).offset(36)
        }
        
        pwFieldLine.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(pwField.snp.bottom).offset(10)
            $0.height.equalTo(1)
        }
        
        loginButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(pwFieldLine.snp.bottom).offset(67)
        }
        
        loginButton.heightAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 55/350).isActive = true
        
        
    }
    
    private func setAttributes(){
        view.backgroundColor = .white
        self.navigationController?.setupNavigationBar(items: [.back])
        idField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
        pwField.addTarget(self, action: #selector(textFieldDidChange(textField: )), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(textField : UITextField){
        idTextCount = idField.text!.count
        pwTextCount = pwField.text!.count
        
        if(idTextCount > 0 && pwTextCount > 0){
            loginButton.backgroundColor = .primaryColor
            loginButton.isEnabled = true
        }else{
            loginButton.backgroundColor = .disableColor
            loginButton.isEnabled = false
        }
    }

    

}
