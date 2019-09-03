//
//  ColorPalatte.swift
//  swiftui-design-system-demo
//
//  Created by 邵名浦 on 2019/9/3.
//  Copyright © 2019 vinceshao. All rights reserved.
//

import SwiftUI

///
// MARK: Base color palette materials
///

/// 1. Level 1 materials
struct BaseColor {
    let contrastPrimary = Color("contrastPrimary")
    let contrastSecondary = Color("contrastSecondary")
    let themePrimary = Color("themePrimary")
    let themeSecondary = Color("themeSecondary")
    let brandPrimary = Color("brandPrimary")
    let brandSecondary = Color("brandSecondary")
    let gray = Color("gray")
}

/// 2. Level 2 tokens
struct TokenColor {
    let baseColor = BaseColor()
    
    let highlight: Color!
    let inactive: Color!
    
    let textDefault: Color!
    let textHighlight: Color!
    let backgroundDefault: Color!
    
    init() {
        /// contrastPrimary
        self.textDefault = baseColor.contrastPrimary
        self.backgroundDefault = baseColor.contrastPrimary
        
        /// brand
        self.highlight = baseColor.brandPrimary
        self.textHighlight = baseColor.brandPrimary
        
        /// gray
        self.inactive = baseColor.gray
    }
}

///
// MARK: Add palatte to Color struct
///
///
/// Base colors are not exposed at same layer as Color.Token but inside of which,
/// because we encourage using Token colors instead of Base colors in most cases.
///
extension Color {
    static let Token = TokenColor()
}
