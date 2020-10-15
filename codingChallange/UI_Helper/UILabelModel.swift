//
//  UILabelModel.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/15/20.
//

import UIKit

class UILabelModel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been imlemented")
    }
    
    convenience init(textAlignment: NSTextAlignment,textColor: UIColor) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.textColor = textColor
    }
    
    
    private func configureLabel(){
        numberOfLines = 2
        font =  UIFont(name: "Verdana", size: 14)
    }
}
