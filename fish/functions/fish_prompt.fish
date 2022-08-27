function fish_prompt
	echo -n (set_color yellow)(prompt_hostname)' '(set_color blue)(prompt_pwd)' ♖ '
	set_color normal
end
