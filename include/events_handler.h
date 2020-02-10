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
        bool getRightArrowStatus() { return m_rightArrow; }
        bool getLeftArrrowStatus() { return m_leftArrow; }


        ~EventsHandler(void) {};

    private:
        
        void keyDownEvents(SDL_Event &event);


        bool m_quit = false;
        bool m_escapeDown = false;
        bool m_rightArrow = false;
        bool m_leftArrow = false;

};

#endif