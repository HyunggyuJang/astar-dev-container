# Windows setup

## Table of Contents

1.  [Prerequisite](#orgb9e9503)
2.  [How to run devcontainer](#org1dfd67a)



<a id="orgb9e9503"></a>

## Prerequisite

Windows version 2004 ↑ if 10, NP for 11 (for WSL 2)  

-   Docker Desktop with WSL2 backend
-   WSL2 <https://devblogs.microsoft.com/commandline/install-wsl-with-a-single-command-now-available-in-windows-10-version-2004-and-higher/>  
    
        wsl --install
    
    Then seems like have to start WSL from Ubuntu application.
-   vscode  
    -   [WSL extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
-  <details> <summary><del>git configuration</del> → is needed? Seems not.</summary>
    In WSL  
    
        git config --global user.name "Your name"
        git config --global user.email your_email@host.com
   </details>


<a id="org1dfd67a"></a>

## How to run devcontainer

    git clone https://github.com/HyunggyuJang/astar-dev-container astar-dev
    code astar-dev


