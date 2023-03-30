#### table of content


# pegasus-Ti

**pegasus terminal installer**

semi guide to installing pegasus themes and configs and how to scrap metadata for games aswell to create the pegasus.text

this installer should work on arch,ubuntu(only these for now)
*open your terminal(ctrl+alt+t)*
to install this run:
```bash
cd Downloads
cd pegasus-Ti
chmod +x setup.sh
```
now to run this:
```bash
./setup.sh
```
choose your operating system and go through the installation

*what is being installed?*
-  pegasus (the frontend)
-  retroarch (emulator)
-  other dependencies to run all these

now that everything has been installed we open pegasus,**BUT** :


![Screenshot_2023-03-30-19-58-38_1600x900](https://user-images.githubusercontent.com/85402808/228869245-caf4533b-a8b5-470e-9cc0-f3f554f10fd4.png)

opening pegasus will show this error if u dont have everything installed

# scraping and creating the pegasus meta file

> and we need to '*scrape*' all our games and get to a readable state for pegasus to understand

- we use a tool called [Skraper](https://www.skraper.net/)

**this is currently at alpha stage therefore we need to 'build' this ourselfs**

- download [Skraper](https://www.skraper.net/download/beta/Skraper-1.1.1.7z) 

- go to downloads, extract it and open the folder

- now for commands:
  ```bash
   sudo pacman -S mono
  ```

- open the folder on terminal(skraper)

- now to open skraper
```bash
mono SkraperUI.exe
```
- this will start skraper

> **note: keep the terminal window open to continue running skraper**

- now to unerstand more about skraper and how to use it watch **https://www.youtube.com/watch?v=Jhuww7Jl6N0&t=440s&ab_channel=valsou**

- also talks about how to make the pegasus compatible file ( watch the whole thing) 
  
  
# pegasus final setup

now that we have everything we need lets open pegasus and configure 

- open pegasus and go to settings 

- under *gaming* open *set game directories*

- click on add

- and select the game folder containing the *metadata.pegasus.txt* **or** *metadata.txt*

-> **note changing the name of the file will cause pegasus not to recognise it so DONT**

- now add the file and *voila the games should load and should look like this:
 
  
