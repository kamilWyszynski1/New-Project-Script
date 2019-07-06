## first args - project's name(required)
## second args - project's directory(default=/home/kamil/Projects)

name=$1
dir=$2

echo $name
echo $dir
if [ -z "$name" ]; then
    echo "You have to pass project's name"
    exit
fi

if [ -z "$dir" ]; then
    mkdir "/home/kamil/Projects/${name}"
    cd "/home/kamil/Projects/${name}"
    git init
else
    mkdir "${dir}/${name}"
    cd "${dir}/${name}"
    git init
fi

python /home/kamil/Projects/ProjectCreator/New-Project-Script/githubAPI.py $name





