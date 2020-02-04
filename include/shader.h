#ifndef SHADER_H
#define SHADER_H

#include <string>
#include <GL/glew.h>
#include <glm/glm.hpp>

#include "transform.h"
#include "camera.h"

class Shader
{
    public:
        Shader(const std::string& fileName);
        
        void Bind(); 
        void Update(const Transform& transform, const Camera& camera);

        virtual ~Shader();

    protected:

    private:
        
        //Emumeations of shaders
        enum{
            VERTEX_SHADER,
            FRAGMENT_SHADER,
            NUM_SHADERS
        };

        //Enumeration of uniform variables
        enum{
            TRANSFORM_U,
            NUM_UNIFORMS 
        };
        
        GLuint m_program;
        GLuint m_shaders[NUM_SHADERS];
        GLuint m_unirform[NUM_UNIFORMS];
};


#endif 