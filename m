Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2B683E0072A
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 78A0E400B6;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:13 +0100
Message-Id: <33b90639b31373dc0d65e23cdb51cc80b3e81b6e.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
	<1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 2/5] plugins/sdk.ide: Refactored the construction of mesages with SDKCheckResults
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
X-List-Received-Date: Wed, 27 Feb 2013 14:37:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The message keys are now stored with the enum values simplifying the
construction of error messages.

Error messages have also been split up into a one line error message
and an advice. The one line error message can for example be used in
UI Parts with limited space (e.g. message area on property and
preference pages). Dialogs or log messages can use the complete
message to give the user a hint on what to do in order to fix the
error.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     | 159 +++++++++------------
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  42 ++++--
 2 files changed, 99 insertions(+), 102 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index fd50f18..9579021 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -1,5 +1,7 @@
 /*******************************************************************************
  * Copyright (c) 2010 Intel Corporation.
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * 
  * All rights reserved. This program and the accompanying materials
  * are made available under the terms of the Eclipse Public License v1.0
  * which accompanies this distribution, and is available at
@@ -7,6 +9,7 @@
  *
  * Contributors:
  * Intel - initial API and implementation
+ * BMW Car IT - include error and advice messages with check results
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
@@ -17,45 +20,76 @@ import java.io.FilenameFilter;
 import java.io.IOException;
 
 public class YoctoSDKChecker {
+	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
+	private static final String SYSROOTS_DIR = "sysroots";
 
 	public static enum SDKCheckResults {
-		SDK_PASS,
-		POKY_DEVICE_EMPTY,
-		TOOLCHAIN_LOCATION_EMPTY,
-		TOOLCHAIN_LOCATION_NONEXIST,
-		SDK_TARGET_EMPTY,
-		QEMU_KERNEL_EMPTY,
-		SYSROOT_EMPTY,
-		QEMU_KERNEL_NONEXIST,
-		SYSROOT_NONEXIST,
-		WRONG_ADT_VERSION,
-		ENV_SETUP_SCRIPT_NONEXIST,
-		TOOLCHAIN_NO_SYSROOT,
-		TOOLCHAIN_HOST_MISMATCH
+		SDK_PASS("", false),
+		TOOLCHAIN_LOCATION_EMPTY(
+				"Poky.SDK.Location.Empty", true),
+		TOOLCHAIN_LOCATION_NONEXIST(
+				"Poky.SDK.Location.Nonexist", true),
+		SDK_TARGET_EMPTY(
+				"Poky.SDK.Target.Empty", true),
+		SYSROOT_EMPTY(
+				"Poky.Sysroot.Empty", true),
+		SYSROOT_NONEXIST(
+				"Poky.Sysroot.Nonexist", true),
+		QEMU_KERNEL_EMPTY(
+				"Poky.Qemu.Kernel.Empty", true),
+		QEMU_KERNEL_NONEXIST(
+				"Poky.Qemu.Kernel.Nonexist", true),
+		WRONG_ADT_VERSION(
+				"Poky.ADT.Sysroot.Wrongversion", false),
+		ENV_SETUP_SCRIPT_NONEXIST(
+				"Poky.Env.Script.Nonexist", false),
+		TOOLCHAIN_NO_SYSROOT(
+				"Poky.Toolchain.No.Sysroot", false),
+		TOOLCHAIN_HOST_MISMATCH(
+				"Poky.Toolchain.Host.Mismatch", false);
+
+		private static final String DEFAULT_ADVICE = "Default.Advice";
+		private static final String ADVICE_SUFFIX = ".Advice";
+
+		private final String messageID;
+		private final boolean addDefaultAdvice;
+
+		private SDKCheckResults(final String messageID, final boolean addDefaultAdvice) {
+			this.messageID = messageID;
+			this.addDefaultAdvice = addDefaultAdvice;
+		}
+
+		public String getMessage() {
+			return YoctoSDKMessages.getString(messageID);
+		}
+
+		public String getAdvice() {
+			String advice = YoctoSDKMessages.getString(messageID + ADVICE_SUFFIX);
+
+			if (addDefaultAdvice) {
+				advice += YoctoSDKMessages.getString(DEFAULT_ADVICE);
+			}
+
+			return advice;
+		}
 	};
 
 	public static enum SDKCheckRequestFrom {
-		Wizard,
-		Menu,
-		Preferences,
-		Other
-	};
+		Wizard("Poky.SDK.Error.Origin.Wizard"),
+		Menu("Poky.SDK.Error.Origin.Menu"),
+		Preferences("Poky.SDK.Error.Origin.Preferences"),
+		Other("Poky.SDK.Error.Origin.Other");
 
-	private static final String POKY_DEVICE_EMPTY = "Poky.SDK.Device.Empty";
-	private static final String TOOLCHAIN_LOCATION_EMPTY     = "Poky.SDK.Location.Empty";
-	private static final String SDK_TARGET_EMPTY      = "Poky.SDK.Target.Empty";
-	private static final String TOOLCHAIN_LOCATION_NONEXIST = "Poky.SDK.Location.Nonexist";
-	private static final String QEMU_KERNEL_EMPTY 	  = "Poky.Qemu.Kernel.Empty";
-	private static final String SYSROOT_EMPTY = "Poky.Sysroot.Empty";
-	private static final String QEMU_KERNEL_NONEXIST = "Poky.Qemu.Kernel.Nonexist";
-	private static final String SYSROOT_NONEXIST = "Poky.Sysroot.Nonexist";
-	private static final String WRONG_ADT_VERSION = "Poky.ADT.Sysroot.Wrongversion";
-	private static final String ENV_SETUP_SCRIPT_NONEXIST = "Poky.Env.Script.Nonexist";
-	private static final String TOOLCHAIN_NO_SYSROOT = "Poky.Toolchain.No.Sysroot";
-	private static final String TOOLCHAIN_HOST_MISMATCH = "Poky.Toolchain.Host.Mismatch";
-	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
-	
-	private static final String SYSROOTS_DIR = "sysroots";
+		private final String errorMessageID;
+
+		private SDKCheckRequestFrom(final String errorMessageID) {
+			this.errorMessageID = errorMessageID;
+		}
+
+		public String getErrorMessage() {
+			return YoctoSDKMessages.getString(errorMessageID);
+		}
+	};
 
 	public static SDKCheckResults checkYoctoSDK(YoctoUIElement elem) {
 		if (elem.getStrToolChainRoot().isEmpty())
@@ -172,62 +206,9 @@ public class YoctoSDKChecker {
 
 	public static String getErrorMessage(SDKCheckResults result, SDKCheckRequestFrom from) {
 		String strErrorMsg;
-
-		switch (from) {
-		case Wizard:
-			strErrorMsg = "Yocto Wizard Configuration Error:";
-			break;
-		case Menu:
-			strErrorMsg = "Yocto Menu Configuration Error!";
-			break;
-		case Preferences:
-			strErrorMsg = "Yocto Preferences Configuration Error!";
-			break;
-		default:
-			strErrorMsg = "Yocto Configuration Error!";
-			break;
-		}
-
-		switch (result) {
-		case POKY_DEVICE_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(POKY_DEVICE_EMPTY);
-			break;
-		case TOOLCHAIN_LOCATION_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_EMPTY);
-			break;
-		case SDK_TARGET_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SDK_TARGET_EMPTY);
-			break;
-		case TOOLCHAIN_LOCATION_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_NONEXIST);
-			break;
-		case QEMU_KERNEL_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_EMPTY);
-			break;
-		case SYSROOT_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_EMPTY);
-			break;
-		case QEMU_KERNEL_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_NONEXIST);
-			break;
-		case SYSROOT_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_NONEXIST);
-			break;
-		case WRONG_ADT_VERSION:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(WRONG_ADT_VERSION);
-			break;
-		case ENV_SETUP_SCRIPT_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(ENV_SETUP_SCRIPT_NONEXIST);
-			break;
-		case TOOLCHAIN_NO_SYSROOT:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_NO_SYSROOT);
-			break;
-		case TOOLCHAIN_HOST_MISMATCH:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_HOST_MISMATCH);
-			break;
-		default:
-			break;
-		}
+		strErrorMsg = from.getErrorMessage();
+		strErrorMsg += "\n" + result.getMessage();
+		strErrorMsg += "\n" + result.getAdvice();
 
 		return strErrorMsg;
 	}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index e5748f7..4a4fb60 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -11,19 +11,35 @@
  *******************************************************************************/
 Wizard.SDK.Warning.Title = Invalid Yocto Project ADT Location
 
-Poky.SDK.Device.Empty = Please specify External HW IP Adress!
-Poky.SDK.Location.Empty     = You need specify tool-chain location before building any project. \nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.SDK.Target.Empty      =  You need specify Target Architecture before building any project.\nSpecified Location does not contain environment script File!\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.SDK.Location.Nonexist = Specified SDK toolchain directory does not exist!\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings. 
-Poky.Qemu.Kernel.Empty = You need specify Qemu Kernel Image File Location before building any project.\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.Sysroot.Empty = You need specify Sysroot Location before building any project.\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT \nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.Qemu.Kernel.Nonexist = Specified QEMU kernel Image File does not exist!\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT \nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.Sysroot.Nonexist = Specified sysroot directory does not exist!\nDo IDE-wide settings from Window > Preferences > Yocto Project ADT \nOr do Project-wide settings from Project > Change Yocto Project Settings.
-Poky.Env.Script.Nonexist = Specified Build Tree Toolchain Root does not contain any toolchain yet!\nPlease run "bitbake meta-ide-support" to build the toolchain.
-Poky.ADT.Sysroot.Wrongversion = OECORE related items are not found in envrionement setup files.\nThe ADT version you're using is too old.\n Please upgrade to our latest ADT Version!
-Poky.Toolchain.Host.Mismatch = Toolchain and host arch mismatch.\n Make sure you use 32bit toolchain for 32bit host and same for 64bit machines!
-Poky.Toolchain.No.Sysroot = There's no sysroots directory under your toolchain directory under /opt/poky!
-
+Poky.SDK.Location.Empty = Specified Toolchain Root Location is empty.
+Poky.SDK.Location.Empty.Advice = You need specify Toolchain Root Location before building any project.
+Poky.SDK.Location.Nonexist = Specified SDK toolchain directory does not exist.
+Poky.SDK.Location.Nonexist.Advice = Please specify a valid toolchain directory.
+Poky.SDK.Target.Empty = Specified location does not contain environment script file.
+Poky.SDK.Target.Empty.Advice = You need specify Target Architecture before building any project.
+Poky.Sysroot.Empty = Specified Sysroot Location is empty.
+Poky.Sysroot.Empty.Advice = You need specify Sysroot Location before building any project.
+Poky.Sysroot.Nonexist = Specified Sysroot Location does not exist.
+Poky.Qemu.Kernel.Empty.Advice = You need specify a valid Sysroot Location before building any project.
+Poky.Qemu.Kernel.Empty =  Specified QEMU kernel location is emtpy.
+Poky.Qemu.Kernel.Empty.Advice = You need specify QEMU kernel image file Location before building any project.
+Poky.Qemu.Kernel.Nonexist = Specified QEMU kernel image file does not exist.
+Poky.Qemu.Kernel.Empty.Advice = You need specify a valid QEMU kernel image file before building any project.
+Poky.ADT.Sysroot.Wrongversion = The ADT version you're using is too old.
+Poky.ADT.Sysroot.Wrongversion.Advice = OECORE related items are not found in environment setup files.\nPlease upgrade to our latest ADT Version!
+Poky.Env.Script.Nonexist = Specified Build Tree Toolchain Root does not contain any toolchain yet.
+Poky.Env.Script.Nonexist.Advice = Please run "bitbake meta-ide-support" to build the toolchain.
+Poky.Toolchain.No.Sysroot = Specified Toolchain Root Location does not contain a sysroot directory.
+Poky.Toolchain.No.Sysroot.Advice = Please install a valid toolchain sysroot.
+Poky.Toolchain.Host.Mismatch = Toolchain and host arch mismatch.
+Poky.Toolchain.Host.Mismatch.Advice = Make sure you use 32bit toolchain for 32bit host and same for 64bit machines!
+
+Default.Advice = \nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
+
+Poky.SDK.Error.Origin.Wizard = Yocto Wizard Configuration Error:
+Poky.SDK.Error.Origin.Menu = Yocto Menu Configuration Error:
+Poky.SDK.Error.Origin.Preferences = Yocto Preferences Configuration Error:
+Poky.SDK.Error.Origin.Other = Yocto Configuration Error:
 
 Menu.SDK.Console.Configure.Message    = The Yocto Project ADT has been successfully set up for this project.\nTo see the environment variables created during setup,\ngo to Project > Properties > C/C++ Build > Environment. 
 Menu.SDK.Console.Deploy.Action.Message   = \nDeploying {0} to {1} ...\n
-- 
1.7.11.7


