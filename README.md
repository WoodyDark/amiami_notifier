# amiami_notifier


amiami_notifier is a script that helps you refresh the hobby and collectibles website, AmiAmi every 15 minutes to check if any product that you want has surfaced. I build this specifically to search rare pre-owned products that I have been looking for.

To use this, you need to have Ruby installed on your computer, after you can install the following gems:

1. gem install mail
2. gem install selenium-webdriver

Configure the amiami_notifer.rb file by inputting your Gmail 'email'(it's called username in this case) and 'password', and update the 'to' & 'from' in the email.
You will also need to configure your Gmail settings to allow 3rd party to send email on your behalf. You can follow the instructions in this video: https://www.youtube.com/watch?v=D-NYmDWiFjU

To run this, go to your terminal and run the following:
ruby path/to/amiami_notifier.rb "<LINK OF THE SEARCH RESULT>"
  
EXAMPLE:
ruby Desktop/amiami_notifier/amiami_notifier.rb "https://www.amiami.com/eng/search/list/?s_keywords=Alice%20Ques%20q&s_st_condition_flg=1"


If you would like this run this process in the background, try learning how to use 'screen command' or use Crontab (only available on Unix OS) to schedule this script to run. For easier Crontab management, you can check out the 'wheneverize' gem.

PS: Less instruction given in this README compared to usual because this is a project that I built for myself. If you would like to check it out, you can shoot me a message, I can update this script. For the time-being, I'm focusing on other projects
