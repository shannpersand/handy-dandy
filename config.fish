set PATH "/usr/local/bin" $PATH
set PATH "/usr/local/sbin" $PATH
set PATH "/usr/local/share/npm/bin" $PATH
set PATH "/Users/smiwa/bin" $PATH
set NODE_PATH "/usr/local/lib/node_modules"


. ~/.config/fish/z.fish

function __git_ps1
 set -l g (git rev-parse --git-dir ^/dev/null)
 if [ -n "$g" ]
   set -l r ""
   set -l b ""

   if [ -d "$g/../.dotest" ]
     if [ -f "$g/../.dotest/rebasing" ]
       set r "|REBASE"
     elseif [ -f "$g/../.dotest/applying" ]
       set r "|AM"
     else
       set r "|AM/REBASE"
     end

     set b (git symbolic-ref HEAD ^/dev/null)
   elseif [ -f "$g/.dotest-merge/interactive" ]
     set r "|REBASE-i"
     set b (cat "$g/.dotest-merge/head-name")
   elseif [ -d "$g/.dotest-merge" ]
     set r "|REBASE-m"
     set b (cat "$g/.dotest-merge/head-name")
   elseif [ -f "$g/MERGE_HEAD" ]
     set r "|MERGING"
     set b (git symbolic-ref HEAD ^/dev/null)
   else
     if [ -f "$g/BISECT_LOG" ]
       set r "|BISECTING"
     end

     set b (git symbolic-ref HEAD ^/dev/null)
     if [ -z $b ]
       set b (git describe --exact-match HEAD ^/dev/null)
       if [ -z $b ]
         set b (cut -c1-7 "$g/HEAD")
         set b "$b..."
       end
     end
   end

   if not test $argv
       set argv " (%s)"
   end

   set b (echo $b | sed -e 's|^refs/heads/||')

   printf $argv "$b$r" ^/dev/null
 end
end

function git_dirty
 if not is_git_repo
   return 1
 end
 not git diff HEAD --quiet ^/dev/null
end

function is_git_repo
 git status >/dev/null ^/dev/null
 not test $status -eq 128
end

function fish_prompt --description 'Write out the prompt'
 printf '%s%s::%s%s ' (set_color purple) (whoami) (hostname|cut -d . -f 1) (set_color normal)

 # Write the process working directory
 if test -w "."
   printf '%s%s' (set_color -o $fish_color_cwd) (prompt_pwd)
 else
   printf '%s%s' (set_color -o $fish_color_uneditable_cwd) (prompt_pwd)
 end

 printf '%s%s' (set_color blue) (__git_ps1)

 if git_dirty
   printf '%s* ' (set_color -o red)
 end
 printf '\n'
 printf '%s≫ %s'  (set_color normal)
end

# Directories
alias ..      'cd ..'
alias ...     'cd ../..'
alias ....    'cd ../../..'
alias .....   'cd ../../../..'

# git
alias g       'git'
alias gist    'git status'
alias giff    'git diff'
alias co      'git checkout'

# Servers
alias restap  'sudo /usr/sbin/apachectl restart'
alias startel 'elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.19.0/config/elasticsearch.yml'

# Misc
alias bx      "bundle exec"

# rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# npm
set --export PATH /usr/local/share/npm/bin $PATH

set PATH "/usr/local/heroku/bin" $PATH
