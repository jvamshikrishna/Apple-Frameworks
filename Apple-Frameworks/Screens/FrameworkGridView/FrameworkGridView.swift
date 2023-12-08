//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Vamshi krishna Jillapally on 12/4/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    // when intoducing new viewmodel we use stateobject
    // if injecting from previous view, we initailize using viewmodel, then we use observedObject
    
    
    var body: some View {
        NavigationView{
            
                List{
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)
                        }
                        
                    }
                }
          
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


