if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GouthamSER/EDITINGREPO.git /EDITINGREPO
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EDITINGREPO
fi
cd /EDITINGREPO
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
