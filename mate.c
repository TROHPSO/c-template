#define MATE_IMPLEMENTATION
#include "mate.h"

int main() {
    StartBuild();
    {
        Executable executable = CreateExecutable((ExecutableOptions){
            .output = "main",
            .warnings = FLAG_WARNINGS,
            .flags = "-Wall -g",
        });

        AddFile(executable, "./src/main.c");
        InstallExecutable(executable);
        RunCommand(executable.outputPath);
    }
    EndBuild();
}