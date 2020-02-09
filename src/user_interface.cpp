#include "../include/user_interface.h"


UserInterface::UserInterface(Display *display)
{
    // Get the display pointer
    m_display = display;

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    //io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();

    // Setup Platform/Renderer bindings
    ImGui_ImplSDL2_InitForOpenGL((*display).getWindowHandle(), 
        (*display).getGlContextHandle());
    
    const char* glsl_version = "#version 130";
    ImGui_ImplOpenGL3_Init(glsl_version); 
}

void UserInterface::simpleWindow(void)
{
    static float f = 0.0f;
    static int counter = 0;

    ImGui::Begin("Hello, world!");                          // Create a window called "Hello, world!" and append into it.

    ImGui::Text("This is some useful text.");               // Display some text (you can use a format strings too)

    ImGui::SliderFloat("float", &f, 0.0f, 1.0f);            // Edit 1 float using a slider from 0.0f to 1.0f

    if (ImGui::Button("Button"))                            // Buttons return true when clicked (most widgets return true when edited/activated)
        counter++;
    ImGui::SameLine();
    ImGui::Text("counter = %d", counter);

    ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
    ImGui::End();
}



void UserInterface::update()
{

    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplSDL2_NewFrame((*m_display).getWindowHandle());
    ImGui::NewFrame();
    
    // Draw a window
    simpleWindow();

    // Rendering
    ImGui::Render();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    glViewport(0, 0, (int)io.DisplaySize.x, (int)io.DisplaySize.y);
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

}

UserInterface::~UserInterface()
{
    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();
}