//
//  Home.swift
//  BookClubFrontEnd
//
//  Created by Kaiden Jones on 4/22/24.
//



import SwiftUI


struct Home: View {
    var body: some View {
        NavigationView{
        VStack{
            HStack{
            Text("Home")
                .font(.largeTitle)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            Spacer()
                HStack{
                    NavigationLink{
                        UserProfile(user: ModelData().oneUserTest)
                    } label:{
                        Text("Profile")
                            .font(.system(size: 25))
                    }
                }
                HStack{
                    NavigationLink{
                        AllClubs(clubs: ModelData().manyClubTest)
                    } label:{
                        Text("Clubs")
                            .font(.system(size: 25))
                    }
                }
                HStack{
                    NavigationLink{
                        AllBooks(books: ModelData().manyBookTest)
                    } label:{
                        Text("Books")
                            .font(.system(size: 25))
                    }
                }
                HStack{
                    Text("Log out ")
                        .font(.system(size: 25))
                }
            Spacer()
            }
        }
    }
}


struct HomeView_Preview: PreviewProvider{
    static var previews: some View{
        Home()
    }
}
