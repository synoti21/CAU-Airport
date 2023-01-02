//
//  ViewController.swift
//  db-cauAirport
//
//  Created by 안지완 on 2022/12/26.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
   
    
    let topTitle : UILabel = {
        let label = UILabel()
        label.text = "더 나은"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 40.0)
        label.textAlignment = .left
        
        return label
    }()
    
    let decorationFirCircle : UIView = {
        let view = UIView()
        view.backgroundColor = .secondaryColor
        
        return view
    }()
    
    let decorationSecCircle : UIView = {
        let view = UIView()
        view.backgroundColor = .secondaryColor
        
        return view
    }()
    
    let decorationThrCircle : UIView = {
        let view = UIView()
        view.backgroundColor = .secondaryColor
        
        return view
    }()
    
    let decorationFouCircle : UIView = {
        let view = UIView()
        view.backgroundColor = .secondaryColor
        
        return view
    }()
    
    let decorationSquare : UIView = {
        let view = UIView()
        view.backgroundColor = .none
        view.layer.borderColor = CGColor(red: 1.00, green: 0.00, blue: 0.00, alpha: 1.00)
        view.layer.borderWidth = 2.0
        
        return view
    }()
    
    let secondTopTitle : UILabel = {
        let label = UILabel()
        label.text = "비행을 위해."
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 40.0)
        label.textAlignment = .left
        
        return label
    }()
    
    let topIntroduce : UILabel = {
        let label = UILabel()
        label.text = "중앙공항에 오신 것을 환영합니다."
        label.textColor = .white
        label.font = .systemFont(ofSize: 20.0)
        label.textAlignment = .left
        
        return label
    }()
    
    let loginButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.primaryColor, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 15.0)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.2
        button.isEnabled = true

        
        return button
    }()
    
    let registerLabel : UILabel = {
        let label = UILabel()
        label.text = "계정이 없으신가요? 회원가입"
        label.font = .systemFont(ofSize: 13.0)
        label.textColor = .white
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let planeImage : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "plane"))
        imageView.contentMode = .scaleAspectFit
        imageView.sizeToFit()
        imageView.clipsToBounds = false

        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        setLayout()
        setAttributes()
    }
    
    override func viewDidLayoutSubviews() {
        decorationFirCircle.layer.cornerRadius = decorationFirCircle.layer.bounds.width / 2
        decorationFirCircle.clipsToBounds = true
        
        decorationSecCircle.layer.cornerRadius = decorationSecCircle.layer.bounds.width / 2
        decorationSecCircle.clipsToBounds = true
        
        decorationThrCircle.layer.cornerRadius = decorationThrCircle.layer.bounds.width / 2
        decorationThrCircle.clipsToBounds = true
        
        decorationFouCircle.layer.cornerRadius = decorationFouCircle.layer.bounds.width / 2
        decorationFouCircle.clipsToBounds = true
        
        loginButton.layer.cornerRadius = loginButton.layer.bounds.width / 2
        loginButton.clipsToBounds = true
    }
    
    private func addView(){
        [decorationFirCircle,decorationSecCircle,decorationThrCircle,decorationFouCircle,topTitle, secondTopTitle, topIntroduce, loginButton, registerLabel, planeImage].forEach({
            view.addSubview($0)
        })
        
        planeImage.addSubview(decorationSquare)
    }
    
    private func setLayout(){
       
        topTitle.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalToSuperview().inset(378)
        }
        topTitle.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 48.41/390).isActive = true
        
        secondTopTitle.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(topTitle.snp.bottom).offset(10)

        }
        secondTopTitle.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 48.41/390).isActive = true

        
        topIntroduce.snp.makeConstraints{
            $0.top.equalTo(secondTopTitle.snp.bottom).offset(41)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        topIntroduce.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 24/390).isActive = true
        
        registerLabel.snp.makeConstraints{
            $0.bottom.equalToSuperview().inset(25)
            $0.centerX.equalToSuperview()
        }
        registerLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 158/390).isActive = true
        registerLabel.heightAnchor.constraint(equalTo: registerLabel.widthAnchor, multiplier: 16/158).isActive = true
        
        loginButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(registerLabel.snp.top).offset(-22)
        }
        
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 98/390).isActive = true
        loginButton.heightAnchor.constraint(equalTo: loginButton.widthAnchor).isActive = true
        
        planeImage.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(72)
            $0.bottom.equalTo(topIntroduce.snp.top).offset(-125.84)
        }
        planeImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 469/390).isActive = true
        planeImage.heightAnchor.constraint(equalTo: planeImage.widthAnchor, multiplier: 218.15/469).isActive = true
        
        decorationFirCircle.snp.makeConstraints{
            $0.bottom.equalToSuperview().inset(-304)
            $0.trailing.equalToSuperview().inset(7)
        }
        decorationFirCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 528/390).isActive = true
        decorationFirCircle.heightAnchor.constraint(equalTo: decorationFirCircle.widthAnchor, multiplier: 513/528).isActive = true
        
     
        decorationSecCircle.snp.makeConstraints{
            $0.top.equalToSuperview().inset(-373)
            $0.left.equalToSuperview().inset(-31)
        }
        decorationSecCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 528/390).isActive = true
        decorationSecCircle.heightAnchor.constraint(equalTo: decorationSecCircle.widthAnchor, multiplier: 513/528).isActive = true
        
        decorationThrCircle.snp.makeConstraints{
            $0.top.equalToSuperview().inset(-276)
            $0.trailing.equalToSuperview().inset(157)
        }
        decorationThrCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 528/390).isActive = true
        decorationThrCircle.heightAnchor.constraint(equalTo: decorationThrCircle.widthAnchor, multiplier: 513/528).isActive = true
        
        decorationFouCircle.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(164)
            $0.bottom.equalToSuperview().inset(-149)
        }
        decorationFouCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 528/390).isActive = true
        decorationFouCircle.heightAnchor.constraint(equalTo: decorationFouCircle.widthAnchor, multiplier: 513/528).isActive = true
        
        decorationSquare.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(48)
            $0.top.equalToSuperview().inset(15)
        }
        decorationSquare.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 36/469).isActive = true
        decorationSquare.heightAnchor.constraint(equalTo: decorationSquare.widthAnchor).isActive = true
        
        
    }
    
    private func setAttributes(){
        loginButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.backgroundColor = .primaryColor
    }

    @objc private func didTapButton(){
        let rootVC = LoginViewController()
        let navVc = UINavigationController(rootViewController: rootVC)
        navVc.modalPresentationStyle = .fullScreen
        present(navVc, animated: true)
    }
}

