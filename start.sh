wget "$TOKEN_PICKLE_URL" -O token.pickle
wget $CONFIG_FILE_URL
python3 update.py && python3 -m bot
