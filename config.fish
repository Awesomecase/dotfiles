ssh-add -l > /dev/null ^&1
if [ $status -ne 0 ]
    lpass login cole.swingholm@gmail.com
end
lpass status > /dev/null ^&1
if [ $status -ne 0 ] 
    lastpass-ssh
end
