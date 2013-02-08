Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 470F6E0047F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:17 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 644DC400E4;
	Fri,  8 Feb 2013 13:45:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:00 +0100
Message-Id: <55bbacc9719bafa4fba381ca4f8f161adb163269.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
	<e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
	<3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 03/17] plugins/sdk.ide: Add method to enable and disable form
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

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The YoctoUISetting form as a whole can be disabled and enabled using
this method. A disabled form can for example show a read-only yocto
configuration.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 9ec0d85..2e3c830 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -370,6 +370,50 @@ public class YoctoUISetting {
 		return pass;
 	}
 
+	public void setUIFormEnabledState(boolean isEnabled) {
+		btnSDKRoot.setEnabled(isEnabled);
+		btnPokyRoot.setEnabled(isEnabled);
+
+		root_label.setEnabled(isEnabled);
+		textRootLoc.setEnabled(isEnabled);
+		btnToolChainLoc.setEnabled(isEnabled);
+
+		sysroot_label.setEnabled(isEnabled);
+		textSysrootLoc.setEnabled(isEnabled);
+		btnSysrootLoc.setEnabled(isEnabled);
+
+		targetArchLabel.setEnabled(isEnabled);
+		targetArchCombo.setEnabled(isEnabled);
+
+		btnQemu.setEnabled(isEnabled);
+
+		if(isEnabled) {
+			/* enabling widgets regarding
+			 * Kernel and Custom Options
+			 * depends on the state of the QEMU button */
+			kernel_label.setEnabled(isEnabled);
+			option_label.setEnabled(isEnabled);
+
+			if(btnQemu.getSelection()) {
+				textKernelLoc.setEnabled(isEnabled);
+				btnKernelLoc.setEnabled(isEnabled);
+
+				textQemuOption.setEnabled(isEnabled);
+			}
+		} else {
+			/* disable all widgets regarding
+			 * Kernel and Custom Options */
+			kernel_label.setEnabled(isEnabled);
+			textKernelLoc.setEnabled(isEnabled);
+			btnKernelLoc.setEnabled(isEnabled);
+
+			option_label.setEnabled(isEnabled);
+			textQemuOption.setEnabled(isEnabled);
+		}
+
+		btnDevice.setEnabled(isEnabled);
+	}
+
 	private void updateQemuControlState()
 	{
 		boolean bQemuMode = btnQemu.getSelection();
-- 
1.7.11.7


