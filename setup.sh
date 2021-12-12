# Check existence of command "gh". Because "gh clone" is faster then "git clone"
if ! command -v gh &> /dev/null
then
	git clone https://github.com/githubVladimirT/Cardioid.git # Clone repo
	cd Cardioid # Change dirictory to cloned
	pip3 install -r requirements.txt # Install or update modules
	chmod +x master.py
	./master.py # Run Cardioid
else
	gh repo clone githubVladimirT/Cardioid # Clone repo
	cd Cardioid # Change dirictory to cloned
	pip3 install -r requirements.txt # Install or update modules
	chmod +x master.py
	./master.py # Run Cardioid
fi
