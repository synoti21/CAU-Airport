//
//  ViewController.swift
//  db-cauAirport
//
//  Created by 안지완 on 2023/01/04.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    var loginUser : String?
    
    let greetingTitle : UILabel = {
        let label = UILabel()
        label.text = "즐거운 여행 되세요."
        label.font = .systemFont(ofSize: 25.0)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        
        return label
    }()
    
    let userLabel : UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 35.0)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.textAlignment = .left
        
        return label
    }()
    
    let mainFrame : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20.0
        
        return view
    }()
    
    let onewayBtn : UIButton = {
        let button = UIButton()
        var isSelected : Bool = true
        
        button.layer.borderColor = UIColor.secondaryColor.cgColor
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 15.0
        
        button.setTitle("편도", for: .normal)
        button.setTitleColor(.secondaryColor, for: .normal)
        
        return button
    }()
    
    let roundtripBtn : UIButton = {
        let button = UIButton()
        var isSelected : Bool = false
        
        button.layer.borderColor = UIColor.secondaryColor.cgColor
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 15.0
        
        button.setTitle("왕복", for: .normal)
        button.setTitleColor(.secondaryColor, for: .normal)
        
        return button
    }()
    
    let departView : UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12.0
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.basicTextColor.cgColor
        view.backgroundColor = .white
        
        return view
    }()
    
    let departLabel : UILabel = {
        let label = UILabel()
        label.text = "출발지"
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .basicTextColor
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let arrivalView : UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12.0
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.basicTextColor.cgColor
        view.backgroundColor = .white
        
        return view
    }()
    
    let arrivalLabel : UILabel = {
        let label = UILabel()
        label.text = "도착지"
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .basicTextColor
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let departDateView : UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12.0
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.basicTextColor.cgColor
        view.backgroundColor = .white
        
        return view
    }()
    
    let departDateLabel : UILabel = {
        let label = UILabel()
        label.text = "출발 날짜"
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .basicTextColor
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let arrivalDateView : UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12.0
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.basicTextColor.cgColor
        view.backgroundColor = .white
        
        return view
    }()
    
    let arrivalDateLabel : UILabel = {
        let label = UILabel()
        label.text = "도착 날짜"
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .basicTextColor
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        
        return label
    }()
    
    let reserveBtn : UIButton = {
        let button = UIButton()
        button.setTitle("항공편 조회하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16.0)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.2
        button.backgroundColor = .primaryColor
        button.layer.cornerRadius = 12.0
        
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
        [greetingTitle, userLabel, mainFrame].forEach({
            view.addSubview($0)
        })
        
        [onewayBtn, roundtripBtn, departView, arrivalView, departDateView, arrivalDateView, reserveBtn].forEach({
            mainFrame.addSubview($0)
        })
        
        departView.addSubview(departLabel)
        arrivalView.addSubview(arrivalLabel)
        departDateView.addSubview(departDateLabel)
        arrivalDateView.addSubview(arrivalDateLabel)
    }
    
    private func setLayout(){
        greetingTitle.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalToSuperview().inset(79)
        }
        
        userLabel.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(greetingTitle.snp.bottom).offset(25)
        }
        mainFrame.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(userLabel.snp.bottom).offset(36)
        }
        mainFrame.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        onewayBtn.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(20)
            $0.top.equalToSuperview().offset(58)
        }
        onewayBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 63/390).isActive = true
        onewayBtn.heightAnchor.constraint(equalTo: onewayBtn.widthAnchor, multiplier: 28.12/63).isActive = true
        
        roundtripBtn.snp.makeConstraints{
            $0.leading.equalTo(onewayBtn.snp.trailing).offset(17)
            $0.top.equalToSuperview().offset(58)
        }
        roundtripBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 63/390).isActive = true
        roundtripBtn.heightAnchor.constraint(equalTo: roundtripBtn.widthAnchor, multiplier: 28.12/63).isActive = true
        
        departView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(onewayBtn.snp.bottom).offset(30.87)
        }
        departView.heightAnchor.constraint(equalTo: departView.widthAnchor, multiplier: 90/350).isActive = true
        
        arrivalView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(departView.snp.bottom).offset(24)
        }
        arrivalView.heightAnchor.constraint(equalTo: arrivalView.widthAnchor, multiplier: 90/350).isActive = true
        
        departDateView.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(20)
            $0.top.equalTo(arrivalView.snp.bottom).offset(24)
        }
        departDateView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 163/390).isActive = true
        departDateView.heightAnchor.constraint(equalTo: departDateView.widthAnchor, multiplier: 145/163).isActive = true
        
        arrivalDateView.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(arrivalView.snp.bottom).offset(24)
        }
        arrivalDateView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 163/390).isActive = true
        arrivalDateView.heightAnchor.constraint(equalTo: departDateView.widthAnchor, multiplier: 145/163).isActive = true
        
        departLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(14)
            $0.top.equalToSuperview().inset(11)
        }
        
        arrivalLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(14)
            $0.top.equalToSuperview().inset(11)
        }

        departDateLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(14)
            $0.top.equalToSuperview().inset(11)
        }

        arrivalDateLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(14)
            $0.top.equalToSuperview().inset(11)
        }

        reserveBtn.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.bottom.equalTo(view.snp.bottom).offset(-39)
        }
        reserveBtn.heightAnchor.constraint(equalTo: reserveBtn.widthAnchor, multiplier: 51/350).isActive = true
        
    }
    
    private func setAttributes(){
        guard let userName = loginUser else { return }
        view.backgroundColor = .primaryColor
        userLabel.text = "\(userName)님."
    }
    

}

