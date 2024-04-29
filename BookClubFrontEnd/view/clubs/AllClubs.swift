//
//  AllClubs.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/28/24.
//

import SwiftUI

struct AllClubs: View {
    var clubs : [Club]
    var body: some View {
        VStack{
            NavigationSplitView{
                HStack{
                    Text("My Clubs")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                }
                Image("clubPic")
                    .resizable()
                    .scaledToFit() .frame(maxWidth: .infinity, maxHeight: 200)
                
                    .padding()
                List{
                    ForEach(clubs) { club in
                        NavigationLink {
                            ClubPage(club: club)
                        } label: {
                            ClubRow(club: club)
                        }
                    }
                }
            } detail: {
                Text("Select a Club")
            }
        }
    }
}


#Preview {
//    MyClubs(club: ModelData().oneClubTest)
    AllClubs(clubs: ModelData().manyClubTest)
}
