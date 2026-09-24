#define MATE_IMPLEMENTATION
#include "mate.h"

int main() {
    StartBuild();
    {
        Executable executable = CreateExecutable((ExecutableOptions){
            .output = "main",
            .warnings = FLAG_WARNINGS,
            .debug = FLAG_DEBUG,
            .optimization = FLAG_OPTIMIZATION
            // .flags = "-Wall -g",
        });

        AddFile(executable, "./src/main.c");
        InstallExecutable(executable);
        RunCommand(executable.outputPath);
    }
    EndBuild();
}