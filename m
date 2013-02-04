Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22CCBE006D2
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2013 23:35:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 15EEF40073;
	Mon,  4 Feb 2013 07:55:48 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Mon,  4 Feb 2013 08:35:35 +0100
Message-Id: <cover.1359962724.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v3 00/18][eclipse-poky] Storing yocto settings as target profiles
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Feb 2013 07:35:57 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

thanks for the feedback, I did some changes to the patch series
accordingly.

First of all I've fixed the issues with the patches (duplicate method,
missing fix for NewYoctoCProjectTemplate.java).

I also changed the functionality of the "new" button according to
Jessica's feedback. The logic is changed to a "Save as ..."
approach. If the button is clicked the current values of the form are
checked. If these are valid, the user can enter a name to store them
as a new profile.

The last patch moves the "Save as ..." button to the bottom of the
preference page alongside with the "perform defaults" and the "apply"
button. I created this patch as a proof of concept because I thought
it would be a good idea to move it.
I used the contributeButtons hook of the preference page to achieve
this, but this only allows adding the "Save as ..." button left to the
"perform defaults" button. So the order of the buttons is a bit
confusing.
I further checked several other preference pages of eclipse and it
seems like none of them is using this hook to add new buttons. Instead
all have a new button next to the comboboxes (e.g. Formatter for CDT
and JDT).
So I would plead against moving it to the bottom to have a more
consistent and less confusing ui.

From the original cover letter:
<snip>
currently the yocto settings can be changed globally through eclipse's
preferences or locally in the project properties. But the standard configuration
stored in the global preferences sometimes changes, e.g. if a new version of the
toolchain or the sysroot is released.
If you change the global settings to the updated toolchain or sysroot your old
working configuration is gone. If you want to reuse this configuration at a
later point in time you have to (remember and) re-enter everthing.
This patch set introduces the possiblity to store a configuration under a unique
name, a so called target profile, and be able to select the default target
profile that is used for new projects.
Building upon this change the target profiles could later also be used in the
project settings and be able to quickly build and debug your software for
different hard- and software combinations.
</snip>

Best regards,
Timo


Atanas Gegov (4):
  plugins/sdk.ide: Extract labels to private members
  plugins/sdk.ide: Add method to enable and disable form
  plugins/sdk.ide: Set value of target array on input change
  plugins/sdk.ide: Create UI element for managing target profiles.

Timo Mueller (14):
  plugins/sdk.ide: Removed unused message
  plugins/sdk.ide: Changed method signature to be more consistent
  plugins/sdk.ide: Modified preferences storage to support profiles.
  plugins/sdk.ide: Set profile on selection change
  plugins/sdk.ide: Add method to allow storing the current settings
  plugins/sdk.ide: Add UI method to create a new profile
  plugins/sdk.ide: Add UI method to delete a profile
  plugins/sdk.ide: Add UI method to rename a profile
  plugins/sdk.ide: Add method to change values of the preference page
  plugins/sdk.ide: Add method to rename a profile and its preference
    store
  plugins/sdk.ide: Add method to delete a profile
  plugins/sdk.ide: Use profiles for the preference page
  plugins/sdk.ide: Added profile UI to the preference page
  plugins/sdk.ide: Moved save as button to bottom of preference page

 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 104 ++++++++++
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 211 +++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  19 +-
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |   9 +
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  10 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  62 ++++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  60 +++++-
 .../sdk/ide/preferences/PreferenceConstants.java   |   5 +
 .../sdk/ide/preferences/PreferenceInitializer.java |  22 ++-
 .../ide/preferences/ProfileNameInputValidator.java |  63 ++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 133 ++++++++++---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   7 +-
 13 files changed, 646 insertions(+), 65 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java

-- 
1.7.11.7


