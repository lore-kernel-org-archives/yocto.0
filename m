Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47058E0097D; Tue, 12 May 2015 13:56:07 -0700 (PDT)
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
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D6A5E00477
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:02 -0700 (PDT)
Received: by qku63 with SMTP id 63so14978361qku.3
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 13:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=mcszYhLCCLAPoh+ZCpeFTrY+l28BhIL4HWZgBowsFvY=;
	b=lQAd9kq2RovO0vYbf78mAuNdxEwgJLyqaYfX7IVMlZ/NN5+c5Fv8LzgyH+/bqhZ/VJ
	MIMRwGI2fO7RdSBLqsBt4eHzojntHU5iHPOoMNO1MgkWWurplcpD0xq1mLZB1fD53cSA
	0hB8smCDnFA1TXno0Dlg20zaDBGV/rWRbee9IkqQacUqkGhVyVqpFPgri42hkWJcQqnO
	UigiVomBlLL/goPP1dTUMnjkEBSm9qDgCgW+F2fTjQZEB8ib9mUenI7rXGpfe/hEKvnW
	mreaRlylfIyWnAZrZz1Y9fLfXZosGwakVC3HdRpBgtzDQ35LRkYZKPCfc7dWou3cgipJ
	5JdQ==
X-Received: by 10.55.31.137 with SMTP id n9mr37372936qkh.91.1431464161425;
	Tue, 12 May 2015 13:56:01 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id 62sm14209921qgz.14.2015.05.12.13.56.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 May 2015 13:56:01 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Tue, 12 May 2015 17:57:00 -0300
Message-Id: <1431464224-19858-2-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 2/6] oracle-jse-jdk: fix native installation
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
X-List-Received-Date: Tue, 12 May 2015 20:56:07 -0000

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


