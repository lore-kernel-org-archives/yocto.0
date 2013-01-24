Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B359E014DE
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:44 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4911F4013D;
	Thu, 24 Jan 2013 15:33:24 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:27 +0100
Message-Id: <47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 03/17] plugins/sdk.ide: Add method to enable and disable form
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:44 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The YoctoUISetting form as a whole can be disabled and enabled using
this method. A disabled form can for example show a read-only yocto
configuration.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index a4a3c09..d615956 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -371,6 +371,50 @@ public class YoctoUISetting {
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
+			if(btnQemu.getSelection()) {
+				textKernelLoc.setEnabled(isEnabled);
+				btnKernelLoc.setEnabled(isEnabled);
+
+				textQemuOption.setEnabled(isEnabled);
+			}
+		}
+		else {
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


