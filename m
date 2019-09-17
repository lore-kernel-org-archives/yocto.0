Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCCAEE00CD5; Mon, 16 Sep 2019 19:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 605E7E0098A
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 19:34:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8H2YJWn029245
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Sep 2019 19:34:20 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 16 Sep 2019 19:34:18 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2019 10:34:14 +0800
Message-ID: <1568687654-21734-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
References: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 2/2] README.build: add FAQ to support fips on arm/aarch64/x86
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
X-List-Received-Date: Tue, 17 Sep 2019 02:34:22 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.build | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/README.build b/README.build
index 9735028..bc8fcf3 100644
--- a/README.build
+++ b/README.build
@@ -245,3 +245,39 @@ Note this sample command is functionally equivalent to:
 $ env OPENSSL_FIPS=1 openssl sha1 -hmac etaonrishdlcupfm fips_hmac.c
 HMAC-SHA1(fips_hmac.c)= ae25ad68d9a8cc04075100563a437fa37829afcc
 
+===============
+FAQ
+===============
+1. How to support fips on 32bit arm (such as MACHINE = qemuarm)?
+Set env MACHINE='arm' before Building the FIPS Object Module
+(Building Steps 3), which affects fips config not to add option
+`-march=armv7-a' to avoid failure on gcc8:
+[snip]
+|`cc1: error: -mfloat-abi=hard: selected processor lacks an FPU'
+[snip]
+
+2. How to support fips on aarch64 (such as MACHINE = qemuarm64)?
+For aarch64, FIPS 140-2 module only support android, wrapper gcc
+at Building the FIPS Object Module(Building Steps 3) to define
+macro FIPS_REF_POINT_IS_CROSS_COMPILER_AWARE to simulate what
+android did. Provide a way to add bbappend to wrapper gcc:
+mkdir -p recipes-devtools/gcc
+cat << ENDOF > recipes-devtools/gcc/gcc_9.%.bbappend
+do_install_append_aarch64() {
+    create_cmdline_wrapper \${D}/\${bindir}/gcc -DFIPS_REF_POINT_IS_CROSS_COMPILER_AWARE
+}
+
+FILES_\${PN}-symlinks += "\${bindir}/gcc.real"
+ENDOF
+
+3. How to support fips on 32bit x86? (Such as MACHINE = qemux86,
+or lib32-image on qemux86-64)
+Set env MACHINE='i686' before Building the FIPS Object Module
+(Building Steps 3) which affect fips config not to add option
+`-m 64' on lib32-image which workaround the following failure
+[snip]
+|/usr/include/bits/long-double.h:44:10: fatal error:
+bits/long-double-64.h: No such file or directory
+|   44 | #include <bits/long-double-64.h>
+[snip]
+
-- 
2.7.4


