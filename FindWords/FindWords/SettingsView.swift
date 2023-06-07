//
//  SettingsView.swift
//  FindWords
//
//  Created by Leandro Carvalho on 06/06/23.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - UserSettings Instance
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Language Settings")
                .font(.title)
                .padding(.top, 20)
            Form {
                Section(header: Text("Select a language")) {
                    VStack(alignment: .center, spacing: 10) {
                        HStack {
                            // English Button
                            Button {
                                self.settings.englishIsOn = true
                                self.settings.spanishIsOn = false
                                self.settings.italianIsOn = false
                            } label: {
                                buttonBackgroundAndText(buttonText: "English")
                            }
                            
                            Spacer()
                            addCheckmark(isLanguageOn: settings.englishIsOn)
                            Image("engFlag")
                                .resizable()
                                .border(Color.black, width: 1.5)
                                .frame(width: 50, height: 30)
                        }
                        
                        Divider()
                        
                        // spanish Button
                        HStack {
                            // English Button
                            Button {
                                self.settings.englishIsOn = false
                                self.settings.spanishIsOn = true
                                self.settings.italianIsOn = false
                            } label: {
                                buttonBackgroundAndText(buttonText: "Spanish")
                            }
                            
                            Spacer()
                            addCheckmark(isLanguageOn: settings.spanishIsOn)
                            Image("esFlag")
                                .resizable()
                                .border(Color.black, width: 1.5)
                                .frame(width: 50, height: 30)
                        }
                        
                        Divider()
                        
                        // Italian BUtton
                        HStack {
                            // Italian Button
                            Button {
                                self.settings.englishIsOn = false
                                self.settings.spanishIsOn = false
                                self.settings.italianIsOn = true
                            } label: {
                                buttonBackgroundAndText(buttonText: "Italian")
                            }
                            
                            Spacer()
                            addCheckmark(isLanguageOn: settings.italianIsOn)
                            Image("itFlag")
                                .resizable()
                                .border(Color.black, width: 1.5)
                                .frame(width: 50, height: 30)
                        }
                        
                        
                    }
                }
            }
        }
    }
}

// MARK: - add Button background and text
struct buttonBackgroundAndText: View {
    var buttonText: String = ""
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .renderingMode(.original)
                .frame(width: 70, height: 35)
                .cornerRadius(10)
            Text(buttonText)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
        }
    }
}

// MARK: - add Checkmark
struct addCheckmark: View {
    
    var isLanguageOn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle")
                .imageScale(.small)
                .foregroundColor(.green)
                .font(Font.largeTitle.weight(.regular))
                .opacity(self.isLanguageOn ? 1.0 : 0)
        }
    }
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
