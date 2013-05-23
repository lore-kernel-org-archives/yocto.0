Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FC6E01493
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:04 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id c50so1681809eek.15
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=F+lCST4+ThyE+UoJUR1r6z94qbW+a42l5qSAFfnHwwM=;
	b=LEpRXPBwg0CYpCcM1DeBGkpYwSR73AcG/TOY9ItX3HDuiHHpvWE53UhemmlYqCj0Ar
	atdK7hCszmEq2/Ba6Nv6MbABXLjlt4/STEruaYrEFaIjTQo81TjWe+JSoVobXSKkAdfs
	mRtbGKDU9iyb647/3ik9l7SP6omRHPW7uBNqF7Pkbyr+KVisaUcjqgyO7qBKFu6z87o2
	tN62F0aaeJHxcFqaGNqphVqPM/ls1D9JxdodU9Q+GQOJzBRyyVLptUTPqcR/+FvgNKhH
	3DIPjqozM5fB7lLoE83/5HEB5dlynwE/TUC38WYX57+4HiPmfLxZZWk676DTKRa64UXu
	wkWQ==
X-Received: by 10.15.93.193 with SMTP id w41mr29164543eez.22.1369298403481;
	Thu, 23 May 2013 01:40:03 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.02
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:02 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:42 +0200
Message-Id: <1369298392-4076-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 03/13] plugins/sdk.ide: Added a method to get project environment
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
X-List-Received-Date: Thu, 23 May 2013 08:40:04 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This methods creates a key-value map from the
project environment. It can be used to provide
this environment to new processes.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index f27fad7..669157b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -8,6 +8,7 @@
  * Contributors:
  * Intel - initial API and implementation
  * BMW Car IT - add methods to use different preference stores
+ * Atanas Gegov (BMW Car IT) - add method to get the project environment
  *******************************************************************************/
 package org.yocto.sdk.ide.utils;
 
@@ -87,6 +88,21 @@ public class YoctoSDKUtils {
 			return var.getValue();
 	}
 
+	public static Map<String,String> getEnvVariablesAsMap (IProject project) {
+		Map<String, String> result = new HashMap<String, String>();
+
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
+		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
+		IContributedEnvironment env = manager.getContributedEnvironment();
+
+		for(IEnvironmentVariable var : env.getVariables(ccdesc)) {
+			result.put(var.getName(), var.getValue());
+		}
+
+		return result;
+	}
+
 	/* Save project wide settings into ENV VARs including POKY preference settings
 	 * and Environment Script File export VARs
 	 */
-- 
1.7.9.5


