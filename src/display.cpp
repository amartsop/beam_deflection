#include "../include/display.h"
#include <iostream>
#include <stdio.h>
#include <GL/glew.h>

Display::Display(const std::string& title)
{
    SDL_Init(SDL_INIT_EVERYTHING);   //Change --> If you use SDL not only just for windows

    SDL_GL_SetAttribute(SDL_GL_RED_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_ALPHA_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_BUFFER_SIZE, 32);
    SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 16);
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
    SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);

    SDL_WindowFlags window_flags = (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);

    m_window = SDL_CreateWindow(title.c_str(), SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED, width, height, window_flags);
    m_glContext = SDL_GL_CreateContext(m_window);

    SDL_GL_MakeCurrent(m_window, m_glContext);
    SDL_GL_SetSwapInterval(1); // Enable vsync

    GLenum status = glewInit();

    if(status != GLEW_OK){
        std::cerr << "Glew failed to initialize!" << std::endl;
    }
    
    m_isClosed = false;

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
}

Display::~Display()
{
    SDL_GL_DeleteContext(m_glContext);
    SDL_DestroyWindow(m_window);
    SDL_Quit();
}

void Display::clear(float r, float g, float b, float a)
{
    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

bool Display::isClosed()
{
    return m_isClosed;
}

void Display::update(EventsHandler &events)
{
    SDL_GL_SwapWindow(m_window);
    m_isClosed =  (events.getQuitStatus() | events.getEscapeStatus()) ? (true) : (false);
}
