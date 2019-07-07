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
    createdDir="/home/kamil/Projects/${name}"
else
    createdDir="${dir}/${name}" 
fi

mkdir "$createdDir"
cd "$createdDir"
git init

python /home/kamil/Projects/New-Project-Script/githubAPI.py $name

echo "# ${name}" > README.md 
git remote add origin "git@github.com:${username}/${name}"

git add . 
git commit -m "Readme file"
git push origin master

xdg-open "$createdDir"


