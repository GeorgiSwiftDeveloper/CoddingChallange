//
//  UIView_Ext.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/14/20.
//

import Foundation
import UIKit



extension UIView {

    func pinTableView(to superView:UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.rightAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive = true
     
    }
    
    
    func pinTableViewCell() {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leftAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.rightAnchor).isActive = true
        
    }
    
    
    func pinHolderUIView(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false

        topAnchor.constraint(equalTo: (superview?.safeAreaLayoutGuide.topAnchor)!).isActive = true
        leftAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.rightAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor).isActive = true

      
    }
    
    
    func pinCategoryLabel(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalToSystemSpacingBelow: superview!.topAnchor, multiplier: 0.5).isActive = true
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor, constant: 10).isActive = true
    }
    
    
    func pinCategoryTitleLabel(to categoryBottomView: UIView, to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: categoryBottomView.bottomAnchor, constant:10).isActive = true
        leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    
    
    func pinPictureImageView(to categoryTitleBottomView: UIView, to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalToSystemSpacingAfter: superview!.centerXAnchor, multiplier: 0).isActive = true
        centerYAnchor.constraint(equalToSystemSpacingBelow: superview!.centerYAnchor, multiplier: 0).isActive = true
        heightAnchor.constraint(greaterThanOrEqualToConstant: 250).isActive = true
        widthAnchor.constraint(greaterThanOrEqualToConstant: UIScreen.main.bounds.width).isActive = true
        
    }
    
    
    func pinCommentImage(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.bottomAnchor, constant:10).isActive = true
    }
    
    
    func pinNumberOfCommentsLabel(to superView: UIView,to imageView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: imageView.bottomAnchor, constant:10).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant:25).isActive = true
    }
    
 
}
