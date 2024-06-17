//
//  ViewController.swift
//  RollTheDice
//
//  Created by Tomas Sanni on 6/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    let background = UIImageView(image: UIImage(named: "GreenBackground"))
    let logo = UIImageView(image: UIImage(named: "DiceeLogo"))
    let diceImage1 = UIImageView(image: UIImage(named: "DiceThree"))
    let diceImage2 = UIImageView(image: UIImage(named: "DiceFive"))
    let rollButton = UIButton()
    
    let allDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgound()
        configureImages()
        configureButton()
    }
    
    func configureBackgound() {
        view.addSubview(background)
        background.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func configureImages() {
        view.addSubview(logo)
        view.addSubview(diceImage1)
        view.addSubview(diceImage2)
        logo.translatesAutoresizingMaskIntoConstraints = false
        diceImage1.translatesAutoresizingMaskIntoConstraints = false
        diceImage2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            
            diceImage1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            diceImage1.widthAnchor.constraint(equalToConstant: 120),
            diceImage1.heightAnchor.constraint(equalToConstant: 120),

            diceImage2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            diceImage2.widthAnchor.constraint(equalToConstant: 120),
            diceImage2.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    func configureButton() {
        view.addSubview(rollButton)
        rollButton.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        rollButton.translatesAutoresizingMaskIntoConstraints = false
        rollButton.backgroundColor = #colorLiteral(red: 0.6066564322, green: 0.1104470566, blue: 0.1192051247, alpha: 1)
        rollButton.setTitle("Roll", for: .normal)
        rollButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        rollButton.setTitleColor(.white, for: .normal)
        
        NSLayoutConstraint.activate([
            rollButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            rollButton.heightAnchor.constraint(equalToConstant: 50),
            rollButton.widthAnchor.constraint(equalToConstant: 100),
            rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func handleButton() {
        diceImage1.image = allDice.randomElement()
        diceImage2.image = allDice.randomElement()
    }
}

#Preview {
    ViewController()
}


