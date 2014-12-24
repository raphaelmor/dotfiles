set -o errexit

function confirm()
{
	echo -n "$@ "
	read -e answer
	for response in y Y yes YES Yes Sure sure SURE OK ok Ok
	do
		if [ "_$answer" == "_$response" ]
		then
			return 0
		fi
	done

	# Any answer other than the list above is considerred a "no" answer
	return 1
}

function link_file()
{
	echo "symlinking $1"
	ln -s "$PWD/$1" "$HOME/$1"
}

echo "This will remove any existing vim configuration files and simlink them with the files here."
confirm "Are you sure?"
if [ $? -eq 0 ]
then
	for file in ~/.vimrc ~/.vimrc.local ~/.gvimrc
	do
		if [[ -f $file ]]; then
			echo "Moving $file to $file.bak"
			mv $file $file.bak
		fi
	done

	for dir in ~/.vim
	do
		if [[ -d $dir ]]; then
			echo "Moving $dir directory to $dir.bak"
			mv $dir $dir.bak
		fi
	done
fi

echo "symlinking"

for file in .vim .vimrc .vimrc.local .gvimrc
do
	link_file $file
done

echo "Done.  Check that it works.  If so, you can remove the .bak files, if any"
