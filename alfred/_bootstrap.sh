#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../_helper.sh #load helper
ALFRED_APP=$APP/Alfred\ 2/Alfred.alfredpreferences

link "$DIR/web_search.xml" "$ALFRED_APP/preferences/features/websearch/prefs.plist"
link "$DIR/web_search_resources/" "$ALFRED_APP/resources"
link "$DIR/appearance.xml" "$ALFRED_APP/preferences/local/cbbfd252589a2803c495f3c3a824dd45fbb0010e/appearance/prefs.plist"
link "$DIR/hotkey.xml" "$ALFRED_APP/preferences/local/cbbfd252589a2803c495f3c3a824dd45fbb0010e/hotkey/prefs.plist"
link "$DIR/file_list.xml" "$ALFRED_APP/preferences/local/cbbfd252589a2803c495f3c3a824dd45fbb0010e/features/defaultresults/prefs.plist"
