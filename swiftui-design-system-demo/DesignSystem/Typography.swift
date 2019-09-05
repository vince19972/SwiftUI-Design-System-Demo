//
//  Typography.swift
//  swiftui-design-system-demo
//
//  Created by 邵名浦 on 2019/9/3.
//  Copyright © 2019 vinceshao. All rights reserved.
//

import SwiftUI

///
// MARK: Base typography materials
///
struct TokenTypography {

    ///
    // 1. Prepare base materials
    ///
    
    /// a. Level 1 base settings
    private enum FontSize: CGFloat {
        case
        small = 12,
        medium = 17,
        large = 28
    }
    private enum FontFamily: String {
        case
        HelveticaNeue = "HelveticaNeue",
        Georgia = "Georgia"
    }
    
    /// b. Level 2 tokens
    enum FontSizeToken: CGFloat {
        case
        caption,
        body,
        title
        
        func getValue() -> CGFloat {
            switch self {
            case .caption:
                return FontSize.small.rawValue
            case .body:
                return FontSize.medium.rawValue
            case .title:
                return FontSize.large.rawValue
            }
        }
    }
    enum FontFamilyToken: String {
        case
        main,
        sub
        
        func getValue() -> String {
            switch self {
            case .main:
                return FontFamily.HelveticaNeue.rawValue
            case .sub:
                return FontFamily.Georgia.rawValue
            }
        }
    }

    ///
    // 2. Expose data
    ///
    let mainFont: Font!
    let subFont: Font!
    
    init() {
        self.mainFont = Font.custom(FontFamilyToken.main.getValue(), size: FontSizeToken.body.getValue())
        self.subFont = Font.custom(FontFamilyToken.sub.getValue(), size: FontSizeToken.caption.getValue())
    }
}

/// Helper functions
extension TokenTypography {
    public func sizingFont(font: FontFamilyToken, size: FontSizeToken) -> Font {
        return Font.custom(font.getValue(), size: size.getValue())
    }
}

///
// MARK: Expose Typography to Font struct
///
/// ------
/// To set environment Font, please chain setting
/// `.environment(\.font, Font.Typography.mainFont)`
/// to entry View of the app.
/// ------
///
extension Font {
    static let Typography = TokenTypography()
}
