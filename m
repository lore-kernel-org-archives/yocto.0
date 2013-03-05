Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3E08BE014F2
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6FF02401C9;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:21 +0100
Message-Id: <0e1087cc0470b96f7fd4acb8e1abb35c46fcb967.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
	<326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 2/5] plugins/sdk.ide: Add new error message for unselected target arch
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
X-List-Received-Date: Tue, 05 Mar 2013 08:29:29 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If the toolchain location contains environment scripts but no target
architecture is selected show an appropriate error message.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java    | 6 ++++++
 .../src/org/yocto/sdk/ide/YoctoSDKMessages.properties               | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 9579021..5f790ee 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -31,6 +31,8 @@ public class YoctoSDKChecker {
 				"Poky.SDK.Location.Nonexist", true),
 		SDK_TARGET_EMPTY(
 				"Poky.SDK.Target.Empty", true),
+		SDK_NO_TARGET_SELECTED(
+				"Poky.SDK.No.Target.Selected", false),
 		SYSROOT_EMPTY(
 				"Poky.Sysroot.Empty", true),
 		SYSROOT_NONEXIST(
@@ -130,6 +132,10 @@ public class YoctoSDKChecker {
 			}
 		}
 
+		if (elem.getStrTarget().isEmpty() && elem.getStrTargetsArray().length > 0) {
+			return SDKCheckResults.SDK_NO_TARGET_SELECTED;
+		}
+
 		if (elem.getIntTargetIndex() < 0 || elem.getStrTarget().isEmpty()) {
 			//if this is poky tree mode, prompt user whether bitbake meta-ide-support is executed?
 			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_TREE_MODE)
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index f3ba7e2..07a0009 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -17,6 +17,8 @@ Poky.SDK.Location.Nonexist = Specified SDK toolchain directory does not exist.
 Poky.SDK.Location.Nonexist.Advice = Please specify a valid toolchain directory.
 Poky.SDK.Target.Empty = Specified location does not contain environment script file.
 Poky.SDK.Target.Empty.Advice = You need specify Target Architecture before building any project.
+Poky.SDK.No.Target.Selected = Target Architecture is not defined.
+Poky.SDK.No.Target.Selected.Advice = Please choose a Target Architecture.
 Poky.Sysroot.Empty = Specified Sysroot Location is empty.
 Poky.Sysroot.Empty.Advice = You need specify Sysroot Location before building any project.
 Poky.Sysroot.Nonexist = Specified Sysroot Location does not exist.
-- 
1.7.11.7


