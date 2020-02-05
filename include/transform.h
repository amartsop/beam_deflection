#ifndef TRANSFORM_H
#define TRANSFORM_H

#include <iostream>

#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>

class Transform
{

    public:
        Transform(const glm::vec3& pos = glm::vec3(), 
            const glm::vec3& rot = glm::vec3(), 
            const glm::vec3& scale = glm::vec3(1.0, 1.0, 1.0));

            inline glm::mat4 GetModel() const {

                glm::mat4 posMatrix = glm::translate(m_pos);
                glm::mat4 rotxMatrix = glm::rotate(m_rot.x, glm::vec3(1, 0, 0));
                glm::mat4 rotyMatrix = glm::rotate(m_rot.y, glm::vec3(0, 1, 0));
                glm::mat4 rotzMatrix = glm::rotate(m_rot.z, glm::vec3(0, 0, 1));
                glm::mat4 scaleMatrix = glm::scale(m_scale);

                glm::mat4 rotMatrix  = rotzMatrix * rotyMatrix * rotxMatrix;

                return posMatrix * rotMatrix * scaleMatrix;
            }

        //Getters
        inline glm::vec3 getPos() { return m_pos; }
        inline glm::vec3 GetRot() { return m_rot; }
        inline glm::vec3 GetScale() { return m_scale; }

        //Setters
        inline void SetPos(glm::vec3 pos) { m_pos = pos; }
        inline void SetRot(glm::vec3 rot) { m_rot = rot; }
        inline void SetScale(glm::vec3 scale) { m_scale = scale; }

        virtual ~Transform();

    private:

    glm::vec3 m_pos;
    glm::vec3 m_rot;
    glm::vec3 m_scale;

};

#endif