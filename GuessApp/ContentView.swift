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
	@State var gameTitle = "?"
	@State var gameSubtitle = ""
	@State var gameMessageColor = Color.black

	func verifyAnswer(_ answer: Int) {
		if correctAnswer == answer {
			score += 1
			gameTitle = "Success!"
			gameMessageColor = .green
		} else if score != 0 {
			score -= 1
			gameTitle = "Failed!"
			gameMessageColor = .red
		}

		switch correctAnswer {
		case 0:
			gameSubtitle = "The correct answer is Dog."
		case 1:
			gameSubtitle = "The correct answer is Cat."
		case 2:
			gameSubtitle = "The correct answer is Fox."
		default:
			gameSubtitle = ""
		}

		randomizeCorrectAnswer()
	}

	func randomizeCorrectAnswer() {
		let randomCorrectAnswer = Int.random(in: 0..<3)
		correctAnswer = randomCorrectAnswer
	}

	var body: some View {
		VStack {
			VStack {
				Text(gameTitle)
					.font(.system(size: 40, weight: .semibold))
					.foregroundColor(gameMessageColor)
				Text(gameSubtitle)
					.font(.system(size: 20))
			}
			.padding(.bottom, 200)
			.padding(.top, 200)
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
