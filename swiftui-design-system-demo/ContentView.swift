//
//  ContentView.swift
//  swiftui-design-system-demo
//
//  Created by 邵名浦 on 2019/9/3.
//  Copyright © 2019 vinceshao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    /// Level 2 buttons
    let CircleButtonPrimary = TokenButton(circleButtonType: .primary, buttonIcon: "circle-plus")
    let CircleButtonSupport = TokenButton(circleButtonType: .support, buttonIcon: "circle-plus-light")
    
    let IconButton = TokenButton(buttonIcon: "upload")
    
    let CapsuleButton = TokenButton(capsuleText: "Save")
    
    let TextButton = TokenButton(buttonText: "select")
    
    var body: some View {
        
        /// Suffix modifier buttons
        var TextButtonActiveDemo = TokenButton(buttonText: "select")
        var IconButtonHighlightDemo = TokenButton(buttonIcon: "upload")
        
        /// Highlight demo
        /*
        var textbtn = TokenButton(buttonText: "select")
        var textlabel = textbtn.buttonLabel.highlight(.on)
        print(textlabel.isHighlighted)
        print(textbtn.buttonLabel.isHighlighted)
        */
        
        return VStack {
            /// Level 1 usage
            /*
             
            Button(action: {}) {
                TokenButtonLabel(name: "circle-camera-medium", iconSize: .large, shadow: .none)
            }.buttonStyle(TokenButtonStyle(iconSize: .large, shadow: .loose, backgroundColor: .theme))

            Button(action: {}) {
                TokenButtonLabel(name: "circle-camera-medium", iconSize: .large, shadow: .intense)
            }.buttonStyle(TokenButtonStyle(iconSize: .large, shadow: .loose, backgroundColor: .clear, border: .regular))

            Button(action: {}) {
                TokenButtonLabel(name: "cross-light", iconSize: .small, shadow: .intense)
            }.buttonStyle(TokenButtonStyle(iconSize: .small, shadow: .intense))

            Button(action: {}) {
                TokenButtonLabel(text: "Save", weight: .bold)
            }.buttonStyle(TokenButtonStyle(shadow: .loose, backgroundColor: .highlight, textColor: .light))

            Button(action: {}) {
                TokenButtonLabel(text: "select", weight: .bold)
            }.buttonStyle(TokenButtonStyle(textColor: .highlight))
             
            */
            
            /// Level 2 usage
            /*
            Button(action:{}) {
                CircleButtonLarge.buttonLabel
            }.buttonStyle(CircleButtonLarge.buttonStyle)

            Button(action:{}) {
                CircleButtonPrimary.buttonLabel
            }.buttonStyle(CircleButtonPrimary.buttonStyle)

            Button(action:{}) {
                CircleButtonSecondary.buttonLabel
            }.buttonStyle(CircleButtonSecondary.buttonStyle)

            Button(action:{}) {
                CircleButtonSupport.buttonLabel
            }.buttonStyle(CircleButtonSupport.buttonStyle)

            Button(action:{}) {
                IconButtonAction.buttonLabel
            }.buttonStyle(IconButtonAction.buttonStyle)

            Button(action:{}) {
                IconButtonTool.buttonLabel
            }.buttonStyle(IconButtonTool.buttonStyle)

            Button(action:{}) {
                CapsuleButton.buttonLabel
            }.buttonStyle(CapsuleButton.buttonStyle)

            Button(action:{}) {
                TextButton.buttonLabel
            }.buttonStyle(TextButton.buttonStyle)
            */
            
            /// Active modifier demo
            Button(action:{}) {
                TextButtonActiveDemo.buttonLabel
            }.buttonStyle(TextButtonActiveDemo.buttonStyle)
            
            Button(action:{}) {
                TextButtonActiveDemo.buttonLabel
            }.buttonStyle(TextButtonActiveDemo.buttonStyle.activate(.off))
            
            /// Highlight modifier demo
            Button(action:{}) {
                IconButtonHighlightDemo.buttonLabel
            }.buttonStyle(IconButtonHighlightDemo.buttonStyle)
            
            Button(action:{}) {
                IconButtonHighlightDemo.buttonLabel.highlight(.on)
            }.buttonStyle(IconButtonHighlightDemo.buttonStyle)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.font, Font.Typography.mainFont)
            .environment(\.colorScheme, .light)
    }
}
#endif
