## first args - project's name(required)
## second args - project's directory(default=/home/kamil/Projects)

name=$1
dir=$2
username=`git config --global user.name`

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

echo "# ${name}" > README.md 
git remote add origin https://github.com/${username}/${name}

git add . 
git commit -m "Readme file"
git push origin master


