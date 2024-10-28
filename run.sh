export FAST_DEPLOY_HOME="${HOME}/.fast_deploy"
CWD="$(pwd)"
mkdir "${HOME}/.ssh"
touch "${HOME}/.ssh/known_hosts"
mkdir -p "${FAST_DEPLOY_HOME}"
cd "${FAST_DEPLOY_HOME}"
if [ ! -d .git ]; then
    ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts
    git clone https://github.com/OrbitZore/fast_deploy.git "${FAST_DEPLOY_HOME}"
fi
git pull
export fast_deploy_cwd="${CWD}"
exec ${SHELL} "$1".sh