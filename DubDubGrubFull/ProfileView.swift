//
//  ProfileView.swift
//  DubDubGrubFull
//
//  Created by Jahongir on 30/01/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firsName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    
                HStack(spacing: 16) {
                    ZStack{
                        AvatarView(size: 84)
                            
                        
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14,height: 14)
                            .foregroundColor(.white)
                            .offset(y: 28)
                    }
                    .padding(.leading, 12)
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firsName)
                            .font(.system(size: 32,weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32,weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $companyName)
                        
                    }
                    .padding(.trailing, 16)
                }
                
            }.padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count)")
                    .bold()
                    .font(.callout)
                    .foregroundColor(bio.count <= 100 ? .brandPrimary : .red)
                +
                Text(" Characters Remain")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.secondary,lineWidth: 1)
                    }
            }.padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width: 280,height: 44)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    
            }

        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
        
    }
}
