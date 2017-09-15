Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B66E00D68; Fri, 15 Sep 2017 00:38:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F46DE00CD8
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8F7cVVu023842
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:32 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 00:38:30 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 15:37:28 +0800
Message-ID: <c849297230622e9cb2ff9982f064b9bc7a65dd2e.1505460823.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505460823.git.jackie.huang@windriver.com>
References: <cover.1505460823.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 4/4] samhain: fix QA issue for GNU_HASH
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
X-List-Received-Date: Fri, 15 Sep 2017 07:38:37 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Add LDFLAGS variable to fix QA issue for GNU_HASH:
| ERROR: samhain-client-4.2.2-r0 do_package_qa: QA Issue:
  No GNU_HASH in the elf binary: '/builddir/usr/sbin/samhain_setpwd' [ldflags]

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...n-add-LDFLAGS-variable-for-samhain_setpwd.patch | 28 ++++++++++++++++++++++
 recipes-security/samhain/samhain.inc               |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch

diff --git a/recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch b/recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
new file mode 100644
index 0000000..088a938
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
@@ -0,0 +1,28 @@
+From ae79606a6745dbbd429d1d4671dfe3045d735057 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Thu, 14 Sep 2017 13:26:55 +0800
+Subject: [PATCH] Add LDFLAGS variable for compiling samhain_setpwd
+
+Upstream-Status: Pending
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ Makefile.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 01de987..49356cf 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -1128,7 +1128,7 @@ sh_tiger_i.o: $(srcsrc)/$(TIGER_SRC) Makefile config_xor.h
+ samhain_setpwd: encode config_xor.h $(srcsrc)/samhain_setpwd.c
+ 	@echo '$(COMPILE)  -o samhain_setpwd $(srcsrc)/samhain_setpwd.c'; \
+ 	./encode $(XOR_CODE) $(srcsrc)/samhain_setpwd.c; \
+-	$(COMPILE)  -o samhain_setpwd x_samhain_setpwd.c; \
++	$(COMPILE) $(LDFLAGS) -o samhain_setpwd x_samhain_setpwd.c; \
+ 	rm x_samhain_setpwd.c
+ 
+ samhain_stealth: encode config_xor.h $(srcsrc)/samhain_stealth.c
+-- 
+2.11.0
+
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index a11b7d8..db96264 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -13,6 +13,7 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-sha256-big-endian.patch \
            file://samhain-configure-add-option-for-ps.patch \
            file://samhain-avoid-searching-host-for-postgresql.patch \
+           file://samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch \
            file://${INITSCRIPT_NAME}.init \
            file://${INITSCRIPT_NAME}.default \
            file://samhain.service \
-- 
2.11.0


