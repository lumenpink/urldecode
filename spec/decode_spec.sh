# shellcheck shell=bash
Describe 'usage'
It 'Call function usage with no parameters'
When run script ./urldecode.sh $(cat spec/URLTODECODE)
The line 1 of output should eq 'Test++=_-)(*&¨%$#@!"[]{}^~´`çÇ;:.>,<'"'"
End
End
