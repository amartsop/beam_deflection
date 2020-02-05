#ifndef USER_INTERFACE_H
#define USER_INTERFACE_H


// #include <stdio.h>
#include <SDL2/SDL.h>
#include <GL/glew.h>

#include "imgui.h"
#include "imgui_impl_sdl.h"
#include "imgui_impl_opengl3.h"
#include "imgui_impl_sdl.h"
#include "display.h"

class UserInterface
{
    public:
        UserInterface(Display *display);
        
        void update(void);

        ~UserInterface();

    private:
        Display *m_display = nullptr;      

        void simpleWindow(void);
};



#endif