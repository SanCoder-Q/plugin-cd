#!/usr/local/bin/fish

set SOURCE_DIR (dirname (status -f))

if not functions -q __wrapped_cd
  functions -c cd __wrapped_cd
  functions -e cd
end

if not functions -q __plugin_cd
  source $SOURCE_DIR/functions/plugin-cd.fish
end

functions -c __plugin_cd cd


