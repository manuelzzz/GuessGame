//
//  GameButton.swift
//  GuessApp
//
//  Created by Manuel Santos Souza on 28/10/25.
//

import SwiftUI

struct GameButton: View {
	var image: String
	var action: () -> Void
	var buttonColor: Color = .blue

	var body: some View {
		Button(action: action) {
			Button(
				action: action,
				label: {
					Image(image)
						.frame(maxWidth: .infinity)
						.frame(height: 50)
						.background(buttonColor)
						.clipShape(RoundedRectangle(cornerRadius: 6))
				}
			)
		}
	}
}

#Preview {
	GameButton(
		image: "cat",
		action: {
			return
		},
		buttonColor: .red
	)
}
