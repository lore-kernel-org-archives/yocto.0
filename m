Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93740E014FD
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 06:30:31 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1D0A440095;
	Thu, 13 Jun 2013 14:34:45 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 15:30:22 +0200
Message-Id: <53ccaeae06f287489ab1b46e5ebc217149dbcd62.1371123125.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 1/7] plugins/sdk.ide: Use an internationalized dialog title
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
X-List-Received-Date: Thu, 13 Jun 2013 13:30:35 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index e5a7897..d192538 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -42,7 +42,6 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoUISetting {
-
 	private static final String ENV_SCRIPT_FILE_PREFIX = "environment-setup-";
 
 	private SelectionListener fSelectionListener;
@@ -375,7 +374,7 @@ public class YoctoUISetting {
 		if ((result != SDKCheckResults.SDK_PASS) && showErrorDialog) {
 			Display display = Display.getCurrent();
 			ErrorDialog.openError(display.getActiveShell(),
-									"Yocto Project Configuration Error",
+									YoctoSDKChecker.SDKCheckRequestFrom.Other.getErrorMessage(),
 									YoctoSDKChecker.getErrorMessage(result, from),
 									new Status(Status.ERROR, YoctoSDKPlugin.PLUGIN_ID, result.getMessage()));
 
-- 
1.8.1.4


