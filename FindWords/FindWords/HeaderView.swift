//
//  HeaderView.swift
//  FindWords
//
//  Created by Leandro Carvalho on 06/06/23.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Properties
    
    @Binding var showSettingView: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "info.circle")
                .font(.system(size: 30, weight: .medium))
                .padding(.horizontal, 10)
                .foregroundColor(Color.clear)
            
            Image("title")
                .resizable()
                .frame(width: 250, height: 50)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
            
            Button {
                self.showSettingView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 30, weight: .medium))
                    .padding(.top, 10)
                    .padding(.horizontal, 10)
            }.accentColor(Color.primary)
                .sheet(isPresented: $showSettingView) {
                    SettingsView()
                }

        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showSettingView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
