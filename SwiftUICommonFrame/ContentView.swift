//
//  ContentView.swift
//  SwiftUICommonFrame
//
//  Created by 永田大祐 on 2020/06/25.
//  Copyright © 2020 永田大祐. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SetDesgin(c: Color.red) {Text("name") }
            SetDesgin(c: Color.yellow) {Text("name") }
            SetDesgin(c: Color.green) {Text("name") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private struct SetDesgin<Content:View>: View {
    
    var c: Color
    let viewBuilder: () -> Content
    var body: some View {
        viewBuilder()
            .frame(maxWidth: .infinity, maxHeight: 100)
            .background(c)
            .padding(.horizontal)
    }
}
