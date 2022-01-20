//
//  CustomTabSwitcher.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 20.1.22..
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    
    //
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red bar
                            Rectangle()
                                // now we dont have to calculate width
                                //.frame(width: widthForTab(tab), height: 6)
                                .frame(height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            //.frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            switch currentTab {
            case .episodes:
                Text("EPISODES")
            case .trailers:
                Text("TRAILERS")
            case .more:
                Text("MORE LIKE THIS")
            }
        }.foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
        
    }
}


enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
