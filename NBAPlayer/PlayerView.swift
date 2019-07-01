//
//  PlayerView
//  NBAPlayer
//
//  Created by Alper Oezaydin on 18.06.19.
//  Copyright © 2019 Alper Oezaydin. All rights reserved.
//

import SwiftUI

struct PlayerView : View {
	
	var player: Player
	
    var body: some View {

		VStack(alignment: .center){
			Image(player.team.imageName)
				.resizable()
				.frame(height: 250)
			Image(player.imageName)
				.clipShape(Circle())
				.background(Circle())
				.foregroundColor(.white)
				.overlay(Circle()
					.stroke(Color.white, lineWidth: 4))
					.shadow(radius: 15)
				.offset(x: 0, y: -90)
				.padding(.bottom, -90)
			Text(player.name)
				.font(.system(size: 40))
				.fontWeight(.bold)
			
			StatText(statName: "Age", statValue: String(player.age))
			StatText(statName: "Height", statValue: String(player.height))
			StatText(statName: "Weight", statValue: String(player.weight))

			
			Spacer()
			
		}.edgesIgnoringSafeArea(.top)

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[0])
    }
}
#endif
