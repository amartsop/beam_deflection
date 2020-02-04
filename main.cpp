#include <iostream>
#include <experimental/filesystem>
#include <GL/glew.h>

#include "./include/display.h"
#include "./include/shader.h"
#include "./include/mesh.h"
#include "./include/texture.h"
#include "./include/transform.h"
#include "./include/camera.h"

#include <glm/ext.hpp>

int a = 5;

#define WIDTH 800
#define HEIGHT 600

#define BACKROUND_RED 0.0f
#define BACKGROUND_GREEN 0.15f 
#define BACKGROUND_BLUE 0.3f 
#define BACKGROUND_TRANSPARENCY 1.0f 

int main(void){

    Display display(WIDTH, HEIGHT, "Graphics 4");

    Vertex vertices[]= {Vertex(glm::vec3(-0.6,-0.5, 0), glm::vec2(0.0, 0.0)),
                        Vertex(glm::vec3(0, 0.5, 0), glm::vec2(0.5, 1.0)),
                        Vertex(glm::vec3(0.5, -0.5, 0), glm::vec2(1.0, 0.0)) };

    unsigned int indices[] = {0, 1, 2};

    Mesh mesh(vertices, sizeof(vertices) / sizeof(vertices[0]), indices, 
        sizeof(indices) / sizeof(indices[0]));

    Mesh mesh2("./share/monkey3.obj");
    Shader shader("./share/basicShader");
    Texture texture("./share/grate_g.png");
    Camera camera(glm::vec3(0, 0, -3), 70.0f, (float)WIDTH / (float)HEIGHT, 
        0.01f, 1000.0f);

    Transform transform;

    // Counter
    float counter = 0.0f;

    while (!display.IsClosed()){

        display.Clear(BACKROUND_RED, BACKGROUND_GREEN, BACKGROUND_BLUE, 
            BACKGROUND_TRANSPARENCY);
        

        glm::vec3 new_pos = glm::vec3( 0.0 * counter, 0.0 * counter, 1.0 * counter);
        glm::vec3 new_rot = glm::vec3(0.0 * counter, 0.0 * counter, 1.0 * counter);
        
        transform.SetPos(new_pos);
        transform.SetRot(new_rot);

        shader.Bind();
        shader.Update(transform, camera);
        texture.Bind(0);
        mesh2.Draw();

        display.Update();

        counter += 0.01f;
    }

    return 0;

}