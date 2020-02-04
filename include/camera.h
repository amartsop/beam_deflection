#ifndef CAMERA_H
#define CAMERA_H


#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>


//Doesnt update when we resize the window

class Camera
{
    public:
        Camera(const glm::vec3 &pos, float fov, float aspect, float zNear, 
            float zFar);

        inline glm::mat4 GetViewProjection() const
        {
            return m_perspective *  glm::lookAt(m_position, m_position + 
                m_forward, m_up);
        }

    private:

        glm::mat4 m_perspective;
        glm::vec3 m_position;
        glm::vec3 m_forward;
        glm::vec3 m_up;
};

#endif