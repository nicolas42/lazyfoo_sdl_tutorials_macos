CC = g++ -Iinclude -framework SDL2 -framework SDL2_image -framework SDL2_mixer -framework SDL2_net -framework SDL2_ttf


all:
	$(CC) 01_hello_SDL/01_hello_SDL.cpp -o 1 
	$(CC) 02_getting_an_image_on_the_screen/02_getting_an_image_on_the_screen.cpp -o 2 
	$(CC) 03_event_driven_programming/03_event_driven_programming.cpp -o 3 
	$(CC) 04_key_presses/04_key_presses.cpp -o 4 
	$(CC) 05_optimized_surface_loading_and_soft_stretching/05_optimized_surface_loading_and_soft_stretching.cpp -o 5 
	$(CC) 06_extension_libraries_and_loading_other_image_formats/06_extension_libraries_and_loading_other_image_formats.cpp -o 6 
	$(CC) 07_texture_loading_and_rendering/07_texture_loading_and_rendering.cpp -o 7 
	$(CC) 08_geometry_rendering/08_geometry_rendering.cpp -o 8 
	$(CC) 15_rotation_and_flipping/15_rotation_and_flipping.cpp -o 15 
	$(CC) 16_true_type_fonts/16_true_type_fonts.cpp -o 16 
	$(CC) 34_audio_recording/34_audio_recording.cpp -o 34 
	$(CC) 21_sound_effects_and_music/21_sound_effects_and_music.cpp -o 21 
	$(CC) _render_text/render_text.cpp -o render_text 
	$(CC) _play_mp3/play_mp3.cpp -o play_mp3 
	$(CC) _render_text_and_play_mp3/render_text_and_play_mp3.cpp -o render_text_and_play_mp3 

clean:
	rm 1 2 3 4 5 6 7 8 15 16 21 34 render_text_and_play_mp3 render_text play_mp3


