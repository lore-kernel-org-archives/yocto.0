Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB8AE01275
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:26 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4BF13400E0;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:17 +0100
Message-Id: <15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Subject: [PATCH 2/8] plugins/sdk.ide: Create a default YoctoUIElement from the preference store
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

Adds a method to create a YoctoUIElement that contains the content of
the yocto settings stored in the plugin's default preference store.
---
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 749fac7..16035fd 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -465,6 +465,31 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 
+	/* Load default IDE wide POKY Preference settings into YoctoUIElement */
+	public static YoctoUIElement getDefaultElemFromStore()
+	{
+		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
+		YoctoUIElement elem = new YoctoUIElement();
+		if (store.getDefaultString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		elem.setStrToolChainRoot(store.getDefaultString(PreferenceConstants.TOOLCHAIN_ROOT));
+		elem.setStrTarget(store.getDefaultString(PreferenceConstants.TOOLCHAIN_TRIPLET));
+		elem.setIntTargetIndex(store.getDefaultInt(PreferenceConstants.TARGET_ARCH_INDEX));
+		elem.setStrQemuKernelLoc(store.getDefaultString(PreferenceConstants.QEMU_KERNEL));
+		elem.setStrQemuOption(store.getDefaultString(PreferenceConstants.QEMU_OPTION));
+		elem.setStrSysrootLoc(store.getDefaultString(PreferenceConstants.SYSROOT));
+
+		if (store.getDefaultString(PreferenceConstants.TARGET_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+
+		return elem;
+	}
+
 	public static String qemuTargetTranslate(String strTargetArch) 
 	{
 		String qemu_target = "";
-- 
1.7.7.6


