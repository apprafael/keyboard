//
//  KeyView.swift
//  keyboard
//
//  Created by Rafael Almeida on 04/05/22.
//

import SwiftUI

import SwiftUI

struct KeyView: View {
    @State var keyColorsToggle: KeyColorsToggle

    var body: some View {
        ZStack {
            Rectangle()
                .fill(keyColorsToggle.keyColors.keyColor)
                .shadow(color: keyColorsToggle.keyColors.shadowColor1, radius: 10, x: keyColorsToggle.shadowX, y: keyColorsToggle.shadowY)
                .shadow(color: keyColorsToggle.keyColors.shadowColor2, radius: 10, x: keyColorsToggle.shadowX, y: keyColorsToggle.shadowY)
                .animation(.easeInOut)
                .frame(width: 200, height: 50, alignment: .center)
                .onTapGesture(perform: {
                    keyColorsToggle.toggle = !keyColorsToggle.toggle
                })
                .animation(.easeIn)
        }
    }
}

struct KeyColors {
    var keyColor: Color = .white
    var shadowColor1: Color
    var shadowColor2: Color
}

struct KeyColorsToggle {
    var keyColors: KeyColors
    
    private let keyColorsUnpressed: KeyColors
    private let keyColorsPressed: KeyColors
    var shadowX: CGFloat = 15
    var shadowY: CGFloat = 15
    
    var toggle: Bool {
        didSet {
            keyColors = toggle ? keyColorsPressed : keyColorsUnpressed
            shadowX = toggle ? 5 : 15
            shadowY = toggle ? 5 : 15
        }
    }
    
    init(keyColorsUnpressed: KeyColors, keyColorsPressed: KeyColors) {
        self.keyColorsPressed = keyColorsPressed
        self.keyColorsUnpressed = keyColorsUnpressed
        self.keyColors = keyColorsUnpressed
        self.toggle = false
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView(keyColorsToggle: KeyColorsToggle(keyColorsUnpressed: KeyColors(keyColor: .marfim,
                                                                                shadowColor1: .gray,
                                                                                shadowColor2: .gray),
                                                  keyColorsPressed: KeyColors(keyColor: .red,
                                                                              shadowColor1: .orange,
                                                                              shadowColor2: .yellow)))
    }
}
