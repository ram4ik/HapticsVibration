//
//  ContentView.swift
//  HapticsVibration
//
//  Created by Ramill Ibragimov on 02.11.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                HapticManager.shared.vibrate(for: .success)
            }, label: {
                Text("Vibrate for success")
            }).padding()
            Button(action: {
                HapticManager.shared.vibrate(for: .error)
            }, label: {
                Text("Vibrate for error")
            }).padding()
            Button(action: {
                HapticManager.shared.vibrate(for: .warning)
            }, label: {
                Text("Vibrate for warning")
            }).padding()
        }
        VStack {
            Button(action: {
                Haptics.shared.softRoll(0.7)
            }, label: {
                Text("SoftHammer")
            })
            Button(action: {
                Haptics.shared.hit(0.9)
            }, label: {
                Text("HardHammer")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
