//
//  ContentView.swift
//  GuessApp
//
//  Created by Manuel Santos Souza on 03/05/25.
//

import SwiftUI

struct ContentView: View {
	var score = 0

	var body: some View {
		VStack {
			HStack {
				Spacer()
				Text("Score \(score)")
			}
			Button(
				action: {
					print("dog")
				},
				label: {
					Image("dog")
						.frame(maxWidth: .infinity)
						.frame(height: 50)
						.background(Color.blue)
						.clipShape(RoundedRectangle(cornerRadius: 6))
				}
			)
			Button(
				action: {
					print("cat")
				},
				label: {
					Image("cat")
						.frame(maxWidth: .infinity)
						.frame(height: 50)
						.background(Color.blue)
						.clipShape(RoundedRectangle(cornerRadius: 6))
				}
			)
			Button(
				action: {
					print("fox")
				},
				label: {
					Image("fox")
						.frame(maxWidth: .infinity)
						.frame(height: 50)
						.background(Color.blue)
						.clipShape(RoundedRectangle(cornerRadius: 6))
				}
			)
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
