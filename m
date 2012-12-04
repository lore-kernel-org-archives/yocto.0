Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53922E01423
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:26 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 2EA87400A5;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:16 +0100
Message-Id: <56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Subject: [PATCH 1/8] plugins/sdk.ide: Allow using a YoctoUIElement to set the input of a yocto settings widget
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
X-List-Received-Date: Tue, 04 Dec 2012 09:22:26 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Currently a YoctoUIElement is used to create a YoctoUISetting
widget. It is also possible to retrieve a YoctoUIElement containing
the current input of the widget. This patch adds the capability to
also set the input of the widget using a YoctoUIElement. Instead of
using the fControl array clients can now use this method to set the
input of the widget.
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   40 ++++++++++++++++++++
 1 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index b4625f6..53af8f0 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -307,6 +307,46 @@ public class YoctoUISetting {
 		return elem;
 	}
 
+	public void setCurrentInput(YoctoUIElement elem){
+		btnSDKRoot.setSelection(false);
+		btnPokyRoot.setSelection(false);
+		if(elem.getEnumPokyMode().equals(YoctoUIElement.PokyMode.POKY_SDK_MODE)){
+			btnSDKRoot.setSelection(true);
+		}
+		else if(elem.getEnumPokyMode().equals(YoctoUIElement.PokyMode.POKY_TREE_MODE)){
+			btnPokyRoot.setSelection(true);
+		}
+
+		btnQemu.setSelection(false);
+		btnDevice.setSelection(false);
+		if(elem.getEnumDeviceMode().equals(YoctoUIElement.DeviceMode.QEMU_MODE)){
+			btnQemu.setSelection(true);
+		}
+		else if(elem.getEnumDeviceMode().equals(YoctoUIElement.DeviceMode.DEVICE_MODE)){
+			btnDevice.setSelection(true);
+		}
+
+		textRootLoc.setText(elem.getStrToolChainRoot());
+		targetArchCombo.select(elem.getIntTargetIndex());
+		if(elem.getStrTargetsArray() == null){
+			targetArchCombo.setItems(new String[]{});
+		}
+		else {
+			targetArchCombo.setItems(elem.getStrTargetsArray());
+		}
+		targetArchCombo.setText(elem.getStrTarget());
+		textKernelLoc.setText(elem.getStrQemuKernelLoc());
+		textQemuOption.setText(elem.getStrQemuOption());
+		textSysrootLoc.setText(elem.getStrSysrootLoc());
+
+		try {
+			validateInput(SDKCheckRequestFrom.Preferences, false);
+		} catch (YoctoGeneralException e) {
+			System.out.println("Have you ever set Yocto Project Reference before?");
+			System.out.println(e.getMessage());
+		}
+	}
+
 	public boolean validateInput(SDKCheckRequestFrom from, boolean bPrompt) throws YoctoGeneralException {
 		YoctoUIElement elem = getCurrentInput();
 		boolean pass = true;
-- 
1.7.7.6


