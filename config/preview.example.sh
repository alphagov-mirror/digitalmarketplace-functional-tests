export DM_ENVIRONMENT=${DM_ENVIRONMENT:="preview"}

export DM_API_ACCESS_TOKEN=${DM_API_ACCESS_TOKEN:=myToken}
export DM_SEARCH_API_ACCESS_TOKEN=${DM_SEARCH_API_ACCESS_TOKEN:=myToken}

export DM_NOTIFY_API_KEY=myToken

source "${BASH_SOURCE%/*}/common.sh"
