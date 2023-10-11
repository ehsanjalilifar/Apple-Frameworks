//
//  FameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Ehsan Jalilifar on 10/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel() // We need a variable to keep the state. Here every time the view is recreated it will be initialized to nill (default value)
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🍏 Frameworks") // If you append it to NavigationView it won't work
                .sheet(isPresented: $viewModel.isShowingDetailView) { //binding with $ is the key component to provide the functionality
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView) // Since the selectedFramework variable is nullable we have to define a default value to framework.
                }
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
        
    
}
