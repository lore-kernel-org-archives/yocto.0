Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44290E014FC
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:12 -0700 (PDT)
Received: by mail-bk0-f49.google.com with SMTP id 6so1726415bkj.8
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=lFMbzHL0yqM2a5t3W4b5K3IK4Y2cJ42JtAworow1U/8=;
	b=NIU5jeuLCthdXS9ZluynPmEUgFakXk7Xw4ipailWW6qjnw/mp7B6RefuvpIFj2Ftzr
	dcijNeupo7gE/O+7BBL6DJBdQGbS9g0PwYIruAgcupcegvjc4d1RXHqgX4p/jcpwzfOf
	59j9qtXv+hRs40H//8tFNl6BGBPK+wBsTqq+LDqOkU/IyVpXOTvUCBKd74MHHH30h7HB
	0GPc91EbCQarKjfgTK02B5i8fdkUGFlCXIjeIDt3p8vbGOyoKTEaI/b+xfmhXYkQ2STu
	pkq4liqdxvfdpmbdjez7sCGxggDIywJqw/JsApglOxBUOCy0zOIEHq79QQOLA0xfnpos
	sgaA==
X-Received: by 10.205.0.67 with SMTP id nl3mr6100714bkb.53.1370248211408;
	Mon, 03 Jun 2013 01:30:11 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.10 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:10 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:56 +0200
Message-Id: <1370248197-4243-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 6/7] plugins/sdk.ide: Removed unused methods
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:12 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Removed methods from the YoctoSDKUtils class that
are not used.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   12 ------------
 1 file changed, 12 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index d8d3b4e..c43a75a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -554,12 +554,6 @@ public class YoctoSDKUtils {
 		}
 	}
 
-	/* Save IDE wide POKY Preference settings to the default preference store */
-	public static void saveElemToDefaultStore(YoctoUIElement elem)
-	{
-		saveElemToStore(elem, YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
 	/* Save IDE wide POKY Preference settings to a specific preference store */
 	public static void saveElemToStore(YoctoUIElement elem, IPreferenceStore store)
 	{
@@ -579,12 +573,6 @@ public class YoctoSDKUtils {
 		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
 	}
 
-	/* Get IDE wide POKY Preference settings from the default preference store */
-	public static YoctoUIElement getElemFromDefaultStore()
-	{
-		return getElemFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
 	/* Get IDE wide POKY Preference settings from a specific preference store */
 	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
 		YoctoUIElement elem = new YoctoUIElement();
-- 
1.7.9.5


