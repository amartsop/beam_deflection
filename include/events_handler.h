#ifndef EVENTS_HANDLER_H
#define EVENTS_HANDLER_H

#include <SDL2/SDL.h>
#include <iostream>

class EventsHandler
{
    public:
        EventsHandler(void);

        void pollEvents(void);
        

        //Getters
        bool getQuitStatus() { return m_quit; }
        bool getEscapeStatus() { return m_escapeDown; }
        bool getWKeyStatus() { return m_wDown; }
        bool getSKeyStatus() { return m_sDown; }


        ~EventsHandler(void) {};

    private:
        
        void keyDownEvents(SDL_Event &event);
        void keyUpEvents(SDL_Event &event);

        bool m_quit = false;
        bool m_escapeDown = false;
        bool m_wDown = false;
        bool m_sDown = false;

};

#endif