Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9ACB0E006C2
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 05:49:25 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id A5A27400E0;
	Tue, 26 Feb 2013 14:07:35 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 26 Feb 2013 14:49:20 +0100
Message-Id: <38b600dfa83b4468462690eb67675ee05c8d0c7a.1361867924.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <c6a14985367e7e7d057250b89bd07552302e03af.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
	<25b0cc70b24171a329c3a29139970bfacec9e080.1361867924.git.timo.mueller@bmw-carit.de>
	<c6a14985367e7e7d057250b89bd07552302e03af.1361867924.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 3/5] plugin/sdk.ide: Change name of target profiles to cross development profiles
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
X-List-Received-Date: Tue, 26 Feb 2013 13:49:25 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKMessages.properties      | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index e779f7d..0323d1c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -51,18 +51,18 @@ Preferences.Profile.Validator.InvalidName.Quote = Warning: The profile name cann
 Preferences.Profile.Validator.InvalidName.Empty = Please provide a new profile name.
 Preferences.Profile.Validator.InvalidName.Exists = Warning: The profile already exists.
 
-Preferences.Profiles.Title = Target profiles:
+Preferences.Profiles.Title = Cross development profiles:
 Preferences.Profile.New.Title = Save as ...
-Preferences.Profile.New.Dialog.Title = Save as new target profile
+Preferences.Profile.New.Dialog.Title = Save as new cross development profile
 Preferences.Profile.New.Dialog.Message = Please input a profile name.
 Preferences.Profile.Rename.Title = Rename
-Preferences.Profile.Rename.Dialog.Title = Rename target profile
+Preferences.Profile.Rename.Dialog.Title = Rename cross development profile
 Preferences.Profile.Rename.Dialog.Message = Please input a new profile name.
 Preferences.Profile.Remove.Title = Remove
-Preferences.Profile.Remove.Dialog.Title = Remove target profile
-Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?\nProjects using this target profile will be reconfigured to use the standard profile.
-Preferences.Profile.Standard.Modification.Title = Modify standard target profile
-Preferences.Profile.Standard.Modification.Message = Standard target profile cannot be removed or renamed.
+Preferences.Profile.Remove.Dialog.Title = Remove cross development profile
+Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the cross development profile "{0}"?\nProjects using this cross development profile will be reconfigured to use the standard profile.
+Preferences.Profile.Standard.Modification.Title = Modify standard cross development profile
+Preferences.Profile.Standard.Modification.Message = Standard cross development profile cannot be removed or renamed.
 
 Preferences.Profile.ProjectSpecific.Title = Use project specific settings
 Preferences.Profile.ProjectSpecific.Group.Title = Project specific settings:
-- 
1.7.11.7


