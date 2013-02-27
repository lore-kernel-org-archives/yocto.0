Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 681BDE01404
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B970D40181;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:15 +0100
Message-Id: <7cfbfd67bd5cf51db3a143b84f71845458af5e19.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <33091cc0031551c2c58e14f6d62ebf429ace2fa6.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
	<1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
	<33b90639b31373dc0d65e23cdb51cc80b3e81b6e.1361954280.git.timo.mueller@bmw-carit.de>
	<33091cc0031551c2c58e14f6d62ebf429ace2fa6.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 4/5] plugins/sdk.ide: Removed validation from setCurrentInput
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

The result of the validation did not affect the behaviour of the
method. Also an error is not reported back to the caller or the
user. Validation of the setting should be handled before setting the
input or on save.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 2affe82..ba80cb1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -335,12 +335,6 @@ public class YoctoUISetting {
 		textKernelLoc.setText(elem.getStrQemuKernelLoc());
 		textQemuOption.setText(elem.getStrQemuOption());
 		textSysrootLoc.setText(elem.getStrSysrootLoc());
-
-		SDKCheckResults result = validateInput(SDKCheckRequestFrom.Preferences, false);
-		if (result != SDKCheckResults.SDK_PASS) {
-			System.out.println("Have you ever set Yocto Project Reference before?");
-			System.out.println(YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Other));
-		}
 	}
 
 	public SDKCheckResults validateInput(SDKCheckRequestFrom from, boolean showErrorDialog) {
-- 
1.7.11.7


