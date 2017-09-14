# v DO NOT MODIFY v
# See instructions file for predefined variables
# Add patches (such as audio config) here
# NOTE: Destination variable must have '$AMLPATH' in front of it
# Patch Ex: sed -i '/v4a_standard_fx {/,/}/d' $AMLPATH$CONFIG_FILE
# ^ DO NOT MODIFY ^
for CFG in $CONFIG_FILE $HTC_CONFIG_FILE $OTHER_V_FILE $OFFLOAD_CONFIG $V_CONFIG_FILE; do
  if [ -f $CFG ] && [ "$(cat $AMLPATH$CFG | grep ' proxy {#')" ]; then
    sed -i '/proxy {/,/}/d' $AMLPATH$CFG
  fi
done
for CFG in $CONFIG_FILE $HTC_CONFIG_FILE $OTHER_V_FILE $OFFLOAD_CONFIG $V_CONFIG_FILE; do
  if [ -f $CFG ] && [ ! "$(cat $AMLPATH$CFG | grep ' proxy {')" ]; then
    sed -i 's/^libraries {/libraries {\n  proxy {#\n    path \/system\/lib\/soundfx\/libeffectproxy.so\n  }/g' $AMLPATH$CFG
  fi
done
for CFG in $CONFIG_FILE $V_CONFIG_FILE do
  if [ -f $CFG ] && [ ! "$(grep '#output_session_processing' $CFG)" ] && [ "$(grep '^output_session_processing' $CFG)" ]; then
	sed -i ':a;N;$!ba;s/}\n/}@/g' $AMLPATH$CFG
    sed -i '/^output_session_processing {/,/}.*}.*}/ s/^/#/' $AMLPATH$CFG
    sed -i 's/#\(.*\)}@\(.*\)}@\(.*\)}@/#\1}@\2#}@\3#}@#/' $AMLPATH$CFG
    sed -i -e ':a;N;$!ba;s/}@/}\n/g' -e 's/}#@/}#\
	/' $AMLPATH$CFG
  fi
done
