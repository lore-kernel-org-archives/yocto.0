Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 05E22E00515
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:16 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 049AD40037;
	Fri,  8 Feb 2013 13:45:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:25:57 +0100
Message-Id: <cover.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 00/17][eclipse-poky] Storing yocto settings as target profiles
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:17 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

I removed the last patch that was moving the "Save as ..." button to
the bottom. So now it is located beneath the dropdown box. I also
changed the message in the profile deletion dialog to only ask if the
user really wants to delete the profile.

From RFC v3:
<snip>
First of all I've fixed the issues with the patches (duplicate method,
missing fix for NewYoctoCProjectTemplate.java).

I also changed the functionality of the "new" button according to
Jessica's feedback. The logic is changed to a "Save as ..."
approach. If the button is clicked the current values of the form are
checked. If these are valid, the user can enter a name to store them
as a new profile.
</snip>

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

Timo Mueller (13):
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

 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 104 ++++++++++
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 229 +++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  19 +-
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |   9 +
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  10 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  62 ++++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  60 +++++-
 .../sdk/ide/preferences/PreferenceConstants.java   |   5 +
 .../sdk/ide/preferences/PreferenceInitializer.java |  22 +-
 .../ide/preferences/ProfileNameInputValidator.java |  63 ++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 112 +++++++---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   7 +-
 13 files changed, 643 insertions(+), 65 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/ProfileNameInputValidator.java

-- 
1.7.11.7


