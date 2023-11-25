//
//  ContentView.swift
//  eleos_L
//
//  Created by TokaJaber on 21/08/2023.
//

import SwiftUI

//struct ContentView: View {
//    
//    
//    @State private var username = ""
//    @State private var password = ""
//    @State private var wrongUsername: Float = 0
//    @State private var wrongPassword: Float  = 0
////    @State private var showingLoginScreen = false
//    
//    var body: some View {
//        NavigationView {
////            ZStack {
////                Color.purple
////                    .opacity(0.60)
////                    
////                    .ignoresSafeArea()
////                Circle()
////                    .scale(1.7)
////                    .foregroundColor(.white.opacity(0.15))
////                Circle()
////                    .scale(1.35)
////                    .foregroundColor(.white)
////
////                VStack {
////                    Text("Login")
////                        .font(.largeTitle)
////                        .bold()
////                        .padding()
////                    
////                    TextField("Username", text: $username)
////                        .padding()
////                        .frame(width: 300, height: 50)
////                        .background(Color.black.opacity(0.05))
////                        .cornerRadius(10)
////                        .border(.red, width: CGFloat(wrongUsername))
////                        
////                    
////                    SecureField("Password", text: $password)
////                        .padding()
////                        .frame(width: 300, height: 50)
////                        .background(Color.black.opacity(0.05))
////                        .cornerRadius(10)
////                        .border(.red, width: CGFloat(wrongPassword))
////                    
////                    NavigationLink(destination: QuestionMainView(), label: {
////                        Text("Log In ")
////                    })
////                        
////                        
////                    .foregroundColor(.white)
////                    .frame(width: 300, height: 50)
////                    .background(Color.blue)
////                    .cornerRadius(10)
////                    
//////                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
//////                        EmptyView()
////                        
////                        
//////?????
////                    NavigationLink(destination: SignUpView(), label: {
////                        Text("Don't have an account ? ")
////                    })
////                    
////                        .padding()
////
////                    NavigationLink(destination: QuestionMainView(), label: {
////                        Text("Skip ")
////                    })
////                               .padding(5)
////                                        }
////
////                                           }
//                    
//                    
//                                            
//                }.navigationBarHidden(true)
//
//            }
//    
//        }
//    
//    
////    func authenticateUser(username: String, password: String) {
////        if username.lowercased() == "toka2023" {
////            wrongUsername = 0
////            if password.lowercased() == "123" {
////                wrongPassword = 0
////                showingLoginScreen = true
////            } else {
////                wrongPassword = 2
////            }
////        } else {
////            wrongUsername = 2
////        }
////    }
////}
//
//struct SignUpView: View {
//    
//    
//    @State private var username = ""
//    @State private var password = ""
//    @State private var wrongUsername: Float = 0
//    @State private var wrongPassword: Float  = 0
////    @State private var showingSignupScreen = false
//    
//    
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color.purple
//                    .opacity(0.60)
//                    .ignoresSafeArea()
//                Circle()
//                    .scale(1.7)
//                    .foregroundColor(.white.opacity(0.15))
//                Circle()
//                    .scale(1.35)
//                    .foregroundColor(.white)
//                
//                VStack {
//                    Text("Sign up")
//                        .font(.largeTitle)
//                        .bold()
//                        .padding()
//                    
//                    TextField("Username", text: $username)
//                        .padding()
//                        .frame(width: 300, height: 50)
//                        .background(Color.black.opacity(0.05))
//                        .cornerRadius(10)
//                        .border(.red, width: CGFloat(wrongUsername))
//                    
//                    SecureField("Password", text: $password)
//                        .padding()
//                        .frame(width: 300, height: 50)
//                        .background(Color.black.opacity(0.05))
//                        .cornerRadius(10)
//                        .border(.red, width: CGFloat(wrongPassword))
//                    
//                    
//                    
//                    NavigationLink(destination: QuestionMainView(), label: {
//                        Text("Sign up ")
//                     })
//                        .foregroundColor(.white)
//                        .frame(width: 300, height: 50)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                    
//                    NavigationLink(destination: ContentView(), label: {
//                        Text("Already have an account ? ")
//                    })
//                    
//                    .padding()
//                    NavigationLink(destination: QuestionMainView(), label: {
//                        Text("Skip ")
//                    })
//                                       .padding(5)
//                    }
//                  
//                    
//                   
//
//                    
//                    
//                }
//                
//            }.navigationBarHidden(true)
//        }
//    }
//
//struct QuestionMainView: View {
//    @State var score = 0
//    @AppStorage("finishedQuestions") private var getFinishedQuestions = false
//    @State private var finishedQuestions = UserDefaults.standard.bool(forKey: "finishedQuestions")
//    
//    var body: some View {
//        
//        if getFinishedQuestions {
//            TabsView()
//        }
//        else {
//            content
//        }
//    }
//    
//    var content: some View {
//        NavigationView{
//            VStack(spacing: 20){
//                Image("startpic")
//                    .resizable()
//                    .scaledToFit()
//                Text("we are gonnna go on a little journey answer truthfully, ready? ")
//                    .font(.body)
//                    .bold()
//                    .padding(15)
//                    .accentColor(.black)
//                    .dynamicTypeSize(.xLarge)
//                    .allowsTightening(true)
//                    .autocapitalization(.allCharacters)
//                    .multilineTextAlignment(.center)
//                
//                NavigationLink(destination: Quiz1()) {
//                    Text("Ready !")
//                    
//                }
//            }
//         
//        }.navigationBarHidden(true)
//    }
//}
//    
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
