# shellcheck shell=bash
Describe 'usage'
It 'Test URL decode'
# shellcheck disable=SC2046
When run script ./urldecode.sh $(cat spec/URLTODECODE)
The line 1 of output should eq 'Test++=_-)(*&¨%$#@!"[]{}^~´`çÇ;:.>,<'"'"
End
End
