//
//  RegistrationView.swift.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 06.11.2021.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var date = Date()

    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 200, height: 200)

            Text("Registration")
                .font(.largeTitle)

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .font(.title)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .font(.title)

            DatePicker(
                "Date of birth",
                selection: $date,
                displayedComponents: [.date]
            ).font(.title)
        }
        .padding()
    }
}

struct RegistrationViewPreviews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
