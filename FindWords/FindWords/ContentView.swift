//
//  ContentView.swift
//  FindWords
//
//  Created by Leandro Carvalho on 05/06/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State var showSettings: Bool = false
    
    // MARK: - Body Start
    var body: some View {
        
        ZStack {
            VStack {
                // MARK: - Header
                HeaderView(showSettingView: $showSettings)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
