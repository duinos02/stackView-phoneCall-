//
//  ViewController.swift
//  stackViewPractice
//
//  Created by 이예진 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet var phoneNumberButtons: [circleButton]!
    @IBOutlet weak var phoneCallButton: circleButton!
    
    var phoneNumberString = "" {
        didSet{
            DispatchQueue.main.async { [weak self] in
                
                guard let self = self else {return}
                
                self.phoneNumberLabel.textColor = .black
                self.phoneNumberLabel.text = self.phoneNumberString
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for buttonItem in phoneNumberButtons {
            buttonItem.addTarget(self, action: #selector(onNumberButtonClicked(sender:)), for: .touchUpInside)
        }
        
        phoneCallButton.addTarget(self, action: #selector(onPhoneCallButtonClicked(_:)), for: .touchUpInside)
        
       
    }

    @objc fileprivate func onNumberButtonClicked(sender : UIButton) {
        guard let inputString = sender.titleLabel?.text else { return }
        phoneNumberString.append(inputString)
    }

    
    @objc fileprivate func onPhoneCallButtonClicked(_ sender:UIButton){
        phoneNumberString.removeAll()
    }
}

