Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8C20E00B8C; Thu, 22 May 2014 03:04:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f52.google.com (unknown [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 364AEE00B85
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:51 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id e53so2481511eek.11
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=kJmaix5uah0+Pl/YPojZ5ejnQdYqmYHP0sfSZvxU+4o=;
	b=fKGw8shEUPBrIHJqoYknglwhZYaPdvPdoBMC8ZDGKHDf8meCeWHzJzSPxcCGysJ0Rq
	wpHKbebps5SMgd/H+hBFCarhP9j6MTiHE5XlFslTMKI7kzB78I6ajWAxkofzETdZEDxJ
	xyLvmy5XQHhxxddroxyPzowpi2sJGLKDDK1OPjvbIedm+bbMZxRNpiv2i15mVHmfqzAp
	tUloCyh1SzRmGhc9jJ+5W8/MXltkS+GtdnOJNcw95DN1UruvBgF5DzrXlrjQyngHSdbG
	m6WzyhtYClgykCvtozqzXiQWCtcocJW3Uqr+odUmEJp331F00psMw+78X4imc6k+eISJ
	7n8g==
X-Gm-Message-State: ALoCoQnHwb2Y62ddvxluKFa6tzqHD3YG6qBVjOJJeNR+t0y6vhW4/uvsYJKjRnB0IMkcQoeWNkNz
X-Received: by 10.14.5.135 with SMTP id 7mr2654862eel.86.1400753090661;
	Thu, 22 May 2014 03:04:50 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	cj41sm18566275eeb.34.2014.05.22.03.04.49 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 03:04:49 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 12:04:44 +0200
Message-Id: <5d52b4938d3267c1af4cb65dc393c2f39c484dcf.1400752777.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <28f30dcf5dc1133f0dfb1f3ecaad2ae19bd3f44c.1400752777.git.timo.mueller@bmw-carit.de>
References: <cover.1400752777.git.timo.mueller@bmw-carit.de>
	<28f30dcf5dc1133f0dfb1f3ecaad2ae19bd3f44c.1400752777.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400752777.git.timo.mueller@bmw-carit.de>
References: <cover.1400752777.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 2/2] plugins/cmake: Add oecore sysroot variables to CMAKE_FIND_ROOT_PATH
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
X-List-Received-Date: Thu, 22 May 2014 10:04:54 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The sysroots provided by the toolchain were not added to the
CMAKE_FIND_ROOT_PATH variable. This resolved into CMake searching on the
host system breaking cross-compilation in some cases.

With the addition of the sysroot environment variables provided by
oecore, we make sure that these sysroots are scanned when CMake is
conducting searches.

[BUGFIX #6314]

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java   | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
index 4119aaf..cac6b84 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
@@ -228,7 +228,9 @@ public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGener
 		toolchainCMakeFileContentAsString += "# only search in the paths provided so cmake doesnt pick\n"; //$NON-NLS-1$
 		toolchainCMakeFileContentAsString += "# up libraries and tools from the native build machine\n"; //$NON-NLS-1$
 
-		List<String> findRootPathValues = Arrays.asList("STAGING_DIR_HOST", //$NON-NLS-1$
+		List<String> findRootPathValues = Arrays.asList("OECORE_NATIVE_SYSROOT", //$NON-NLS-1$
+														"OECORE_TARGET_SYSROOT", //$NON-NLS-1$
+														"STAGING_DIR_HOST", //$NON-NLS-1$
 														"STAGING_DIR_NATIVE", //$NON-NLS-1$
 														"CROSS_DIR", //$NON-NLS-1$
 														"OECMAKE_PERLNATIVE_DIR", //$NON-NLS-1$
-- 
1.9.0


