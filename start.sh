if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SamarITS/Rocorr.git /Rocorr
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rocorr
fi
cd /Rocorr
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
