//
//  PlayerList.swift
//  NBAPlayer
//
//  Created by Alper Oezaydin on 21.06.19.
//  Copyright © 2019 Alper Oezaydin. All rights reserved.
//

import SwiftUI

struct PlayerList : View {
	var body: some View {
		NavigationView {
			
			List(players) {
				player in
				NavigationButton(destination: PlayerView(player: player)){
					PlayerRow(player: player)
					}.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
				}
				
		}
	}
}

#if DEBUG
struct PlayerList_Previews : PreviewProvider {
	static var previews: some View {
		PlayerList()
	}
}
#endif
