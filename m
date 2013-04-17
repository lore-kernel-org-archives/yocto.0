Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f42.google.com (mail-bk0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92575E014F1
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:42 -0700 (PDT)
Received: by mail-bk0-f42.google.com with SMTP id jc3so761912bkc.29
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=cA5V74HUdZrgjJUHsYZCJr0Fu23FeGj+0pNs1oPqdBc=;
	b=Siws6iNrWACYrA1MM5h1ZLdIh1XCs+YIDO4hViJDqg9qOg0s23R/pjeDx6iQKR7zU3
	md+tChL5vI1xuHSXMJw7j8cuADKL6kTVZfNB3iHo9iVtqiOvdozOkkXqTCaZJstKBqpW
	JqSHa2ieurniCI9Cv6ZMmvVZENM0TEMjSf+S9wRZd0Ydjx5Cfy8OUTYesJ4Wz0kfpDCD
	vRNEXDgNY8r9N2wXeUlgmECGS8k9/Vu9SHCskd+rPBulIhQPwgnDp7QXGRg9LYjJ/1Zx
	0Xv09fNXQJKLOwxAGmkEjUPPISiSzldBfKiWQBfOjAkTtOIGalCU3K5OTwb6sOS9jQDV
	064Q==
X-Received: by 10.204.173.142 with SMTP id p14mr2248050bkz.115.1366205381634; 
	Wed, 17 Apr 2013 06:29:41 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.40
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:40 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:18 +0200
Message-Id: <1366205365-8843-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 03/10] plugins/sdk.ide: Added a check method for the global target profie
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:42 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Added an own method (copied code) in YoctoSDKChecker
that checks the validity of the globally selected
profile. This method will be used in the next patch
and will replace duplicated code.
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 74d97a0..92db72a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -19,6 +19,7 @@ import java.io.FileReader;
 import java.io.FilenameFilter;
 import java.io.IOException;
 
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
@@ -98,6 +99,18 @@ public class YoctoSDKChecker {
 		}
 	};
 
+	public static void checkIfGloballySelectedYoctoProfileIsValid() throws YoctoGeneralException {
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		IPreferenceStore selectedProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selectedProfileStore);
+
+		SDKCheckResults result = checkYoctoSDK(elem);
+		if (result != SDKCheckResults.SDK_PASS){
+			String strErrorMsg =  getErrorMessage(result, SDKCheckRequestFrom.Wizard);
+			throw new YoctoGeneralException(strErrorMsg);
+		}
+	}
+
 	public static SDKCheckResults checkYoctoSDK(YoctoUIElement elem) {
 		if (elem.getStrToolChainRoot().isEmpty())
 			return SDKCheckResults.TOOLCHAIN_LOCATION_EMPTY;
-- 
1.7.9.5


