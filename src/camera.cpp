#include "../include/camera.h"


Camera::Camera(const glm::vec3 &pos, float fov, float aspect, float zNear,
    float zFar)
{
    m_perspective = glm::perspective(fov, aspect, zNear, zFar);
    m_position = pos; m_initialPosition = m_position;
    memset(m_keyboard, 0, keysNum);

    //Hardcoded (Should change/ can be adaptive) (orientation of the camera)
    m_forward = glm::vec3(0, 0, 1);
    m_up = glm::vec3(0, 1, 0);
}

void Camera::setCameraPosition(glm::vec3 position)
{
    m_position = m_initialPosition + position;
}

void Camera::setCameraOrientation(glm::vec3 forwardFrame, glm::vec3 upwardFrame)
{
    m_forward = forwardFrame; m_up = upwardFrame;
}

void Camera::cameraMotion(void)
{
    m_position.x += ((float)m_keyboard[aKeyNum] * (m_cameraSideScale) + 
        (float)m_keyboard[dKeyNum] * (-m_cameraSideScale));
    
    m_position.z += ((float)m_keyboard[wKeyNum] * (m_cameraForwardScale) 
        + (float)m_keyboard[sKeyNum] * (-m_cameraForwardScale));

    // m_position.x = (float)m_mouse.mouseX / (float)Display::width;
}


void Camera::keyboardMapping(EventsHandler &events)
{
    m_keyboard[wKeyNum] = events.getKeyStatusW();
    m_keyboard[sKeyNum] = events.getKeyStatusS();
    m_keyboard[aKeyNum] = events.getKeyStatusA();
    m_keyboard[dKeyNum] = events.getKeyStatusD();
}

void Camera::mouseMapping(EventsHandler &events)
{
    m_mouse = events.getMouseCoordinates();
}

void Camera::update(EventsHandler &events)
{
    keyboardMapping(events);
    mouseMapping(events);
    cameraMotion();
}

glm::mat4 Camera::getViewProjection(void)
{
    return m_perspective *  glm::lookAt(m_position, m_position + 
        m_forward, m_up);
}

Camera::~Camera()
{

}