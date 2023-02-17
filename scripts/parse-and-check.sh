#!/bin/bash

FILES=$(find sway/test/src/e2e_vm_tests/test_programs/should_pass/ -type f -name "*.sw")
declare -a failures=()
declare -a successes=()
for f in $FILES
do
    if tree-sitter parse $f "1" 2> /dev/null | grep -q ERROR; then
	    failures[${#failures[@]}]=$f
    else
        successes[${#successes[@]}]=$f
    fi
done

for success in ${successes[@]}
do
    echo "Successfully parsed $success"
done

for fail in ${failures[@]}
do
    echo "Failed to parse $fail"
done

echo ""
echo "${#successes[@]} passed, ${#failures[@]} failed"

if [ -n "$failures" ]; then
    exit 1
else
    exit 0
fi
