# Mac & Linux setup
# Table of Contents

1.  [Prerequisite](#orgf41dad9)
2.  [Activate devcontainer](#org4140004)



<a id="orgf41dad9"></a>

# Prerequisite

-   [Docker Desktop](https://www.docker.com/products/docker-desktop/)
-   [Visual Studio Code](https://code.visualstudio.com/)


<a id="org4140004"></a>

# Activate devcontainer
In your terminal, execute the following snippet:
```sh
git clone https://github.com/HyunggyuJang/astar-dev-container astar-dev
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" code astar-dev
```

Then, there should be a popup in the lower-right offering you to open the container. Click &ldquo;Reopen in Container&rdquo;:
![image](https://user-images.githubusercontent.com/27727031/224890956-705d3c2f-da10-440f-93cd-4292d61d4b27.png)

Done! Enjoy your development :)  


