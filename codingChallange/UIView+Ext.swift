//
//  Const_Ext.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/14/20.
//

import UIKit

extension UIView {

    func pinTableView(to superView:UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
    
    
    func pinTableViewCell() {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
    
    
    func pinHolderUIView(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor, constant: 0).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor, constant: 0).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor, constant: 0).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor, constant: 0).isActive = true
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    func pinCategoryLabel(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
    
    
    func pinCategoryTitleLabel(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
    
    
    func pinPictureImageView(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
    
    
    func pinNumberOfCommentsLabel(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
    }
 
}
