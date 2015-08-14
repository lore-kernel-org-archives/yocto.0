Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 309AEE00AA6; Thu, 13 Aug 2015 20:21:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0577E00A3C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 20:21:54 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E3LsVx025144
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 20:21:54 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Thu, 13 Aug 2015 20:21:54 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Aug 2015 23:21:50 -0400
Message-ID: <1439522510-217313-3-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439522510-217313-1-git-send-email-wenzong.fan@windriver.com>
References: <1439522510-217313-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] audit: build gen_xxx natively
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
X-List-Received-Date: Fri, 14 Aug 2015 03:21:59 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The gen_xxx used for generating sources at compile-time, they are
built by native C compiler but may involve cross-compilation options
via CFLAGS, just use CFLAGS_FOR_BUILD to remove the issue.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../audit/audit/audit-build-gen_xxx-natively.patch | 566 +++++++++++++++++++++
 recipes-security/audit/audit_2.4.3.bb              |   1 +
 2 files changed, 567 insertions(+)
 create mode 100644 recipes-security/audit/audit/audit-build-gen_xxx-natively.patch

diff --git a/recipes-security/audit/audit/audit-build-gen_xxx-natively.patch b/recipes-security/audit/audit/audit-build-gen_xxx-natively.patch
new file mode 100644
index 0000000..dd3fa5c
--- /dev/null
+++ b/recipes-security/audit/audit/audit-build-gen_xxx-natively.patch
@@ -0,0 +1,566 @@
+From b5db56c8bd99e6b0020c000843b6b7df2fcc926f Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 13 Aug 2015 05:21:22 -0400
+Subject: [PATCH] audit: build gen_xxx natively
+
+The targets gen_xxx used for generating sources at compile-time, both
+CC & CFLAGS should not include any cross-compilation options.
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ auparse/Makefile.am | 74 +++++++++++++++++++++++++++++++++++++++++++++++++++++
+ lib/Makefile.am     | 34 ++++++++++++++++++++++++
+ 2 files changed, 108 insertions(+)
+
+diff --git a/auparse/Makefile.am b/auparse/Makefile.am
+index 742f7ba..989817e 100644
+--- a/auparse/Makefile.am
++++ b/auparse/Makefile.am
+@@ -82,7 +82,9 @@ gen_accesstabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h accesstab.h
+ gen_accesstabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="accesstab.h"'
+ $(gen_accesstabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_accesstabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_accesstabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_accesstabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_accesstabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ accesstabs.h: gen_accesstabs_h Makefile
+ 	./gen_accesstabs_h --i2s-transtab access > $@
+ 
+@@ -90,7 +92,9 @@ gen_captabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h captab.h
+ gen_captabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="captab.h"'
+ $(gen_captabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_captabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_captabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_captabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_captabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ captabs.h: gen_captabs_h Makefile
+ 	./gen_captabs_h --i2s cap > $@
+ 
+@@ -98,7 +102,9 @@ gen_clock_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h clocktab.h
+ gen_clock_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="clocktab.h"'
+ $(gen_clock_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_clock_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_clock_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_clock_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_clock_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ clocktabs.h: gen_clock_h Makefile
+ 	./gen_clock_h --i2s clock > $@
+ 
+@@ -107,7 +113,9 @@ gen_clone_flagtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h \
+ gen_clone_flagtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="clone-flagtab.h"'
+ $(gen_clone_flagtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_clone_flagtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_clone_flagtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_clone-flagtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_clone-flagtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ clone-flagtabs.h: gen_clone-flagtabs_h Makefile
+ 	./gen_clone-flagtabs_h --i2s-transtab clone_flag > $@
+ 
+@@ -115,7 +123,9 @@ gen_epoll_ctls_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h epoll_ctl.h
+ gen_epoll_ctls_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="epoll_ctl.h"'
+ $(gen_epoll_ctls_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_epoll_ctls_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_epoll_ctls_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_epoll_ctls_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_epoll_ctls_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ epoll_ctls.h: gen_epoll_ctls_h Makefile
+ 	./gen_epoll_ctls_h --i2s epoll_ctl > $@
+ 
+@@ -123,7 +133,9 @@ gen_famtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h famtab.h
+ gen_famtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="famtab.h"'
+ $(gen_famtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_famtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_famtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_famtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_famtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ famtabs.h: gen_famtabs_h Makefile
+ 	./gen_famtabs_h --i2s fam > $@
+ 
+@@ -132,7 +144,9 @@ gen_flagtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h flagtab.h
+ gen_flagtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="../auparse/flagtab.h"'
+ $(gen_flagtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_flagtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_flagtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_flagtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_flagtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ flagtabs.h: gen_flagtabs_h Makefile
+ 	./gen_flagtabs_h --i2s-transtab flag > $@
+ 
+@@ -141,7 +155,9 @@ gen_fcntl_cmdtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h \
+ gen_fcntl_cmdtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="fcntl-cmdtab.h"'
+ $(gen_fcntl_cmdtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_fcntl_cmdtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_fcntl_cmdtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_fcntl-cmdtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_fcntl-cmdtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ fcntl-cmdtabs.h: gen_fcntl-cmdtabs_h Makefile
+ 	./gen_fcntl-cmdtabs_h --i2s fcntl > $@
+ 
+@@ -149,7 +165,9 @@ gen_icmptypetabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h icmptypetab
+ gen_icmptypetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="icmptypetab.h"'
+ $(gen_icmptypetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_icmptypetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_icmptypetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_icmptypetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_icmptypetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ icmptypetabs.h: gen_icmptypetabs_h Makefile
+ 	./gen_icmptypetabs_h --i2s icmptype > $@
+ 
+@@ -157,7 +175,9 @@ gen_ioctlreqtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ioctlreqtab
+ gen_ioctlreqtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ioctlreqtab.h"'
+ $(gen_ioctlreqtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ioctlreqtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ioctlreqtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ioctlreqtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ioctlreqtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ioctlreqtabs.h: gen_ioctlreqtabs_h Makefile
+ 	./gen_ioctlreqtabs_h --i2s ioctlreq > $@
+ 
+@@ -165,7 +185,9 @@ gen_ipctabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ipctab.h
+ gen_ipctabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ipctab.h"'
+ $(gen_ipctabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ipctabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ipctabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ipctabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ipctabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ipctabs.h: gen_ipctabs_h Makefile
+ 	./gen_ipctabs_h --i2s ipc > $@
+ 
+@@ -173,7 +195,9 @@ gen_ipccmdtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ipccmdtab.h
+ gen_ipccmdtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ipccmdtab.h"'
+ $(gen_ipccmdtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ipccmdtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ipccmdtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ipccmdtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ipccmdtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ipccmdtabs.h: gen_ipccmdtabs_h Makefile
+ 	./gen_ipccmdtabs_h --i2s-transtab ipccmd > $@
+ 
+@@ -181,7 +205,9 @@ gen_ipoptnametabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ipoptnamet
+ gen_ipoptnametabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ipoptnametab.h"'
+ $(gen_ipoptnametabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ipoptnametabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ipoptnametabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ipoptnametabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ipoptnametabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ipoptnametabs.h: gen_ipoptnametabs_h Makefile
+ 	./gen_ipoptnametabs_h --i2s ipoptname > $@
+ 
+@@ -189,7 +215,9 @@ gen_ip6optnametabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ip6optnam
+ gen_ip6optnametabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ip6optnametab.h"'
+ $(gen_ip6optnametabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ip6optnametabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ip6optnametabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ip6optnametabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ip6optnametabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ip6optnametabs.h: gen_ip6optnametabs_h Makefile
+ 	./gen_ip6optnametabs_h --i2s ip6optname > $@
+ 
+@@ -197,7 +225,9 @@ gen_mmaptabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h mmaptab.h
+ gen_mmaptabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="mmaptab.h"'
+ $(gen_mmaptabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_mmaptabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_mmaptabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_mmaptabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_mmaptabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ mmaptabs.h: gen_mmaptabs_h Makefile
+ 	./gen_mmaptabs_h --i2s-transtab mmap > $@
+ 
+@@ -205,7 +235,9 @@ gen_mounttabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h mounttab.h
+ gen_mounttabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="mounttab.h"'
+ $(gen_mounttabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_mounttabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_mounttabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_mounttabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_mounttabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ mounttabs.h: gen_mounttabs_h Makefile
+ 	./gen_mounttabs_h --i2s-transtab mount > $@
+ 
+@@ -213,7 +245,9 @@ gen_nfprototabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h nfprototab.h
+ gen_nfprototabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="nfprototab.h"'
+ $(gen_nfprototabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_nfprototabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_nfprototabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_nfprototabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_nfprototabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ nfprototabs.h: gen_nfprototabs_h Makefile
+ 	./gen_nfprototabs_h --i2s nfproto > $@
+ 
+@@ -222,7 +256,9 @@ gen_open_flagtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h \
+ gen_open_flagtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="open-flagtab.h"'
+ $(gen_open_flagtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_open_flagtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_open_flagtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_open-flagtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_open-flagtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ open-flagtabs.h: gen_open-flagtabs_h Makefile
+ 	./gen_open-flagtabs_h --i2s-transtab open_flag > $@
+ 
+@@ -230,7 +266,9 @@ gen_persontabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h persontab.h
+ gen_persontabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="persontab.h"'
+ $(gen_persontabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_persontabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_persontabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_persontabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_persontabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ persontabs.h: gen_persontabs_h Makefile
+ 	./gen_persontabs_h --i2s person > $@
+ 
+@@ -238,7 +276,9 @@ gen_ptracetabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h ptracetab.h
+ gen_ptracetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ptracetab.h"'
+ $(gen_ptracetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ptracetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ptracetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ptracetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ptracetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ptracetabs.h: gen_ptracetabs_h Makefile
+ 	./gen_ptracetabs_h --i2s ptrace > $@
+ 
+@@ -246,7 +286,9 @@ gen_prctl_opttabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h prctl-opt-
+ gen_prctl_opttabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="prctl-opt-tab.h"'
+ $(gen_prctl_opttabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_prctl_opttabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_prctl_opttabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_prctl_opttabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_prctl_opttabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ prctl_opttabs.h: gen_prctl_opttabs_h Makefile
+ 	./gen_prctl_opttabs_h --i2s prctl_opt > $@
+ 
+@@ -254,7 +296,9 @@ gen_pktoptnametabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h pktoptnam
+ gen_pktoptnametabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="pktoptnametab.h"'
+ $(gen_pktoptnametabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_pktoptnametabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_pktoptnametabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_pktoptnametabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_pktoptnametabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ pktoptnametabs.h: gen_pktoptnametabs_h Makefile
+ 	./gen_pktoptnametabs_h --i2s pktoptname > $@
+ 
+@@ -262,7 +306,9 @@ gen_prottabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h prottab.h
+ gen_prottabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="prottab.h"'
+ $(gen_prottabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_prottabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_prottabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_prottabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_prottabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ prottabs.h: gen_prottabs_h Makefile
+ 	./gen_prottabs_h --i2s-transtab prot > $@
+ 
+@@ -270,7 +316,9 @@ gen_recvtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h recvtab.h
+ gen_recvtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="recvtab.h"'
+ $(gen_recvtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_recvtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_recvtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_recvtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_recvtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ recvtabs.h: gen_recvtabs_h Makefile
+ 	./gen_recvtabs_h --i2s-transtab recv > $@
+ 
+@@ -278,7 +326,9 @@ gen_rlimit_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h rlimittab.h
+ gen_rlimit_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="rlimittab.h"'
+ $(gen_rlimit_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_rlimit_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_rlimit_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_rlimit_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_rlimit_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ rlimittabs.h: gen_rlimit_h Makefile
+ 	./gen_rlimit_h --i2s rlimit > $@
+ 
+@@ -286,7 +336,9 @@ gen_schedtabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h schedtab.h
+ gen_schedtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="schedtab.h"'
+ $(gen_schedtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_schedtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_schedtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_schedtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_schedtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ schedtabs.h: gen_schedtabs_h Makefile
+ 	./gen_schedtabs_h --i2s sched > $@
+ 
+@@ -294,7 +346,9 @@ gen_seccomptabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h seccomptab.h
+ gen_seccomptabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="seccomptab.h"'
+ $(gen_seccomptabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_seccomptabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_seccomptabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_seccomptabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_seccomptabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ seccomptabs.h: gen_seccomptabs_h Makefile
+ 	./gen_seccomptabs_h --i2s seccomp > $@
+ 
+@@ -302,7 +356,9 @@ gen_seektabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h seektab.h
+ gen_seektabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="seektab.h"'
+ $(gen_seektabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_seektabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_seektabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_seektabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_seektabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ seektabs.h: gen_seektabs_h Makefile
+ 	./gen_seektabs_h --i2s seek > $@
+ 
+@@ -310,7 +366,9 @@ gen_shm_modetabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h shm_modetab
+ gen_shm_modetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="shm_modetab.h"'
+ $(gen_shm_modetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_shm_modetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_shm_modetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_shm_modetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_shm_modetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ shm_modetabs.h: gen_shm_modetabs_h Makefile
+ 	./gen_shm_modetabs_h --i2s-transtab shm_mode > $@
+ 
+@@ -318,7 +376,9 @@ gen_signals_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h signaltab.h
+ gen_signals_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="signaltab.h"'
+ $(gen_signals_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_signals_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_signals_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_signals_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_signals_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ signaltabs.h: gen_signals_h Makefile
+ 	./gen_signals_h --i2s signal > $@
+ 
+@@ -326,7 +386,9 @@ gen_sockleveltabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h socklevelt
+ gen_sockleveltabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="sockleveltab.h"'
+ $(gen_sockleveltabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_sockleveltabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_sockleveltabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_sockleveltabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_sockleveltabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ sockleveltabs.h: gen_sockleveltabs_h Makefile
+ 	./gen_sockleveltabs_h --i2s socklevel > $@
+ 
+@@ -334,7 +396,9 @@ gen_sockoptnametabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h sockoptn
+ gen_sockoptnametabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="sockoptnametab.h"'
+ $(gen_sockoptnametabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_sockoptnametabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_sockoptnametabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_sockoptnametabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_sockoptnametabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ sockoptnametabs.h: gen_sockoptnametabs_h Makefile
+ 	./gen_sockoptnametabs_h --i2s sockoptname > $@
+ 
+@@ -342,7 +406,9 @@ gen_socktabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h socktab.h
+ gen_socktabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="socktab.h"'
+ $(gen_socktabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_socktabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_socktabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_socktabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_socktabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ socktabs.h: gen_socktabs_h Makefile
+ 	./gen_socktabs_h --i2s sock > $@
+ 
+@@ -350,7 +416,9 @@ gen_socktypetabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h socktypetab
+ gen_socktypetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="socktypetab.h"'
+ $(gen_socktypetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_socktypetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_socktypetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_socktypetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_socktypetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ socktypetabs.h: gen_socktypetabs_h Makefile
+ 	./gen_socktypetabs_h --i2s sock_type > $@
+ 
+@@ -358,7 +426,9 @@ gen_tcpoptnametabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h tcpoptnam
+ gen_tcpoptnametabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="tcpoptnametab.h"'
+ $(gen_tcpoptnametabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_tcpoptnametabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_tcpoptnametabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_tcpoptnametabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_tcpoptnametabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ tcpoptnametabs.h: gen_tcpoptnametabs_h Makefile
+ 	./gen_tcpoptnametabs_h --i2s tcpoptname > $@
+ 
+@@ -366,7 +436,9 @@ gen_typetabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h typetab.h
+ gen_typetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="typetab.h"'
+ $(gen_typetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_typetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_typetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_typetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_typetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ typetabs.h: gen_typetabs_h Makefile
+ 	./gen_typetabs_h --s2i type > $@
+ 
+@@ -374,7 +446,9 @@ gen_umounttabs_h_SOURCES = ../lib/gen_tables.c ../lib/gen_tables.h umounttab.h
+ gen_umounttabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="umounttab.h"'
+ $(gen_umounttabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_umounttabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_umounttabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_umounttabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_umounttabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ umounttabs.h: gen_umounttabs_h Makefile
+ 	./gen_umounttabs_h --i2s-transtab umount > $@
+ 
+diff --git a/lib/Makefile.am b/lib/Makefile.am
+index dddadd5..3abae46 100644
+--- a/lib/Makefile.am
++++ b/lib/Makefile.am
+@@ -73,7 +73,9 @@ gen_actiontabs_h_SOURCES = gen_tables.c gen_tables.h actiontab.h
+ gen_actiontabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="actiontab.h"'
+ $(gen_actiontabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_actiontabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_actiontabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_actiontabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_actiontabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ actiontabs.h: gen_actiontabs_h Makefile
+ 	./gen_actiontabs_h --lowercase --i2s --s2i action > $@
+ 
+@@ -82,7 +84,9 @@ gen_alpha_tables_h_SOURCES = gen_tables.c gen_tables.h alpha_table.h
+ gen_alpha_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="alpha_table.h"'
+ $(gen_alpha_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_alpha_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_alpha_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_alpha_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_alpha_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ alpha_tables.h: gen_alpha_tables_h Makefile
+ 	./gen_alpha_tables_h --lowercase --i2s --s2i alpha_syscall > $@
+ endif
+@@ -92,7 +96,9 @@ gen_arm_tables_h_SOURCES = gen_tables.c gen_tables.h arm_table.h
+ gen_arm_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="arm_table.h"'
+ $(gen_arm_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_arm_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_arm_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_arm_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_arm_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ arm_tables.h: gen_arm_tables_h Makefile
+ 	./gen_arm_tables_h --lowercase --i2s --s2i arm_syscall > $@
+ endif
+@@ -102,7 +108,9 @@ gen_aarch64_tables_h_SOURCES = gen_tables.c gen_tables.h aarch64_table.h
+ gen_aarch64_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="aarch64_table.h"'
+ $(gen_aarch64_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_aarch64_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_aarch64_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_aarch64_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_aarch64_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ aarch64_tables.h: gen_aarch64_tables_h Makefile
+ 	./gen_aarch64_tables_h --lowercase --i2s --s2i aarch64_syscall > $@
+ endif
+@@ -111,7 +119,9 @@ gen_errtabs_h_SOURCES = gen_tables.c gen_tables.h errtab.h
+ gen_errtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="errtab.h"'
+ $(gen_errtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_errtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_errtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_errtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_errtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ errtabs.h: gen_errtabs_h Makefile
+ 	./gen_errtabs_h --duplicate-ints --uppercase --i2s --s2i err > $@
+ 
+@@ -119,7 +129,9 @@ gen_fieldtabs_h_SOURCES = gen_tables.c gen_tables.h fieldtab.h
+ gen_fieldtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="fieldtab.h"'
+ $(gen_fieldtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_fieldtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_fieldtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_fieldtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_fieldtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ fieldtabs.h: gen_fieldtabs_h Makefile
+ 	./gen_fieldtabs_h --duplicate-ints --lowercase --i2s --s2i field > $@
+ 
+@@ -127,7 +139,9 @@ gen_flagtabs_h_SOURCES = gen_tables.c gen_tables.h flagtab.h
+ gen_flagtabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="flagtab.h"'
+ $(gen_flagtabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_flagtabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_flagtabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_flagtabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_flagtabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ flagtabs.h: gen_flagtabs_h Makefile
+ 	./gen_flagtabs_h --lowercase --i2s --s2i flag > $@
+ 
+@@ -135,7 +149,9 @@ gen_ftypetabs_h_SOURCES = gen_tables.c gen_tables.h ftypetab.h
+ gen_ftypetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ftypetab.h"'
+ $(gen_ftypetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ftypetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ftypetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ftypetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ftypetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ftypetabs.h: gen_ftypetabs_h Makefile
+ 	./gen_ftypetabs_h --lowercase --i2s --s2i ftype > $@
+ 
+@@ -143,7 +159,9 @@ gen_i386_tables_h_SOURCES = gen_tables.c gen_tables.h i386_table.h
+ gen_i386_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="i386_table.h"'
+ $(gen_i386_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_i386_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_i386_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_i386_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_i386_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ i386_tables.h: gen_i386_tables_h Makefile
+ 	./gen_i386_tables_h --duplicate-ints --lowercase --i2s --s2i \
+ 		i386_syscall > $@
+@@ -152,7 +170,9 @@ gen_ia64_tables_h_SOURCES = gen_tables.c gen_tables.h ia64_table.h
+ gen_ia64_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ia64_table.h"'
+ $(gen_ia64_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ia64_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ia64_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ia64_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ia64_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ia64_tables.h: gen_ia64_tables_h Makefile
+ 	./gen_ia64_tables_h --lowercase --i2s --s2i ia64_syscall > $@
+ 
+@@ -160,7 +180,9 @@ gen_machinetabs_h_SOURCES = gen_tables.c gen_tables.h machinetab.h
+ gen_machinetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="machinetab.h"'
+ $(gen_machinetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_machinetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_machinetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_machinetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_machinetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ machinetabs.h: gen_machinetabs_h Makefile
+ 	./gen_machinetabs_h --duplicate-ints --lowercase --i2s --s2i machine \
+ 		> $@
+@@ -169,7 +191,9 @@ gen_msg_typetabs_h_SOURCES = gen_tables.c gen_tables.h msg_typetab.h
+ gen_msg_typetabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="msg_typetab.h"'
+ $(gen_msg_typetabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_msg_typetabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_msg_typetabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_msg_typetabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_msg_typetabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ msg_typetabs.h: gen_msg_typetabs_h Makefile
+ 	./gen_msg_typetabs_h --uppercase --i2s --s2i msg_type > $@
+ 
+@@ -177,7 +201,9 @@ gen_optabs_h_SOURCES = gen_tables.c gen_tables.h optab.h
+ gen_optabs_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="optab.h"'
+ $(gen_optabs_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_optabs_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_optabs_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_optabs_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_optabs_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ optabs.h: gen_optabs_h Makefile
+ 	./gen_optabs_h --i2s op > $@
+ 
+@@ -185,7 +211,9 @@ gen_ppc_tables_h_SOURCES = gen_tables.c gen_tables.h ppc_table.h
+ gen_ppc_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="ppc_table.h"'
+ $(gen_ppc_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_ppc_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_ppc_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_ppc_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_ppc_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ ppc_tables.h: gen_ppc_tables_h Makefile
+ 	./gen_ppc_tables_h --lowercase --i2s --s2i ppc_syscall > $@
+ 
+@@ -193,7 +221,9 @@ gen_s390_tables_h_SOURCES = gen_tables.c gen_tables.h s390_table.h
+ gen_s390_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="s390_table.h"'
+ $(gen_s390_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_s390_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_s390_tables_h_OBJECTS): CFLAGS=$(CPPFLAGS_FOR_BUILD)
+ gen_s390_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_s390_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ s390_tables.h: gen_s390_tables_h Makefile
+ 	./gen_s390_tables_h --lowercase --i2s --s2i s390_syscall > $@
+ 
+@@ -201,7 +231,9 @@ gen_s390x_tables_h_SOURCES = gen_tables.c gen_tables.h s390x_table.h
+ gen_s390x_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="s390x_table.h"'
+ $(gen_s390x_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_s390x_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_s390x_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_s390x_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_s390x_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ s390x_tables.h: gen_s390x_tables_h Makefile
+ 	./gen_s390x_tables_h --lowercase --i2s --s2i s390x_syscall > $@
+ 
+@@ -209,6 +241,8 @@ gen_x86_64_tables_h_SOURCES = gen_tables.c gen_tables.h x86_64_table.h
+ gen_x86_64_tables_h_CFLAGS = $(CFLAGS_FOR_BUILD) '-DTABLE_H="x86_64_table.h"'
+ $(gen_x86_64_tables_h_OBJECTS): CC=$(CC_FOR_BUILD)
+ $(gen_x86_64_tables_h_OBJECTS): CPPFLAGS=$(CPPFLAGS_FOR_BUILD)
++$(gen_x86_64_tables_h_OBJECTS): CFLAGS=$(CFLAGS_FOR_BUILD)
+ gen_x86_64_tables_h$(BUILD_EXEEXT): CC=$(CC_FOR_BUILD)
++gen_x86_64_tables_h$(BUILD_EXEEXT): CFLAGS=$(CFLAGS_FOR_BUILD)
+ x86_64_tables.h: gen_x86_64_tables_h Makefile
+ 	./gen_x86_64_tables_h --lowercase --i2s --s2i x86_64_syscall > $@
+-- 
+1.9.1
+
diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 460ace0..a3fb407 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -11,6 +11,7 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
            file://audit-python-configure.patch \
            file://audit-python.patch \
            file://fix-swig-host-contamination.patch \
+           file://audit-build-gen_xxx-natively.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
1.9.1


