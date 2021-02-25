//
//  circleButton.swift
//  stackViewPractice
//  Created by 이예진 on 2021/01/02.
//

import Foundation
import UIKit

@IBDesignable //인터페이스 빌더에서 디자인으로 확인 가능하게끔
class circleButton: UIButton {
    
    //인터페이스 빌더(스토리보드)에 필드를 하나 만드는거: 인스펙터 패널에서 사용될 수 있도록 설정(줄세개)
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{                     //코너레디어스 값이 설정되면 디드셋이 호출됨
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    
    
}



