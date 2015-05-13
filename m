Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D394E008DC; Wed, 13 May 2015 06:47:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10102E007CC
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:29 -0700 (PDT)
Received: by qku63 with SMTP id 63so28190152qku.3
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=mcszYhLCCLAPoh+ZCpeFTrY+l28BhIL4HWZgBowsFvY=;
	b=I13dy77rARQGDznC7M2m6oTd0riHEWhk25PUQji4gRFjVeNM4UC7MKtCMEEIHyYrss
	k26O9Kt65JOaKi8figVMlE9hgdzafMLrXoJ/qa9N9/qBGPxWQWW6ZEIw0mZtcp0LUaoH
	Aqz2gzSQuYlQIoyz7e3ZYp+GFqiIW1n+qAG9S09xn2f4JLx0T5mlcE4Woc6HdL+hUsFp
	n/b0zY282fC99BuWaXv6Y+yy1uzx+X++Ja6WCDb1mmYG8w5X+vsvMmxFdBFyHLx2d+qV
	mTka46YKwNda1kkr+PGAhGcdvYOf2DyiP3nyug30lODRmgaq8uUBGb5eW5DnkIxkVqnI
	fpeA==
X-Received: by 10.140.101.214 with SMTP id u80mr26008663qge.48.1431524849215; 
	Wed, 13 May 2015 06:47:29 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id
	f33sm15571513qkh.23.2015.05.13.06.47.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 May 2015 06:47:28 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Wed, 13 May 2015 10:48:33 -0300
Message-Id: <1431524917-9859-2-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
References: <1431524917-9859-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH v2 2/6] oracle-jse-jdk: fix native installation
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

Link java and javac from the bin dir in the $PATH for native contexts.
Also link fastjar to jar and gjavah to javah, as some java recipes
will look for those tools at build time.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index c5c2480..9e312d0 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,9 +12,16 @@ JDK_JRE = "jdk"
 require oracle-jse.inc
 
 do_install_class-native() {
-    install -d -m 0755                      ${D}${bindir}/${JDK_JRE}${PV}_${PV_UPDATE}
-    cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${bindir}/
-    ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}     ${D}${bindir}/java
+    install -d -m 0755 ${D}${libdir}
+    install -d -m 0755 ${D}${bindir}
+    cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
+    for prog in java javac; do
+	( cd ${D}${bindir} && ln -sf ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
+    done
+
+    ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
+      ln -sf javah gjavah ; \
+      ln -sf jar fastjar )
 }
 
 BBCLASSEXTEND = "native"
-- 
2.1.4


