//
//  SupportOptions.swift
//  SupportDocsExamplesSwiftUI
//
//  Created by H. Kamran on 11/11/20.
//

import SwiftUI
import SupportDocs

struct SupportOptionsExample: View {
    let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json")!
    let options = SupportOptions(
        categories: [
            .init(tags: ["boba"], displayName: "Boba is awesome!")
        ],
        navigationBar: .init(
            title: "Support",
            titleColor: UIColor.white,
            dismissButtonTitle: "Done",
            buttonTintColor: UIColor.white,
            backgroundColor: UIColor(red: 6 / 255, green: 151 / 255, blue: 0 / 255, alpha: 1)
        ),
        progressBar: .init(
            foregroundColor: UIColor.green,
            backgroundColor: UIColor.systemBackground
        ),
        listStyle: .insetGroupedListStyle,
        other: .init(
            activityIndicatorStyle: UIActivityIndicatorView.Style.large,
            welcomeView: AnyView(WelcomeView()),
            footer: AnyView(Footer()),
            error404: URL(string: "https://google.com")!
        )
    )

    @State var supportDocsPresented: Bool = false
    var body: some View {
        VStack {
            Button("Present SupportDocs from SwiftUI!") { supportDocsPresented = true }
                .sheet(isPresented: $supportDocsPresented, content: {
                    SupportDocsView(dataSource: dataSource, options: options, isPresented: $supportDocsPresented)
                })
            Text("SwiftUIExampleView.swift")
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}
