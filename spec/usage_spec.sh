# shellcheck shell=bash
Describe 'usage'
It 'Call function usage with no parameters'
When run script ./urldecode.sh
The line 1 of output should include "urldecode"
The line 3 of output should include "Options:"
End
It 'Call function usage with -h'
When run script ./urldecode.sh -h
The line 1 of output should include "urldecode"
The line 3 of output should include "Options:"
End
It 'Call function usage with --help'
When run script ./urldecode.sh --help
The line 1 of output should include "urldecode"
The line 3 of output should include "Options:"
End
End
