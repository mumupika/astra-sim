#!/usr/bin/sh

git rm --cached extern/graph_frontend/chakra
git rm --cached extern/network_backend/analytical
git rm --cached extern/remote_memory_backend/analytical
git rm --cached extern/helper/fmt
git rm --cached extern/helper/spdlog
git rm --cached extern/network_backend/ns-3
git rm --cached extern/network_backend/csg-htsim

git config -f .gitmodules --remove-section submodule.extern/graph_frontend/chakra
git config -f .gitmodules --remove-section submodule.extern/network_backend/analytical
git config -f .gitmodules --remove-section submodule.extern/remote_memory_backend/analytical
git config -f .gitmodules --remove-section submodule.extern/helper/fmt
git config -f .gitmodules --remove-section submodule.extern/helper/spdlog
git config -f .gitmodules --remove-section submodule.extern/network_backend/ns-3
git config -f .gitmodules --remove-section submodule.extern/network_backend/csg-htsim

git config --remove-section submodule.extern/graph_frontend/chakra
git config --remove-section submodule.extern/network_backend/analytical
git config --remove-section submodule.extern/remote_memory_backend/analytical
git config --remove-section submodule.extern/helper/fmt
git config --remove-section submodule.extern/helper/spdlog
git config --remove-section submodule.extern/network_backend/ns-3
git config --remove-section submodule.extern/network_backend/csg-htsim

rm -rf .git/modules/graph_frontend/chakra
rm -rf .git/modules/network_backend/analytical
rm -rf .git/modules/remote_memory_backend/analytical
rm -rf .git/modules/helper/fmt
rm -rf .git/modules/helper/spdlog
rm -rf .git/modules/network_backend/ns-3
rm -rf .git/modules/network_backend/csg-htsim

rm -rf extern/graph_frontend/chakra/.git
rm -rf extern/network_backend/analytical/.git
rm -rf extern/remote_memory_backend/analytical/.git
rm -rf extern/helper/fmt/.git
rm -rf extern/helper/spdlog/.git
rm -rf extern/network_backend/ns-3/.git
rm -rf extern/network_backend/csg-htsim/.git
