Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65F8E00740
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:12 -0700 (PDT)
Received: by mail-bk0-f49.google.com with SMTP id w11so315950bku.36
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=cA5V74HUdZrgjJUHsYZCJr0Fu23FeGj+0pNs1oPqdBc=;
	b=VADBmSJohvSTZHhsh1Cg3J2eqcyyF3eaX//q/qIEzMbBCdi3CxAac69Ad4ZPLTSN9Y
	hdwZzlJGAtjRbRkxuCFMBMXXPdDBzFtJkHiwJpS/tbTrs5Jk3cEkwh4eBn7N2C7KQ6/0
	czvUb1Q4Cz2tDn0Q6WAtJ3gzR4yAU1pIPwbZXZPfBLWDVBUngWNC1eqgYfzyTX8Wg+FK
	vOwf7aqX4zHL+cZOGjxPRHgP34+rlN9ajjfWP1f952T6vaTzcQiqvclv54jtsE7W4w2q
	KDKLz4wkNShT0oMvQqZr07eXAMgL6h4OjAIujcVDKGLv1x2HAmH4mwDoAD4v+BAsOTKB
	lsUQ==
X-Received: by 10.205.108.134 with SMTP id ec6mr9042844bkc.129.1363708931769; 
	Tue, 19 Mar 2013 09:02:11 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.10
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:11 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:47 +0100
Message-Id: <1363708911-13002-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 3/7] plugins/sdk.ide: Added a check method for the global target profie
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:13 -0000

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


