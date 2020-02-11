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
        bool getKeyStatusW() { return m_wDown; }
        bool getKeyStatusS() { return m_sDown; }
        bool getKeyStatusA() { return m_aDown; }
        bool getKeyStatusD() { return m_dDown; }
        bool getKeyStatusUpArrow() { return m_upArrowDown; }
        bool getKeyStatusDownArrow() { return m_downArrowDown; }
        bool getKeyStatusLeftArrow() { return m_leftArrowDown; }
        bool getKeyStatusRightArrow() { return m_rightArrowDown; }
        
        ~EventsHandler(void) {};


    private:
        
        void keyDownEvents(SDL_Event &event);
        void keyUpEvents(SDL_Event &event);

        bool m_quit = false;
        bool m_escapeDown = false;
        bool m_wDown = false;
        bool m_sDown = false;
        bool m_aDown = false;
        bool m_dDown = false;
        bool m_upArrowDown = false;
        bool m_downArrowDown = false;
        bool m_leftArrowDown = false;
        bool m_rightArrowDown = false;
};

#endif