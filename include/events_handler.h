#ifndef EVENTS_HANDLER_H
#define EVENTS_HANDLER_H

#include <SDL2/SDL.h>
#include <iostream>

class EventsHandler
{
    public:
        EventsHandler(void);

        void pollEvents(void);
        
        struct mouseCoordinates{
            int mouseX;
            int mouseY; };

        //Getters
        bool getQuitStatus() { return m_quit; }
        bool getEscapeStatus() { return m_escapeDown; }
        bool getKeyStatusW() { return m_wDown; }
        bool getKeyStatusS() { return m_sDown; }
        bool getKeyStatusA() { return m_aDown; }
        bool getKeyStatusD() { return m_dDown; }
        
        mouseCoordinates getMouseCoordinates() { return m_mouseCoordinates; }

        ~EventsHandler(void) {};


    private:
        
        void keyDownEvents(SDL_Event &event);
        void keyUpEvents(SDL_Event &event);
        void mouseMotionEvents(SDL_Event &event);

        bool m_quit = false;
        bool m_escapeDown = false;
        bool m_wDown = false;
        bool m_sDown = false;
        bool m_aDown = false;
        bool m_dDown = false;
        
        mouseCoordinates m_mouseCoordinates {0, 0};

        


};

#endif