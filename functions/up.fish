function up --description 'go up $argv directories (default 1)'
  argparse 'h/help' -- $argv
  or return 1

  if set -q _flag_help
    printf "Usage: up [N]\n\nGo up N directories (default 1).\n\nOptions:\n  -h, --help  Show this help message\n"
    return 0
  end

  if test (count $argv) -eq 0
    cd ..
    return
  end

  if not string match -qr '^[0-9]+$' -- $argv[1]
    printf "Error: up should be called with the number of directories to go up. The default is 1.\n" >&2
    return 1
  end

  if test $argv[1] -eq 0
    return 0
  end

  set --local up_to ".."
  for x in (seq (math $argv[1] - 1))
    set up_to "$up_to/.."
  end
  cd $up_to
end
