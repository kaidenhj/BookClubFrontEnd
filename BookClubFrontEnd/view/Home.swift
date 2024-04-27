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
                    NavigationLink{
                        //UserProfile()
                    } label:{
                        Text("User")
                    }
                }
                HStack{
                    NavigationLink{
                        MyClubs()
                    } label:{
                        Text("User's clubs page button")
                    }
                }
                HStack{
                    Text("User's books page button")
                }
                HStack{
                    Text("Clubs search page")
                }
                HStack{
                    Text("Log out ")
                }
            }.padding()
        }
    }
}


struct HomeView_Preview: PreviewProvider{
    static var previews: some View{
        Home()
    }
}
