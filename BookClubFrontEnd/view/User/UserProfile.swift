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
        NavigationView {
            VStack(spacing: 20) { // Added spacing between VStack elements
                Text("Cole Prochilo")
                    .font(.system(size: 40))
                
                Spacer() // Pushes the name to the top
                NavigationLink{
                    EditProfile(user: ModelData().oneUserTest)
                } label:{
                    Text("Edit Profile Info")
                        .font(.system(size: 25))
                }
                NavigationLink{
                    MyClubs(clubs: ModelData().twoClubTest)
                }label:{
                    Text("My Clubs")
                        .font(.system(size: 25))
                }
                NavigationLink(destination: MyBooks(books: ModelData().twoBookTest)) {
                    Text("My Books")
                        .font(.system(size: 25))
                }
                    Text("Log Out")
                        .font(.system(size: 25))
                
                Spacer() // Pushes the other content to the center
                
            }
            .padding() // Add padding to the VStack
        }
    }
}

#Preview {
    UserProfile(user: ModelData().oneUserTest)
}
