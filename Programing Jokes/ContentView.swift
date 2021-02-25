//
//  ContentView.swift
//  Programing Jokes
//
//  Created by Student on 2/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView{
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline),
                    label: {
                        Text(joke.setup)
                })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
                    getJokes()
                })

    }
    func getJokes() {
        let apiKey = "?rapidapi-key= 42b30bc2c7mshd4f8918bdf9e17ep1df390jsn6fab5580756c"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
