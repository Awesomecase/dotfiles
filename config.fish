function sshLogin
    ssh-add -l > /dev/null ^&1
    if [ $status -ne 0 ]
        lpass login cole.swingholm@gmail.com
        if [ $status -eq 0 ] 
            lastpass-ssh
            lpass logout -f
        end
    end
end
