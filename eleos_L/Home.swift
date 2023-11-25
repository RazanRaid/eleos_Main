//
//  Home.swift
//  eleos_L
//
//  Created by TokaJaber on 22/08/2023.
//    dana_()


import SwiftUI

struct Home: View {
    
    @State var buttonSheet = false
    @State var AccountSheet = false
    
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack(spacing: 5) {
                    Text("Eleos ✨")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                    
                    
                    Button {
                        buttonSheet.toggle()
                    } label: {
                        Image(systemName: "gearshape")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .sheet(isPresented: $buttonSheet) {
                                BottomSheetView()
                                    .presentationDetents([.height(730)])
                            }
                        
                    }
                    .padding(.trailing, 10)
                    
                    
                }
                .frame(height: 44)
                
                
                Spacer()
                
            }
            .padding(.leading, 20)
            
            
            
        }
        .navigationBarHidden(true)
    }
    
    struct BottomSheetView: View {
        @State private var wakeUp = Date.now
        @State private var isToggled = false
        
        
        var body: some View {
            NavigationView {
                ZStack {
                    VStack {
                        Text("Settings")
                            .bold()
                            .padding(15)
                            .accentColor(.black)
                            .dynamicTypeSize(.xLarge)
                        
                        Form {
                            
                            
                            Section("General") {
                                
                                Toggle("Notification", isOn: $isToggled)
                                
                                
                                
                            }
                            
                            Section("Help Center") {
                                
                                NavigationLink(destination: PrivacyView(), label: {
                                    Text("Privacy policy")
                                })
                                
                                NavigationLink(destination: SupportView(), label: {
                                    Text("Support")
                                })
                            }
                            
                            Section("About The App"){
                                
                                NavigationLink(destination: AboutEleosView(), label: {
                                    HStack {
                                        Image(systemName: "apps.iphone")
                                        
                                        Text("About Eleos")
                                    }
                                    
                                    
                                })
                            }
                            
                            Section("More"){
                                NavigationLink(destination: CreatorsView(), label: {
                                    HStack {
                                        Image(systemName: "person.2.fill")
                                        Text("About Us")
                                    }
                                    
                                    
                                })
                            }
                            
//                            Section("Logout"){
//                                NavigationLink(destination: ContentView(), label: {
//                                    HStack {
//                                        Image(systemName: "person.crop.circle")
//                                            .font(.title2)
//                                            .foregroundStyle(.red)
//                                        Text("Sign Out")
//                                            .foregroundStyle(.red)
//                                    }
//                                    
//                                    
//                                    
//                                    
//                                })
//                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                    }
                }
                
            }
        }
        
    }
    struct NotificationView: View {
        @State private var isToggled1 = false
        @State private var isToggled2 = false
        @State private var isToggled3 = false
        
        
        
        var body: some View {
            Form {
                
                Toggle("Mute until unmuted", isOn: $isToggled1)
                
                if isToggled1 {
                    Text("Muted")
                        .font(.system(size: 12, weight: .light, design: .default))
                }
                Toggle("Mute for a day", isOn: $isToggled2)
                
                if isToggled2 {
                    Text("Muted for a day")
                        .font(.system(size: 12, weight: .light, design: .default))
                }
                Toggle("Mute for an hour", isOn: $isToggled3)
                
                if isToggled3 {
                    Text("Muted for an hour")
                        .font(.system(size: 12, weight: .light, design: .default))
                }
            }
            
        }
        
    }
    
    
    
    
    
    struct AccountSheetView: View {
        var body: some View {
            Text("Account")
                .bold()
                .padding(15)
                .accentColor(.black)
                .dynamicTypeSize(.xLarge)
            Form {
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("okay")
                
            }
            
        }
    }
    
    
}

struct PrivacyView: View {
    
    var body: some View {
        Form{
            Text("All user information is private.")
        }
    }
}

struct SupportView: View {
    var body: some View {
        Form {
            Section("Contact Us!") {
                Label(
                    title: { 
                        Text("eleosmanaging@gmail.com") .offset(x: -50) .font(.title2)},icon: { Image(systemName: "envelope")
                        .offset(x: 287) }
                )
            }
            
        }
        
        
    }
}



struct AboutEleosView: View {
    var body: some View {
        Form {
            Section("Eleos") {
                Section("Questions:"){
                    Text("The questions only show up when ur a new member of the app. we evaluated ur self tolerance level based on ur answers to the questions")
                }
                Section("To do list:"){
                    Text("The to do lists purpose is to help u organize ur schedule and chores a bit better by allowing u to add descriptions, priorities ur to dos, and add dead lines.")
                }
                Section("Drops:") {
                    Text("Drops are a form of reward points u receive each time u cross of a certain amount of ur to dosDrops will help u unlock certain plants and allow u to make these plants grow.")
                    
                }
                Section("Plants:"){
                    Text("The plants can be unlocked and grown by the drops u earn when completing tasks. They aim to improve ur responsibility level by keeping them alive!")
                }
                Section("Remember:"){
                    Text("Personal development is a journey, not a destination! :)")
                }
                
                
            }
            .multilineTextAlignment(.leading)
            
        }
        
    }
}


struct CreatorsView: View {
    var body: some View {
        Form {
            Section("About us") {
                
                Text("Hi! We are the creators of this app.     Our sole purpose is to help our app users develop personal skills,                        such as: self tolerance, discipline, self developement, responsibility, etc.        We put all our hard work on this application and we tried our best to  make it as perfect as possible.              We hope you like it!!                 Remember: Personal development is a journey, not a destination! :) ")
                
            }
            .multilineTextAlignment(.leading)
        }
        
    }
}








struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

