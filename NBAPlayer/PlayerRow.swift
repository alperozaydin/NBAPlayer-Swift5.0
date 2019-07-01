//
//  PlayerRow.swift
//  NBAPlayer
//
//  Created by Alper Oezaydin on 18.06.19.
//  Copyright © 2019 Alper Oezaydin. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
	
	var player : Player;
	
	var body: some View {
		HStack {
			Image(player.imageName)
				.resizable().scaledToFit()
				.clipShape(Circle())
				.background(Circle())
				.foregroundColor(player.team.color)
			Text(player.name).font(.largeTitle)
			Spacer()
		}
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
		PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))

    }
}
#endif
