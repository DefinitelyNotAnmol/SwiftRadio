//
//  ContentView.swift
//  SwiftRadio
//
//  Created by Anmol Jain on 03/11/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .black
    }
    
    @State var selected = 0
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "1.square.fill")
                Text("First")
            }.tag(0)
            
            SearchView().tabItem {
                Image(systemName: "2.square.fill")
                Text("Second")
            }.tag(1)
            
            LibraryView().tabItem {
                Image(systemName: "3.square.fill")
                Text("Third")
            }.tag(2)
        }.accentColor(.white).foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
