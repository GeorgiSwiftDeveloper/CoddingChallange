//
//  UIButtonModel.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/15/20.
//

import UIKit

class UIButtonModel: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been imlemented")
    }
    
    
    convenience init(image: String) {
        self.init(frame: .zero)
        configureMusicPlayerButton(image: image)
    }
    
    
    func configureMusicPlayerButton(image: String) {
        self.setImage(UIImage(systemName: image)?.withTintColor(.black), for: .normal)
        updateUI()
    }
    
    func updateUI() {
        imageView?.tintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        imageView?.clipsToBounds = true
    }

}
