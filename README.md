# Overview
Bulk rename files using .txt wordlist in termux (root needed)

#### Manually
**Installing requirements**
 ```
apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y
 ```
 ```
pkg install git -y
 ```


**Getting Bulk-Renamer**
 ```
git clone https://github.com/TasnimulHasan0/Bulk-Renamer
 ```

#### Setting Up
 ```
su
 ```
 ```
exit
 ```

#### Running

 ```
cd Bulk-Renamer && su -c "/data/data/com.termux/files/usr/bin/bash bulk_file_rename.sh"
 ```


#### Troubleshooting

If you don't know where to find the path for the folder and the txt file,

1.Open [Files By Google ](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://play.google.com/store/apps/details%3Fid%3Dcom.google.android.apps.nbu.files%26hl%3Den%26referrer%3Dutm_source%253Dgoogle%2526utm_medium%253Dorganic%2526utm_term%253Dfiles%2Bby%2Bgoogle%26pcampaignid%3DAPPU_1_ph5oZ9GjI5-gnesPyJOhUQ&ved=2ahUKEwjRjsXtx7uKAxUfUGcHHchJKAoQ5YQBegQIDBAC&sqi=2&usg=AOvVaw11VSFEPGRSHr78vM-FgVyx) 

2. Select internal Storage

3. locate the **Folder** and click on 3 dots on the right side of the **Folder** then click on info and long press on the path. Example- /storage/emulated/0/Download

4. Paste the **Folder's** path into termux after the last command and press enter 

5. Do the same with the .txt file and press enter. Your files should get renamed.

#### Attention

1. The **txt** file should have one new name per line. **No other text**

Example:
 ```
Episode 141: The Shinobi Prison: Hozuki Castle
Episode 142: A Test of Willpower
Episode 143: The Criminal Targeting Kokuri
Episode 144: Kokuri’s Secret
Episode 145: Breaking Out of Hozuki Castle
Episode 146: Executing the Prison Break
Episode 147: The Fateful Moonlit Battle
Episode 148: A New Mission!!
Episode 149: Friends!!
Episode 150: The Value of a Hidden Ace
Episode 151: Boruto and Tento
 ```
2. **Do not** use extensions because the original extensions are kept.
