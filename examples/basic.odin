package main

import ft ".."
import "core:fmt"

FPS :: 30

main :: proc() {
	frametimer := ft.create(nil)
	defer ft.destroy(frametimer)

	ft.lock_rate(frametimer, FPS)

	is_running := true

	for is_running {
		dt := ft.update(frametimer)

		fmt.println(dt)
	}

}
