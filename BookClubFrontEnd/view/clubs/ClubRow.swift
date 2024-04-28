//
//  ClubRow.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/23/24.
//

import SwiftUI

struct ClubRow: View {
    var club : Club
    
    var body: some View {
        HStack{
            Image("clubPic")
                .resizable()
                .scaledToFit() .frame(maxWidth: 70 , maxHeight: 70)
            Text(club.name)
            Spacer()
        }
        
    }
}

#Preview {
    ClubRow(club : ModelData().oneClubTest)
}
