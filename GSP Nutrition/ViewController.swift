//
//  ViewController.swift
//  GSP Nutrition
//
//  Created by gabriel subutzki portes on 07/09/25.
//

import UIKit

class ViewController: UIViewController{
//Criação de atributos > @State, @Enviroment, Etc...
    
//Criação de Elementos visuais na nossa aplicação > private lazy var..
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Applogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 70
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
       let imageView = UILabel()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.text = "GSP Nutrition"
        imageView.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        imageView.textColor = .white
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 2, height: 4)
        imageView.layer.shadowOpacity = 0.9
        return imageView
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundGradient()
        addSubViews()
        setupConstrains()
    }
    
    func addSubViews(){
        view.addSubview(logoImageView)
        view.addSubview(titleLabel)
    }
    
    func setupConstrains(){
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            
            
        ])
    }

    
    
    private func backgroundGradient(){
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        
        gradientLayer.colors = [
            UIColor.yellow.cgColor,
            UIColor.white.cgColor,
            UIColor.yellow.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    

    
}
