#ifndef CAMERA_H
#define CAMERA_H


#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtx/string_cast.hpp>
#include <iostream>
#include "events_handler.h"
#include "display.h"
#include "signal_processing.hpp"

//Doesn't update when we resize the window

class Camera
{
    public:
        //Camera constructor
        Camera(const glm::vec3 &pos, float fov, float aspect, float zNear, 
            float zFar);

        // Setters
        void setCameraPosition(glm::vec3 position);
        void setCameraOrientation(glm::vec3 forwardFrame, 
            glm::vec3 upwardFrame);

        // Camera update
        void update(EventsHandler &events);

        // Projections
        glm::mat4 getViewProjection(void);

        ~Camera();


    private:

        void cameraMotion(void);

        void keyboardMapping(EventsHandler &events);
        void mouseMapping(EventsHandler &events);

        const float m_cameraForwardScale = 0.1;
        const float m_cameraSideScale = 0.1;
        
        const glm::vec3 forwardCameraAxis = glm::vec3(0, 0, 1);
        const glm::vec3 upwardCameraAxis = glm::vec3(0, 1, 0);

        enum {
            wKeyNum,
            sKeyNum,
            aKeyNum,
            dKeyNum,
            keysNum
        };

        bool m_keyboard[keysNum];
        EventsHandler::mouseCoordinates m_mouse;
        

        glm::mat4 m_perspective;
        glm::vec3 m_initialPosition;
        glm::vec3 m_position;
        glm::vec3 m_forward;
        glm::vec3 m_up;
};

#endif