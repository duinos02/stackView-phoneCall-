//
//  PracticeViewController.swift
//  stackViewPractice
//
//  Created by 이예진 on 2021/01/07.
//

import Foundation
import UIKit

class PracticeViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet var phoneNumberButton: [circleButton]!
    @IBOutlet weak var phoneCallButton: circleButton!
    
    var phoneNumberString = "" {
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                //옵셔널 해제.내가 가진 self가 값이 없다면 return으로 반환함
                
                self.phoneNumberLabel.text = self.phoneNumberString
                self.phoneNumberLabel.textColor = .black
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for buttonItem in phoneNumberButton {
            buttonItem.addTarget(self, action: #selector(onNumberButtonClicked(sender:)), for: .touchUpInside)
        }
        
        phoneCallButton.addTarget(self, action: #selector(onPhoneCallButtonClicked(_:)), for: .touchUpInside) //콜버튼 클릭했을때
        
    }
    
    @objc fileprivate func onNumberButtonClicked(sender: UIButton) {
        guard let inputString = sender.titleLabel?.text else { return }
        //버튼 타이틀 가져오기 없으면 리턴
        phoneNumberString.append(inputString)
        
    }
    
    @objc fileprivate func onPhoneCallButtonClicked(_ sender: UIButton) {
        //메소드를 호출하는 부분에서 매개변수를 이용하지 않으려면 언더바 써도 됨
        phoneNumberString.removeAll()
        
        
    }
    
    
    
    
}




