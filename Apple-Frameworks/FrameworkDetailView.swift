//
//  pop-up.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool // It is bind to the value that its parent have.
    @State private var isShowingSafariView = false // Only used in this screen. So, we should use private.
    
    var body: some View {
        VStack() {
            Spacer()
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) // Makes it white in the dark mode and black in the light mode
                        .imageScale(.large)
                        .frame(width: 44, height: 44) // The standard size for easy tap. Users won't miss the X button even they don't hit it perfectly.
                    
                }
            }
            .padding()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Preview: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,
                            isShowingDetailView: .constant(false))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
