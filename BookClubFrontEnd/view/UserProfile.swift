//
//  UserProfile.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//

import SwiftUI

struct UserProfile: View {
    var user : User
    
    var body: some View {
        VStack{
            HStack{
                Text("Edit Profile")
                    .font(.title)
            }
            HStack{
                Text("Name: \(user.name)")
            }
            HStack{
                Text("Password: \(user.password)")
            }
            }.padding()
        }
    }

#Preview {
    Group {
        //UserProfile(user : ModelData().users[0])
        //UserProfile(user : ModelData().users[1])
    }
}
