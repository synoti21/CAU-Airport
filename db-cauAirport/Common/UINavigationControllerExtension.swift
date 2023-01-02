//
//  UINavigationControllerExtension.swift
//  db-cauAirport
//
//  Created by 안지완 on 2023/01/02.
//

import Foundation
import UIKit

extension UINavigationController {
    func setupNavigationBar(items: [NavigationBarItems]){
        var leftitems = [UIBarButtonItem]()
        var rightitems = [UIBarButtonItem]()
        
        items.forEach{ item in
            switch item {
            case .back:
                let backImage = UIImage(systemName: "chevron.backward")
                navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(customView: UIImageView(image: backImage))
                navigationBar.tintColor = .black
                navigationBar.backItem?.title = ""
            case .add:
                let vc = UIImageView(image: UIImage(systemName: "plus.circle"))
                let addButtonItem = UIBarButtonItem(customView: vc)
                rightitems.append(addButtonItem)
                
            }
        }
        let height = self.view.safeAreaInsets.top
        
        var tabFrame = self.navigationBar.frame
        tabFrame.size.height = height
        tabFrame.origin.y = height
        
        navigationBar.frame = tabFrame
        navigationBar.setNeedsLayout()
        navigationBar.layoutIfNeeded()
        navigationBar.frame = navigationBar.frame
        navigationBar.backgroundColor = .white
        
        navigationBar.layer.masksToBounds = false
        navigationBar.topItem?.rightBarButtonItems = rightitems
        navigationBar.topItem?.leftBarButtonItems = leftitems
        navigationBar.tintColor = .black
        
        view.addSubview(navigationBar)
        view.bringSubviewToFront(navigationBar)
        
        

    }
}
