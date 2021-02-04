// g++ -framework SDL2 test.cpp; ./a.out
// from https://stackoverflow.com/questions/34424816/sdl-window-does-not-show

#include <iostream>
#include <SDL2/SDL.h>

int main(int argc, const char * argv[]) {

    SDL_Init(SDL_INIT_VIDEO);

    SDL_Window *_window;
    _window = SDL_CreateWindow("Game Engine", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 700, 500, SDL_WINDOW_RESIZABLE);

    SDL_Event e;
    bool quit = false;
    while (!quit){
        while (SDL_PollEvent(&e)){
            if (e.type == SDL_QUIT){
                quit = true;
            }
            if (e.type == SDL_KEYDOWN){
                quit = true;
            }
            if (e.type == SDL_MOUSEBUTTONDOWN){
                quit = true;
            }
        }
    }

    SDL_DestroyWindow(_window);
    SDL_Quit();

    return 0;

}
