alias bootlocal='VBoxManage startvm UbuntuServer --type=headless'
alias startlocal='VBoxManage startvm UbuntuServer --type=headless'
alias local='ssh root@192.168.56.102'
alias savelocal='VBoxManage controlvm UbuntuServer savestate'
alias stoplocal='VBoxManage controlvm UbuntuServer poweroff'

alias k=kubectl
alias kdev='export KUBECONFIG= && kubectl config use-context docker-for-desktop'

alias ns-msg='k config set-context --current --namespace=messaging'


export PATH=$PATH:`go env GOPATH`/bin
# export KUBECONFIG="$(k3d get-kubeconfig --name='k3s-default')"

export GITHUB_SSH_PRIV_KEY=$(cat ~/.ssh/id_rsa)


function git {
	case $* in
		sdiff* ) shift 1; echo "test"; command git diff --staged "$@" ;;
		* ) command git "$@" ;;
	esac
}
