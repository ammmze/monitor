#!/usr/bin/env bash

# topic_path_of_instruction=MONITOR/MONITOR1/SCAN/FOO
# mqtt_publisher_identity=monitor2
# is_for_self=$([[ ${topic_path_of_instruction^^} =~ .*${mqtt_publisher_identity^^}/SCAN/.* ]] && echo true || echo false)
# echo $is_for_self
# if [[  $is_for_self != true ]]; then
#     echo 'not for self'
# else
#     echo 'for self'
# fi

function loop() {
    local i=0
    while [ $i -lt 10 ]; do
        echo $i
        sleep 2s
        i=$[$i+1]
    done
}

loop &
pid="$!"
disown $pid
echo "pid: $pid"

loop