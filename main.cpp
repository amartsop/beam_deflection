#include <iostream>
#include <experimental/filesystem>
#include <GL/glew.h>
#include <SDL2/SDL.h>

#include "./include/display.h"
#include "./include/shader.h"
#include "./include/mesh.h"
#include "./include/texture.h"
#include "./include/transform.h"
#include "./include/camera.h"
#include "./include/user_interface.h"
#include "./include/events_handler.h"
#include <glm/ext.hpp>


#define WIDTH 800
#define HEIGHT 600

#define BACKROUND_RED 0.0f
#define BACKGROUND_GREEN 0.15f 
#define BACKGROUND_BLUE 0.3f 
#define BACKGROUND_TRANSPARENCY 1.0f 

int main(void){

    // // Events object 
    // EventsHandler events;

    // Display object
    Display display(WIDTH, HEIGHT, "Graphics 4");

    // User inteface (imgui & events)
    UserInterface interface(&display);

    // Geometry loading
    Vertex vertices[]= {Vertex(glm::vec3(-0.6,-0.5, 0), glm::vec2(0.0, 0.0)),
                        Vertex(glm::vec3(0, 0.5, 0), glm::vec2(0.5, 1.0)),
                        Vertex(glm::vec3(0.5, -0.5, 0), glm::vec2(1.0, 0.0)) };

    unsigned int indices[] = {0, 1, 2};

    Mesh mesh(vertices, sizeof(vertices) / sizeof(vertices[0]), indices, 
        sizeof(indices) / sizeof(indices[0]));

    Mesh mesh2("./share/monkey3.obj");

    // Shader object
    Shader shader("./share/basicShader");

    // Textures object 
    Texture texture("./share/grate_g.png");

    // Camera object
    Camera camera(glm::vec3(0, 0, -3), 70.0f, (float)WIDTH / (float)HEIGHT, 
        0.01f, 1000.0f);

    // Model transforms
    Transform transform;


    // Counter
    float counter = 0.0f;

    //SDL events handle
    SDL_Event events;

    while (!display.isClosed()){

        // Clear display
        display.clear(BACKROUND_RED, BACKGROUND_GREEN, BACKGROUND_BLUE, 
            BACKGROUND_TRANSPARENCY);

        // Move model        
        glm::vec3 new_pos = glm::vec3( 0.0 * counter, 0.0 * counter, 0.0 * counter);        
        glm::vec3 new_rot = glm::vec3(0.0, glm::radians(180.0), 0.0 * counter); 
        transform.SetPos(new_pos);
        transform.SetRot(new_rot);

        // // Move camera
        // glm::vec3 cameraForward = glm::vec3(0.0, 0, 1);
        // glm::vec3 cameraUpward = glm::vec3(0, 1, 0);
        // glm::vec3 cameraPosition = glm::vec3(0, 0, counter);
        // camera.setCameraOrientation(cameraForward, cameraUpward);
        // camera.setCameraPosition(cameraPosition);

        // Updates draw update
        shader.bind();
        shader.update(transform, camera);
        texture.bind(0);
        mesh2.Draw();

        // Interface update
        interface.update();

        // Camera update
        camera.update(events);

        // Display update
        display.update(events);

        // // Poll events
        // events.pollEvents();

        counter += 0.01f;
    }

    return 0;

}


