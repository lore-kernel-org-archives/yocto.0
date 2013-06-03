Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE87E01483
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:10 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id mx10so1709110bkb.40
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=toy08HRGz9Uf+KcxhnX1yWMGVQrEz0BZzE1B52hTOKQ=;
	b=AUt/TuK4WEtAOZuaN07uljEy/34D2x2+BMumIu9VNyzkzq7qr+IEyN/MmJ6ytyI3/r
	OlsZ7FPrvKTX5Yw+t82cfcOoGvTzGiShbDhfcLqKni07K6dtgT+dsoZixnVQ1sD5X1XY
	Y/23wwUdhNGxt5ilhS808zzXXRVkN44EhTUQuQThDAcdnAMOb0qqSn3+nz1j2TfATprQ
	htRofFSgckIQfumgFSAjki4eOKQc7uugY/oHq7sBMVDEbDveM38esq/QuacAPLRujUbF
	UrSWT+wpAPjr00P8+O77SVTyR1To9haMpEI6VvarUvs3mn2wV3hKA5pNOEChMIHEq8SX
	KIBA==
X-Received: by 10.204.227.3 with SMTP id iy3mr6211445bkb.107.1370248209698;
	Mon, 03 Jun 2013 01:30:09 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.08 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:09 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:54 +0200
Message-Id: <1370248197-4243-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 4/7] plugins/sdk.ide: Moved a locally used method
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:11 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The method splitString(...) is used only locally.
Removed from the YoctoSDKUtils in order to
simplify the overpopulated YoctoSDKUtils
class.
---
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   21 +++++++++++++++++---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   12 -----------
 2 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
index b8d6e8b..fb53c53 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -51,13 +51,28 @@ public class YoctoSDKAutotoolsProjectNature extends YoctoSDKProjectNature {
 		String strConfigure = YoctoSDKUtils.getEnvValue(project, "CONFIGURE_FLAGS");
 
 		cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
-		cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, "--build="));
-		cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(strConfigure, "--host="));
-		cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, "--target="));
+		cfg.setOption(DEFAULT_BUILD_STR, splitString(strConfigure, "--build="));
+		cfg.setOption(DEFAULT_HOST_STR, splitString(strConfigure, "--host="));
+		cfg.setOption(DEFAULT_TARGET_STR, splitString(strConfigure, "--target="));
 		cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
 		cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
 
 		AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
 		AutotoolsConfigurationManager.getInstance().saveConfigs(project);
 	}
+
+	private static String splitString(String strValue, String strDelim) {
+		int iBeginIndex = strValue.indexOf(strDelim);
+
+		if (iBeginIndex < 0) {
+			return "";
+		}
+		int iEndIndex = strValue.indexOf(' ', iBeginIndex + 1);
+
+		if (iEndIndex < 0) {
+			return strValue.substring(iBeginIndex + strDelim.length());
+		} else {
+			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex);
+		}
+	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 5400a42..f257e06 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -592,18 +592,6 @@ public class YoctoSDKUtils {
 			qemu_target = "qemuppc";
 		return qemu_target;
 	}
-	public static String splitString(String strValue, String strDelim)
-	{
-		int iBeginIndex = strValue.indexOf(strDelim);
-		if (iBeginIndex < 0)
-			return "";
-		int iEndIndex = strValue.indexOf(' ', iBeginIndex + 1);
-
-		if (iEndIndex < 0)
-			return strValue.substring(iBeginIndex + strDelim.length());
-		else
-			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex);
-	}
 
 	public static HashMap<String, String> parseEnvScript(String sFileName)
 	{
-- 
1.7.9.5


