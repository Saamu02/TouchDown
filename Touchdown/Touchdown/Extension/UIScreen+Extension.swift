//
//  UIScreen+Extension.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

extension UIScreen {
    
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}

