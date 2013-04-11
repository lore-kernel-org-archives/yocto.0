Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7E9E014CB
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:45 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hr17so431166wib.5
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=cA5V74HUdZrgjJUHsYZCJr0Fu23FeGj+0pNs1oPqdBc=;
	b=ZQaWMj4ge74tgKVpgfMK8kOD++BiT8z767vn3tK72/RmdSJ2cGXbbu8U66cpC5u5Ie
	wHwhBN179iHnoymFRycITw+lRzrePVx77MmJF9Du8RJ8Hgoi+70AGIuj4vjb2DCrTNcb
	LENF3BMN5vZg3UIkrKm/1f1v7QWIxTKkYuD44jQFzlcWqrH81T8zkZLutnYrDnijzwkH
	/jDy6KVMlvNy7i5D0qwP1zql32Ck9mZUPGhZJeTK2CafiIuTdnApX8ebvjbl7i3tPicI
	8xh5OBQgn8neZxnEcSi3frubnWs+lkVMKMaERqI7F+nsvBAtKDFeycgMelOoDxJ3ygC0
	nfWg==
X-Received: by 10.180.38.105 with SMTP id f9mr9750679wik.15.1365679544989;
	Thu, 11 Apr 2013 04:25:44 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.44
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:44 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:25 +0200
Message-Id: <1365679531-4518-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 3/9] plugins/sdk.ide: Added a check method for the global target profie
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
X-List-Received-Date: Thu, 11 Apr 2013 11:25:46 -0000

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


