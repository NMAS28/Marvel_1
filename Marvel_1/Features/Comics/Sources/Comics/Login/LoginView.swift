//
//  File.swift
//  
//
//  Created by NMAS Amaral on 07/03/23.
//

import Kingfisher
import SwiftUI

public struct LoginView<ViewModel: LoginModelling>: View {
    @ObservedObject var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    public var borderColor: Color = .black
    
    public var body: some View {
        ZStack(alignment: .top) {
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text(L10n.Splash.title)
                        .font(Font.custom("Bangers-Regular", size: 50))
                        .foregroundColor(.primary)
                }
                .padding()
                .padding(.top, 70)

                Spacer()
                
                LoginTextField(email: $viewModel.loginModel.email, borderColor: .black)
                    .padding()
                PasswordTextField(password: $viewModel.loginModel.password, borderColor: .black)
                    .padding()
                Button(action: {
                    viewModel.createAccount()
                    
                }) {
                    Text(L10n.Login.Label.title)
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                Button {
                    viewModel.loginAuthentication(email: viewModel.loginModel.email, password: viewModel.loginModel.password)
                } label: {
                    Text(L10n.Login.Button.title)
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                        )
                        .padding(.horizontal)
                        .padding(.bottom, 30)
                }
                Spacer()
                .alert(isPresented: $viewModel.formInvalid) {
                    Alert(title: Text(viewModel.alertText), dismissButton: .default(Text("OK")))
                }
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}
