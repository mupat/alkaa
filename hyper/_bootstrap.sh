DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper

link "$DIR/hyper_config.js" "$HOME/.hyper.js"
