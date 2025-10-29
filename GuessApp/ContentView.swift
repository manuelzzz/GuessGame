//
//  ContentView.swift
//  GuessApp
//
//  Created by Manuel Santos Souza on 03/05/25.
//

import SwiftUI

struct ContentView: View {
	@State var score = 0
	@State var correctAnswer = 0

	func verifyAnswer(_ answer: Int) {
		if correctAnswer == answer {
			score += 1
		} else if score != 0 {
			score -= 1
		}

		randomizeCorrectAnswer()
	}

	func randomizeCorrectAnswer() {
		let randomCorrectAnswer = Int.random(in: 0..<3)
		correctAnswer = randomCorrectAnswer
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
			Button(
				action: {
					verifyAnswer(0)
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
					verifyAnswer(1)
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
					verifyAnswer(2)
				},
				label: {
					Image("fox")
						.frame(maxWidth: .infinity)
						.frame(height: 50)
						.background(Color.blue)
						.clipShape(RoundedRectangle(cornerRadius: 6))
				}
			)
			Spacer()
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
