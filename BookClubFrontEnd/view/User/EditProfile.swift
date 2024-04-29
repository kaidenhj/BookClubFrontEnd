//
//  EditProfile.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/28/24.
//

import SwiftUI

struct EditProfile: View {
    var user : User
    @State private var username: String
    @State private var password: String
    
    init(user: User) {
            self.user = user
            _username = State(initialValue: user.name)
            _password = State(initialValue: user.password)
        }
    
    var body: some View {
        VStack{
            HStack{
                Text("Edit Profile")
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            Spacer()
            HStack{
                Image("user").resizable()
                .scaledToFit()
                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(Capsule())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4)}
            }
            
            Form {
                Section(header: Text("User Information")) {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                           
                    Section {
                        Button("Edit Profile") {
                    }
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    EditProfile(user : ModelData().oneUserTest)
}
