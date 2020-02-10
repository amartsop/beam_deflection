#include "../include/events_handler.h"


EventsHandler::EventsHandler()
{

}


void EventsHandler::pollEvents(void)
{
    SDL_Event event;

	if (SDL_PollEvent(&event)){

        switch (event.type)
        {
            case SDL_QUIT:
                m_quit = true;
                break;
            case SDL_KEYDOWN:
                keyDownEvents(event);
            default:
                break;
        }        
	} 
}

void EventsHandler::keyDownEvents(SDL_Event &event)
{

    switch (event.key.keysym.sym)
    {
        case SDLK_ESCAPE:
            m_escapeDown = true;
            break;
        case SDLK_RIGHT:
            m_rightArrow = (event.key.keysym.sym == SDLK_RIGHT);
            break;
        case SDLK_LEFT:
            m_leftArrow = true;
            break;
        default:
            break;
    }
}

