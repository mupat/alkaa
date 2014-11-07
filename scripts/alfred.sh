#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/_config.sh #load config
ALFRED_APP=$APP/Alfred\ 2/Alfred.alfredpreferences
ALFRED=$DIR/../alfred

link "$ALFRED/web_search.xml" "$ALFRED_APP/preferences/features/websearch/prefs.plist"
link "$ALFRED/web_search_resources/" "$ALFRED_APP/resources"
link "$ALFRED/appearance.xml" "$ALFRED_APP/preferences/local/cbbfd252589a2803c495f3c3a824dd45fbb0010e/appearance/prefs.plist"
link "$ALFRED/hotkey.xml" "$ALFRED_APP/preferences/local/cbbfd252589a2803c495f3c3a824dd45fbb0010e/hotkey/prefs.plist"
