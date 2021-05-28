import os
import term
import time
import x.json2 as json

pub fn text_read(readout string, speed int, end_delay int) {
	for char in readout.split('') {
		print(char)
		time.sleep(speed * time.millisecond)
	}
	time.sleep(end_delay * time.millisecond)
}

fn main() {
	term.set_terminal_title("TBG Alpha v0.1")
	for {
	term.clear()
	name := os.input_opt("╔ What's your name?\n╬\n╚=➤ ")?
	mut game_data := map[string]json.Any{}
	game_data['name'] = name
	text_read("The user's name is \"${game_data['name']}\".", 50, 2000)
}
}