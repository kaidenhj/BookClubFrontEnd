//
//  ClubPage.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/27/24.
//

import SwiftUI

struct ClubPage: View {
    var club: Club
    
    var body: some View {
        VStack{
            HStack{
                Text("My Club:")
                    .font(.system(size: 25))
                Text(club.name)
                    .font(.system(size: 25))
            }
            Spacer()
            HStack{
                Text("Director:")
                    .font(.system(size: 25))
                Text(club.director.name)
                    .font(.system(size: 25))
            }
            Image("clubPic")
                .resizable()
                .scaledToFit() .frame(maxWidth: .infinity, maxHeight: 200)
            HStack{
                Text("Monthly Host:")
                    .font(.system(size: 25))
                Text(club.monthlyHost.name)
                    .font(.system(size: 25))
            }
            HStack{
                Text("Members")
                    .font(.system(size: 25))
            }
            HStack{
                Text("Club Books")
                    .font(.system(size: 25))
            }

            .padding()
            Spacer()
        }
    }
}

#Preview {
    ClubPage(club: ModelData().oneClubTest)
}
