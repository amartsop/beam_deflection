#ifndef CAMERA_H
#define CAMERA_H


#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>
#include <iostream>
#include <SDL2/SDL.h>

//Doesn't update when we resize the window

class Camera
{
    public:
        Camera(const glm::vec3 &pos, float fov, float aspect, float zNear, 
            float zFar);

        // Setters
        void setCameraPosition(glm::vec3 position);
        void setCameraOrientation(glm::vec3 forwardFrame, 
            glm::vec3 upwardFrame);

        // Camera update
        void update(SDL_Event &events);


        glm::mat4 getViewProjection(void);

        ~Camera();


    private:

        glm::mat4 m_perspective;
        glm::vec3 m_initialPosition;
        glm::vec3 m_position;
        glm::vec3 m_forward;
        glm::vec3 m_up;
};

#endif