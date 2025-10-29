//
//  ContentView.swift
//  GuessApp
//
//  Created by Manuel Santos Souza on 03/05/25.
//

import SwiftUI

struct ContentView: View {
	@State var score = 0
	var correctAnswer = 0

	func verifyAnswer(_ answer: Int) {
		if correctAnswer == answer {
			score += 1
			return
		}

		if score == 0 {
			return
		}

		score -= 1
			return
		}

		if score == 0 {
			return
		}

		score -= 1
	}

	var body: some View {
		VStack {
			Group {
				Text("?")
					.font(.system(size: 40, weight: .semibold))
			}
			.frame(height: 350)
			HStack {
				Spacer()
				Text("Score \(score)")
			}
			GameButton(
				image: "dog",
				action: {
					verifyAnswer(0)
				},
				buttonColor: .indigo
			)
			GameButton(
				image: "cat",
				action: {
					verifyAnswer(1)
				},
				buttonColor: .brown
			)
			GameButton(
				image: "fox",
				action: {
					verifyAnswer(2)
				},
				buttonColor: .cyan
			)
			Spacer()
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
