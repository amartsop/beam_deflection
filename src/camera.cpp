#include "../include/camera.h"


Camera::Camera(const glm::vec3 &pos, float fov, float aspect, float zNear,
    float zFar)
{
    m_perspective = glm::perspective(fov, aspect, zNear, zFar);
    m_position = pos; m_initialPosition = m_position;

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

glm::mat4 Camera::getViewProjection(void)
{
    return m_perspective *  glm::lookAt(m_position, m_position + 
        m_forward, m_up);
}

Camera::~Camera()
{

}