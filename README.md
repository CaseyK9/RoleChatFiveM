# FiveM Chat Tags Script
Role chat was originally developed by Tazio, updated and continued support by Casey Maxwell. 

To install:
Go to releases page and download latest release, drag and drop rolechat in your resources folder and add ensure rolechat to your server.cfg or resources.cfg

In order to add roles to people, use the following information:

[Owner]
   add_ace group.[specifiedrole] taz.owner allow
   add_principal identifier.steam:[hexid] group.[specifiedrole]

[Management]
   add_ace group.[specifiedrole] taz.management allow
   add_principal identifier.steam:[hexid] group.[specifiedrole]

[Senior Admin]
   add_ace group.[specifiedrole] taz.snradmin allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

[Admin]
   add_ace group.[specifiedrole] taz.admin allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

[Moderator]
   add_ace group.[specifiedrole] taz.mod allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

[Trial Moderator]
   add_ace group.[specifiedrole] taz.tmod allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

[Intern]
   add_ace group.[specifiedrole] taz.intern allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

[Donator]
   add_ace group.[specifiedrole] taz.donator allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

In order to update to provide additional support, submit a pull request or issue here on github (https://github.com/CaseyK9/RoleChatFiveM/)
