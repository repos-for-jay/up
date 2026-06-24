set -l count 0
set -l failures 0

function pass
    set -g count (math $count + 1)
    echo "ok $count - $argv"
end

function fail
    set -g count (math $count + 1)
    set -g failures (math $failures + 1)
    echo "not ok $count - $argv"
end

function check
    set -l desc $argv[1]
    set -l actual $argv[2]
    set -l expected $argv[3]
    if test "$actual" = "$expected"
        pass $desc
    else
        fail "$desc — got '$actual', expected '$expected'"
    end
end

set -l base (mktemp -d)
mkdir -p $base/a/b/c/d

cd $base/a/b
up
check "up goes up one directory by default" (basename (pwd)) a

cd $base/a/b
up 1
check "up 1 goes up one directory" (basename (pwd)) a

cd $base/a/b/c
up 2
check "up 2 goes up two directories" (basename (pwd)) a

cd $base/a/b/c/d
up 3
check "up 3 goes up three directories" (basename (pwd)) a

up --help >/dev/null 2>&1
check "up --help exits with status 0" $status 0

up -h >/dev/null 2>&1
check "up -h exits with status 0" $status 0

check "up --help prints usage line" (up --help | head -1) "Usage: up [N]"

cd $base/a/b
up 0
check "up 0 stays in the same directory" (basename (pwd)) b

up foo >/dev/null 2>&1
check "up with invalid argument exits with status 1" $status 1

echo "1..$count"

if test $failures -gt 0
    exit 1
end
