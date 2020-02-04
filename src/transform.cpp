#include "../include/transform.h"

#include <iostream>
#include <glm/gtx/transform.hpp>
#include <glm/gtx/string_cast.hpp>


Transform::Transform(const glm::vec3& pos, const glm::vec3& rot, 
    const glm::vec3& scale)
{
    this->m_pos = pos;
    this->m_rot = rot;
    this->m_scale = scale;
}


Transform::~Transform()
{

}