//
//  UIWindow+Extension.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

extension UIWindow {
    
    static var current: UIWindow? {
        
        for scene in UIApplication.shared.connectedScenes {
            guard let windowScene = scene as? UIWindowScene else { continue }
            
            for window in windowScene.windows {
                if window.isKeyWindow { return window }
            }
        }
        return nil
    }
}
