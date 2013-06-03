Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D49CDE004CF
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:07 -0700 (PDT)
Received: by mail-bk0-f50.google.com with SMTP id ik5so1700606bkc.23
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=Qy/i+Nzh/xflkhC/oSpjRWYh4nBj+4m1blJXcFpN3c0=;
	b=jNGdLA3v1H+dula881nw1BUrLQyi2TEdooEyd9EGHi71yFe2EJvODXwSygy7Xk9igA
	iZIuk5VPQQydubK5H9e8aIrEN/qjQ3xnmzYXWOLDClVL1qgNpp8FJ7jOsIv/SosAK22+
	4NZOpOJqrWeYDfRRMT5frbojMdbEzTu/1ti28IL0wn0Zrmdz2nxerVuisgqyNRXLDolE
	PlaqLFG3I2v58ezWyUIZmyRBFwmP7SYrl8J5xmaALBQYtMf7ioxbdpvWLqMYM1Nw6Vri
	Zq/E/kJwJoonAq2Q0Ma3xPEQdOIuvHmctd3iKOiBoW3hLBnnxb/7npEidT1/cw0J19Uh
	MPPQ==
X-Received: by 10.205.103.134 with SMTP id di6mr6264740bkc.178.1370248206900; 
	Mon, 03 Jun 2013 01:30:06 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.06 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:06 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:51 +0200
Message-Id: <1370248197-4243-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 1/7] plugins/sdk.ide: Extracted a private method
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:08 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Extracted a method that gets the full path of the
environment-setup-* file.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   22 ++++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 287de15..01b1288 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -210,21 +210,25 @@ public class YoctoSDKUtils {
 
 	}
 
-	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
-		String sFileName;
-		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-
+	private static String getEnvironmentSetupFileFullPath(YoctoUIElement elem) {
+		String envSetupFile = "";
 
 		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-			sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-		}
-		else {
+			envSetupFile = elem.getStrToolChainRoot() + "/";
+		} else {
 			//POKY TREE Mode
-			sFileName = elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
-					YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+			envSetupFile = elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX;
 		}
+		envSetupFile += YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+		return envSetupFile;
+	}
+
+	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException {
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
 
+		String sFileName = getEnvironmentSetupFileFullPath(elem);
 		HashMap<String, String> envMap = parseEnvScript(sFileName);
+
 		setEnvVars(cpdesc, elem, envMap);
 
 		try {
-- 
1.7.9.5


