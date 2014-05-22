Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80A79E00B8C; Thu, 22 May 2014 03:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f42.google.com (unknown [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136A7E00B6F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:48 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id d49so2476445eek.29
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=p7sUp4u1u9o7Pcj0t7iobaLhKHrhyK8HSq7XPdzC+Fs=;
	b=M8eNKel9tNWy3+13K87lWV75jLwZRzZNhy790V9Zjwm4H02QRJn0VQs7WYiv8YV+fu
	5UgcUKZfLynrJ4ox2oh+LBr4Fr6DSUNJWCxHUJ+RhhH0JZkHkrU9EejVWzxbdHq+HtQT
	m5oWr7GCwjDveAiQ/qyln7RrzcinBMpUjDlizMQX3eAp6WoEwnA+Na9s+tCYAL02YIQa
	6Ynk+3YJqMUq6F20xVwSaUtyjD5eg15Vf+Bz5PpbqTgdbc0Q4x6jQQLft5ovYgCEuwWU
	YjJaBe1RouOJtscx9Niawt4tUWUaV9iktABG8Ej/qx8ZXUCK20NvzjmQh9uoaoaIWKgk
	Ek8w==
X-Gm-Message-State: ALoCoQkwtCfhuHJemlvKAFqmocjju/3rnl96O07CEH4j3wq7hnCVaqwoAscQ+OrKdwnqr/T9QUPY
X-Received: by 10.15.33.140 with SMTP id c12mr12362642eev.41.1400753088252;
	Thu, 22 May 2014 03:04:48 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	z44sm18561270eep.39.2014.05.22.03.04.46 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 03:04:47 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 12:04:43 +0200
Message-Id: <28f30dcf5dc1133f0dfb1f3ecaad2ae19bd3f44c.1400752777.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1400752777.git.timo.mueller@bmw-carit.de>
References: <cover.1400752777.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400752777.git.timo.mueller@bmw-carit.de>
References: <cover.1400752777.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 1/2] plugins/cmake: Refactor creation of CMAKE_FIND_ROOT_PATH
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
X-List-Received-Date: Thu, 22 May 2014 10:04:50 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Adding new environment variables to the list of variables that
contribute to the the CMAKE_FIND_ROOT_PATH involved manually appending
to the value string and also adding a whitespace to separate values.

The construction of the CMAKE_FIND_ROOT_PATH value is extracted to a
separate method, which expects a list of environment variables. Adding
or removing environment variables that contribute to the path is now
achieved by modifying the entries of the list.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../YoctoCMakeMakefileGenerator.java               | 35 ++++++++++++++--------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
index b77ae9e..4119aaf 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
@@ -12,6 +12,8 @@ package org.yocto.cmake.managedbuilder;
 
 import java.io.ByteArrayInputStream;
 import java.io.InputStream;
+import java.util.Arrays;
+import java.util.List;
 
 import org.eclipse.cdt.managedbuilder.core.IBuilder;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
@@ -226,18 +228,13 @@ public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGener
 		toolchainCMakeFileContentAsString += "# only search in the paths provided so cmake doesnt pick\n"; //$NON-NLS-1$
 		toolchainCMakeFileContentAsString += "# up libraries and tools from the native build machine\n"; //$NON-NLS-1$
 
-		String findRootPathValue = YoctoSDKUtils.getEnvValue(project, "STAGING_DIR_HOST"); //$NON-NLS-1$
-		findRootPathValue += " "; //$NON-NLS-1$
-		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "STAGING_DIR_NATIVE"); //$NON-NLS-1$
-		findRootPathValue += " "; //$NON-NLS-1$
-		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "CROSS_DIR"); //$NON-NLS-1$
-		findRootPathValue += " "; //$NON-NLS-1$
-		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "OECMAKE_PERLNATIVE_DIR"); //$NON-NLS-1$
-		findRootPathValue += " "; //$NON-NLS-1$
-		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "OECMAKE_EXTRA_ROOT_PATH"); //$NON-NLS-1$
-		findRootPathValue += " "; //$NON-NLS-1$
-		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "EXTERNAL_TOOLCHAIN"); //$NON-NLS-1$
-		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH", findRootPathValue, null); //$NON-NLS-1$
+		List<String> findRootPathValues = Arrays.asList("STAGING_DIR_HOST", //$NON-NLS-1$
+														"STAGING_DIR_NATIVE", //$NON-NLS-1$
+														"CROSS_DIR", //$NON-NLS-1$
+														"OECMAKE_PERLNATIVE_DIR", //$NON-NLS-1$
+														"OECMAKE_EXTRA_ROOT_PATH", //$NON-NLS-1$
+														"EXTERNAL_TOOLCHAIN"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH", getFindRootPath(findRootPathValues), null); //$NON-NLS-1$
 
 		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH_MODE_PROGRAM", "ONLY", null); //$NON-NLS-1$ //$NON-NLS-2$
 		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH_MODE_LIBRARY", "ONLY", null); //$NON-NLS-1$ //$NON-NLS-2$
@@ -278,4 +275,18 @@ public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGener
 			e.printStackTrace();
 		}
 	}
+
+	private String getFindRootPath(List<String> values) {
+		String findRootPath = "";
+
+		for (String value : values) {
+			String pathValue = YoctoSDKUtils.getEnvValue(project, value);
+
+			if (pathValue.length() > 0) {
+				findRootPath += pathValue + " ";
+			}
+		}
+
+		return findRootPath;
+	}
 }
-- 
1.9.0


