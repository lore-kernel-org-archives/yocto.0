Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8F62E0095C; Wed, 13 May 2015 06:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C40E007CC
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:28 -0700 (PDT)
Received: by qcbgy10 with SMTP id gy10so22337428qcb.3
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=xa7rZkToZEnbH03lwxayZxqvJ46P2gUWmG6AhgUwDu0=;
	b=cWiglsVGnTAsqmNl4oAgBiBf75ylfuII+sl/j4MDozftRApy3ELTR+uxwx8dWrO+nK
	xIXg0vfPp/w8kHm/lPNmDVQjAFZJCA1MvcsgpOV+itjPlWNYRnWK6DvW2Y6VBnHteUy/
	wEzZQ/digNYQcpcwSfQ4UQAoSJ/YIxB26omLab79mY6xWr2A6FCha8MoRtVr2XquLPiQ
	ibKZa1drS65Co8CsWZzeVa+rPIOjn1OXUG6XwgEgpxkx9IhgyDDK+bh9vCkZpjIGA0Sv
	SQBUOBJ2Zm5YWSRu0U8KbVQ3HIRbjnKbOXICzty2NGxJ+EB3ysVMkBZyT3EAx0kudwTw
	WomA==
X-Received: by 10.55.54.6 with SMTP id d6mr42284860qka.77.1431524847651;
	Wed, 13 May 2015 06:47:27 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:27 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:32 -0300
Message-Id: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 1/6] oracle-jse-jdk: split recipe into per-architecture recipes
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
X-List-Received-Date: Wed, 13 May 2015 13:47:34 -0000

Due the way BitBake parses recipes, including architecture-specific
include files was happening too late, causing native variants to pick
wrong include files, thus ending up generating broken content.

Setting COMPATIBLE_HOST guarantees that native installations will be
consistent.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 ...acle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} |  2 ++
 ...-jse-jdk-x86-64.inc => oracle-jse-jdk-x86-64_1.7.0.bb} |  2 ++
 recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb      | 15 ---------------
 3 files changed, 4 insertions(+), 15 deletions(-)
 rename recipes-devtools/oracle-java/{oracle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} (90%)
 rename recipes-devtools/oracle-java/{oracle-jse-jdk-x86-64.inc => oracle-jse-jdk-x86-64_1.7.0.bb} (89%)
 delete mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
similarity index 90%
rename from recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
rename to recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
index 0667161..6f90d48 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
@@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
 
 SRC_URI[md5sum] = "715b0e8ba2a06bded75f6a92427e2701"
 SRC_URI[sha256sum] = "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c"
+
+COMPATIBLE_HOST = "(i586.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
similarity index 89%
rename from recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
rename to recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
index f18ce55..45853c3 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
@@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
 
 SRC_URI[md5sum] = "81e3e2df33e13781e5fac5756ed90e67"
 SRC_URI[sha256sum] = "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538c863049e346335"
+
+COMPATIBLE_HOST = "(x86_64.*-linux)"
diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
deleted file mode 100644
index 56d84b6..0000000
--- a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-# Automatically choose java package based on target architecture
-def get_java_pkg(d):
-       TA = d.getVar('TARGET_ARCH', True)
-       if TA == "i586":
-               javaPkg = "oracle-jse-jdk-i586"
-       elif TA == "x86_64":
-               javaPkg = "oracle-jse-jdk-x86-64"
-       else:
-               raise bb.parse.SkipPackage("The target architecture '%s' is not supported by the meta-oracle-java layer" %TA)
-       
-       return javaPkg
-
-JAVA_PKG = "${@get_java_pkg(d)}"
-
-require ${JAVA_PKG}.inc
-- 
2.1.4


