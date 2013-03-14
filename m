Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1463EE01471
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 08:01:35 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.93])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6700740085;
	Thu, 14 Mar 2013 15:18:33 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2013 16:01:31 +0100
Message-Id: <273f8a9e36866c4a54bb0f2ce9c49d211bdcb2c9.1363250159.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH] plugins/sdk.ide: Fix setting default profile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Mar 2013 15:01:35 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This fixes a regression where the default profile was not changed if
the content of the UI settings were identical.

The regression was introduced with
f93aabf17df2c9a8971c4b428f67a9273c011233

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java  | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index d6a7c4f..2c482f7 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -123,11 +123,14 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		YoctoUIElement savedElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
 		YoctoUIElement modifiedElement = yoctoUISetting.getCurrentInput();
 
-		if (savedElement.equals(modifiedElement)) {
+		YoctoProfileElement savedProfileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+
+		if (savedElement.equals(modifiedElement) &&
+				profileElement.getSelectedProfile().equals(savedProfileElement.getSelectedProfile())) {
 			return true;
 		}
 
-		YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
 		HashSet<IProject> yoctoProjects = getAffectedProjects(profileElement.getSelectedProfile());
 
 		if (!yoctoProjects.isEmpty()) {
-- 
1.7.11.7


