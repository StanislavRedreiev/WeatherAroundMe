1.
Error **colorize**
```
Add tag beta_4252...
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- colorize (LoadError)
	from /System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	from /Users/sredreev/Work/Askfm_hotfix/ios-app/scripts/utils/ask_jira.rb:2:in `<top (required)>'
	from /Users/sredreev/Work/Askfm_hotfix/ios-app/scripts/jira_get_fixed_issues:3:in `require_relative'
	from /Users/sredreev/Work/Askfm_hotfix/ios-app/scripts/jira_get_fixed_issues:3:in `<main>'
```
Solution: install 'colorize' module
```
sudo gem install colorize
```

2.
Error **xcpretty**
```
Building 'Release' version...
/Users/sredreev/Work/Askfm_hotfix/ios-app/shared-scripts/ipa_brew: line 66: xcpretty: command not found
```
Solution: install 'xcpretty' module
```
sudo gem install xcpretty —verbose
```

3.
Error **ipa_upload_to_appcenter** (appcenter)
```
Zipping dSYMs...
Uploading files...
/Users/sredreev/Work/Askfm_hotfix/ios-app/shared-scripts/ipa_upload_to_appcenter: line 65: appcenter: command not found
/Users/sredreev/Work/Askfm_hotfix/ios-app/shared-scripts/ipa_upload_to_appcenter: line 68: appcenter: command not found
/Users/sredreev/Work/Askfm_hotfix/ios-app/shared-scripts/ipa_upload_to_appcenter: line 74: appcenter: command not found
/Users/sredreev/Work/Askfm_hotfix/ios-app/shared-scripts/ipa_upload_to_appcenter: line 77: appcenter: command not found
Error: Submission failed
Error: IPA wasn't uploaded to AppCenter. Try to upload manually or run 'ipa_upload_to_appcenter ‘ script
```
Solution: install 'appcenter-cli'
```
npm install -g appcenter-cli
```
...but, perhaps, you will get an error 
```(zsh: command not found: npm)```

so, at first you need to install few modules:
1. install brue:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”
```
2. install node (or npm): 
```brew install node```
3. and finally try to install appcenter-cli again: 
```npm install -g appcenter-cli```
