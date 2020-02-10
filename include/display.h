#ifndef DISPLAY_H
#define DISPLAY_H


#include <SDL2/SDL.h>
#include <string>


class Display
{
    public:

        Display(int width, int height, const std::string& title);

        void clear(float r, float g, float b, float a);
        void update(SDL_Event &events);
        bool isClosed();

        // Getters
        SDL_Window* getWindowHandle(void) { return m_window; }
        SDL_GLContext* getGlContextHandle(void) { return &m_glContext; } 

        virtual ~Display();


    protected:

    private:

        bool closeDisplayCheck(SDL_Event &events);
        SDL_Window* m_window;
        SDL_GLContext m_glContext;
        bool m_isClosed;
};

#endif // DISPLAY_H
