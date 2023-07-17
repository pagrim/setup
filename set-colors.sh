# Based on the gist https://gist.github.com/avillafiorita/9e626ce370e1da6c6373
function set_foreground_color {
        osascript -e "tell application \"Terminal\" to set normal text color of window 1 to $1"
}

function set_background_color {
        osascript -e "tell application \"Terminal\" to set background color of window 1 to $1"
}

function set_theme {
    set_foreground_color $1
    set_background_color $2
}

function set_font {
    osascript -e "tell application \"Terminal\" to set the font name of window 1 to \"$1\""
    osascript -e "tell application \"Terminal\" to set the font size of window 1 to $2"
}
