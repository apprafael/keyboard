//
//  ContentView.swift
//  keyboard
//
//  Created by Rafael Almeida on 04/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            KeyView(keyColorsToggle: KeyColorsToggle(keyColorsUnpressed: KeyColors(keyColor: .marfim,
                                                                                    shadowColor1: .black,
                                                                                    shadowColor2: .black),
                                                      keyColorsPressed: KeyColors(keyColor: .red,
                                                                                  shadowColor1: .orange,
                                                                                  shadowColor2: .blue)))
            KeyView(keyColorsToggle: KeyColorsToggle(keyColorsUnpressed: KeyColors(keyColor: .marfim,
                                                                                    shadowColor1: .black,
                                                                                    shadowColor2: .black),
                                                      keyColorsPressed: KeyColors(keyColor: .blue,
                                                                                  shadowColor1: .green,
                                                                                  shadowColor2: .yellow)))
            KeyView(keyColorsToggle: KeyColorsToggle(keyColorsUnpressed: KeyColors(keyColor: .marfim,
                                                                                    shadowColor1: .black,
                                                                                    shadowColor2: .black),
                                                      keyColorsPressed: KeyColors(keyColor: .green,
                                                                                  shadowColor1: .blue,
                                                                                  shadowColor2: .orange)))
            KeyView(keyColorsToggle: KeyColorsToggle(keyColorsUnpressed: KeyColors(keyColor: .marfim,
                                                                                    shadowColor1: .black,
                                                                                    shadowColor2: .black),
                                                      keyColorsPressed: KeyColors(keyColor: .orange,
                                                                                  shadowColor1: .blue,
                                                                                  shadowColor2: .red)))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
