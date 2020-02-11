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
                break;
            case SDL_KEYUP:
                keyUpEvents(event);
                break;
            default:
                break;
        }        
	} 
}

void EventsHandler::keyDownEvents(SDL_Event &event)
{

    switch (event.key.keysym.sym)
    {
        case SDLK_ESCAPE: m_escapeDown = true; break;
        case SDLK_w: m_wDown = true; break;
        case SDLK_s: m_sDown = true; break;
        case SDLK_a: m_aDown = true; break;
        case SDLK_d: m_dDown = true; break;
        default: break;
    }
}

void EventsHandler::keyUpEvents(SDL_Event &event)

{
    switch (event.key.keysym.sym)
    {
        case SDLK_w: m_wDown = false; break;
        case SDLK_s: m_sDown = false; break;
        case SDLK_a: m_aDown = false; break;
        case SDLK_d: m_dDown = false; break;
        default: break;
    }
}

