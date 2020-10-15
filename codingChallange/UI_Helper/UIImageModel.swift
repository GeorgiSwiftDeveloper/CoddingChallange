//
//  UIImageModel.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/15/20.
//

import UIKit

class UIImageModel: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init has not been imlemented")
    }

    convenience init(content: ContentMode) {
        self.init(frame: .zero)
        self.contentMode = content
    }
    
    private func configureImageView(){
        contentMode = .scaleAspectFit
        clipsToBounds = true
    }

}
