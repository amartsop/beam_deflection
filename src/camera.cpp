#include "../include/camera.h"


Camera::Camera(const glm::vec3 &pos, float fov, float aspect, float zNear,
    float zFar)
{
    m_perspective = glm::perspective(fov, aspect, zNear, zFar);
    m_position = pos;

    //Hardcoded (Should change/ can be adaptive) (orientation of the camera)
    m_forward = glm::vec3(0, 0, 1);
    m_up = glm::vec3(0, 1, 0);
}
