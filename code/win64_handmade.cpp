#include <windows.h>
#include <winuser.h>

void foo(void)
{    
    OutputDebugStringA("Hello World!");
}

int WINAPI WinMain(
    HINSTANCE hInstance, 
    HINSTANCE hPrevInstance, 
    LPSTR pCmdLine, 
    int nCmdShow) 
{
    // Register window class
    // Create the main window
    // Show the windows
    // Run the message loop

    MessageBox(0, "Hello World!", "handmade villain caption", MB_OK|MB_ICONINFORMATION);

    return 0;
}