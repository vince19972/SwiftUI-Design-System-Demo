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
        
        return GeometryReader { geometry in
            VStack(alignment: .center, spacing: 24) {
                
                Spacer()
                
                Text("Demonstration of buttons")
                    .font(Font.Typography.sizingFont(font: .sub, size: .body))
                    .foregroundColor(Color.Token.textTheme)
                
                Spacer()
                
                /// Level 1 usage
                /*
                Button(action: {}) {
                    TokenButtonLabel(name: "circle-plus", iconSize: .medium)
                }.buttonStyle(TokenButtonStyle(iconSize: .medium, backgroundColor: .theme))


                Button(action: {}) {
                    TokenButtonLabel(text: "select")
                }.buttonStyle(TokenButtonStyle(textColor: .highlight))
                 */
                 
                
                /// Level 2 usage
                Button(action:{}) {
                    self.CircleButtonPrimary.buttonLabel
                }.buttonStyle(self.CircleButtonPrimary.buttonStyle)

                Button(action:{}) {
                    self.CircleButtonSupport.buttonLabel
                }.buttonStyle(self.CircleButtonSupport.buttonStyle)

                Button(action:{}) {
                    self.IconButton.buttonLabel
                }.buttonStyle(self.IconButton.buttonStyle)

                Button(action:{}) {
                    self.CapsuleButton.buttonLabel
                }.buttonStyle(self.CapsuleButton.buttonStyle)

                Button(action:{}) {
                    self.TextButton.buttonLabel
                }.buttonStyle(self.TextButton.buttonStyle)
                
                /*
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
                */
                
                Spacer()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.font, Font.Typography.mainFont)
            .environment(\.colorScheme, .light)
            .background(Color.blue)
    }
}
#endif
