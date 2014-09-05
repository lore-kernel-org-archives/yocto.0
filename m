Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98606E0076C; Thu,  4 Sep 2014 21:03:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F216E006EF
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 21:03:21 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id eu11so21652537pac.33
	for <yocto@yoctoproject.org>; Thu, 04 Sep 2014 21:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=uJXwON2eiCmVvtqQms2jdvk0ImSyQPCCWal9FCBpPmQ=;
	b=VcLpdpEhTWGOBz2E8H/JxCrcvvmYw2QgJHprF0Zps/FkxZ95JT1zjHmI0vPQBGtB2F
	mH1Ks5YZFQ5ML5SuZgCBafI0/DpI99Sb/jBxOo6keBq8iubr4nesqQ0FvQmUoQHuv9R+
	5FAZ/k0Z7TxQpSY1eGAyFVSt+0zxK6TCTT9C7naixcZeaTWlYmjXNHqKwZiIURcmouFo
	hv91QAFHzNGQTUz0oTm2Un50768Ax2mclT/0XDkWrJDsIe7alWJlsJvnxsI9fMhAhTt2
	TdVx3Q6T9GaLC2SEzHb+mAkRHcOX6Ipsmp0x97uPbGa0+GmILvY9AXbL4jwAvKpiooKd
	fLcw==
X-Received: by 10.66.192.195 with SMTP id hi3mr16513995pac.117.1409889800052; 
	Thu, 04 Sep 2014 21:03:20 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id v16sm566504pdi.39.2014.09.04.21.03.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Sep 2014 21:03:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Sep 2014 21:03:13 -0700
Message-Id: <1409889793-26166-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libseccomp: add package for tests.
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
X-List-Received-Date: Fri, 05 Sep 2014 04:03:27 -0000

I wanted to run the tests manually on a target. Tests are now
built and packaged.

to run: /usr/lib/libseccomp/tests/regression -a

will add ptest later.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
index 27fa259..0896f85 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -18,6 +18,15 @@ do_configure() {
    ${S}/configure --prefix=${prefix} --libdir=${libdir}
 }
 
+do_compile_append() {
+    oe_runmake  DESTDIR=${D} tests 
+}
+
 do_install() {
-    oe_runmake DESTDIR=${D} install
+    oe_runmake DESTDIR=${D} install 
+    oe_runmake  DESTDIR=${D} install-tests 
 }
+
+PACKAGES += "${PN}-tests "
+FILES_${PN}-tests = "${libdir}/${BPN}/tests/*"
+FILES_${PN}-dbg += "${libdir}/${BPN}/tests/.debug/*"
-- 
1.9.1


