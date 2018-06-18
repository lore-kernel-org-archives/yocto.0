Return-Path: <prvs=5707ad1902=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA0DEE01331; Mon, 18 Jun 2018 06:41:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBF4FE01087
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 06:41:41 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w5IDeIx2022124; Mon, 18 Jun 2018 08:41:38 -0500
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by mx0a-00010702.pphosted.com with ESMTP id 2jn02qnfds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 18 Jun 2018 08:41:37 -0500
Received: from us-aus-exhub2.ni.corp.natinst.com
	(us-aus-exhub2.ni.corp.natinst.com [130.164.68.32])
	by us-aus-skprod2.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w5IDfbT3008230
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 18 Jun 2018 08:41:37 -0500
Received: from us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 18 Jun 2018 08:41:36 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Mon, 18 Jun 2018 08:41:35 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Joe MacDonald <joe_macdonald@mentor.com>, Philip Tricca <flihp@twobit.us>, 
	Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 18 Jun 2018 16:42:55 +0300
Message-ID: <20180618134256.24227-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-06-18_04:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 1/2] libselinux: refresh patches to remove fuzz
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
X-List-Received-Date: Mon, 18 Jun 2018 13:41:42 -0000
Content-Type: text/plain

Recent versions of bitbake starting with sumo issue a warning if patches are
applied with any fuzz (in the future it will be an errer).

Patches were regenerated using:

devtool modify <recipe>
devtool finish --force-patch-refresh <recipe> <layer_path>

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 ...file-fix-includedir-in-libselinux.pc.patch | 14 ++++++-------
 ...linux-define-FD_CLOEXEC-as-necessary.patch | 14 ++++++-------
 ...nux-drop-Wno-unused-but-set-variable.patch | 21 +++++++++++++------
 .../libselinux-make-O_CLOEXEC-optional.patch  | 12 +++++------
 ...ibselinux-make-SOCK_CLOEXEC-optional.patch | 14 ++++++-------
 5 files changed, 38 insertions(+), 37 deletions(-)

diff --git a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
index 72b97df..725141f 100644
--- a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -1,4 +1,4 @@
-From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
+From 3f633e310851cb029cb4f38d9e11a3aaef8d1099 Mon Sep 17 00:00:00 2001
 From: Robert Yang <liezhi.yang@windriver.com>
 Date: Thu, 18 Feb 2016 02:39:16 +0000
 Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
@@ -6,23 +6,21 @@ Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
 Upstream-Status: Pending
 
 Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+
 ---
  src/Makefile | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 1920029..06d291d 100644
+index a89c0f7..f304032 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -115,7 +115,7 @@ $(LIBSO): $(LOBJS)
- 	ln -sf $@ $(TARGET) 
+@@ -148,7 +148,7 @@ $(LIBSO): $(LOBJS)
+ 	ln -sf $@ $(TARGET)
  
  $(LIBPC): $(LIBPC).in ../VERSION
 -	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
 +	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
  
  selinuxswig_python_exception.i: ../include/selinux/selinux.h
- 	bash exception.sh > $@ 
--- 
-2.5.0
-
+ 	bash -e exception.sh > $@ || (rm -f $@ ; false)
diff --git a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
index 1fa1fba..ad18cf5 100644
--- a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
@@ -1,7 +1,7 @@
-From 9a843a025fb0eaad537eb9dce28da539cf2cb9c2 Mon Sep 17 00:00:00 2001
+From d0aaf391ab30b253aa22ef6547a039bcac840fc6 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe.macdonald@windriver.com>
 Date: Tue, 15 Oct 2013 10:14:41 -0400
-Subject: [PATCH 2/3] libselinux: define FD_CLOEXEC as necessary
+Subject: [PATCH] libselinux: define FD_CLOEXEC as necessary
 
 In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
 warning and duplicate the #define for FD_CLOEXEC found in
@@ -10,15 +10,16 @@ asm-generic/fcntl.h on more modern platforms.
 Uptream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
+
 ---
- libselinux/src/setrans_client.c |    5 +++++
+ src/setrans_client.c | 5 +++++
  1 file changed, 5 insertions(+)
 
 diff --git a/src/setrans_client.c b/src/setrans_client.c
-index f9065bd..e07a779 100644
+index fa188a8..a94f02c 100644
 --- a/src/setrans_client.c
 +++ b/src/setrans_client.c
-@@ -38,6 +38,11 @@ static pthread_key_t destructor_key;
+@@ -39,6 +39,11 @@ static pthread_key_t destructor_key;
  static int destructor_key_initialized = 0;
  static __thread char destructor_initialized;
  
@@ -30,6 +31,3 @@ index f9065bd..e07a779 100644
  /*
   * setransd_open
   *
--- 
-1.7.10.4
-
diff --git a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
index 9deb67d..d58e4eb 100644
--- a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
@@ -1,17 +1,26 @@
-Subject: libselinux: drop flag: -Wno-unused-but-set-variable
+From 865b8c40b331235ce2c9df1fcbbb3876c9b79338 Mon Sep 17 00:00:00 2001
+From: Randy MacLeod <Randy.MacLeod@windriver.com>
+Date: Tue, 30 Apr 2013 17:28:34 -0400
+Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
 
 Upstream status: inappropriate (older compilers only).
 
 Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
 
---- libselinux-2.1.12.orig/src/Makefile
-+++ libselinux-2.1.12/src/Makefile
-@@ -79,7 +79,7 @@
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index 2408fae..a89c0f7 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -96,7 +96,7 @@ PCRE_LDLIBS ?= -lpcre
  
- override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 $(EMFLAGS)
+ override CFLAGS += -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) $(PCRE_CFLAGS)
  
 -SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-parameter \
 +SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-parameter \
  		-Wno-shadow -Wno-uninitialized -Wno-missing-prototypes -Wno-missing-declarations
  
- RANLIB=ranlib
+ RANLIB ?= ranlib
diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
index a041dd3..6394bf0 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
@@ -1,7 +1,7 @@
-From 0a8c1c5f3d866d3a3c0f95653416f5f72587ce3a Mon Sep 17 00:00:00 2001
+From 802d224953294463fa9bc793e46f664ecfea057a Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe.macdonald@windriver.com>
 Date: Fri, 11 Oct 2013 09:56:25 -0400
-Subject: [PATCH 2/2] libselinux: make O_CLOEXEC optional
+Subject: [PATCH] libselinux: make O_CLOEXEC optional
 
 Various commits in the selinux tree in the current release added O_CLOEXEC
 to open() calls in an attempt to address file descriptor leaks as
@@ -18,6 +18,7 @@ Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
  src/procattr.c  | 16 ++++++++++++++--
  src/sestatus.c  |  8 +++++++-
@@ -25,7 +26,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 28 insertions(+), 4 deletions(-)
 
 diff --git a/src/procattr.c b/src/procattr.c
-index 7efcd7e..3007876 100644
+index 48dd8af..8bf8432 100644
 --- a/src/procattr.c
 +++ b/src/procattr.c
 @@ -79,7 +79,13 @@ static int openattr(pid_t pid, const char *attr, int flags)
@@ -78,7 +79,7 @@ index ed29dc5..0cb15b6 100644
  		goto error;
  
 diff --git a/src/stringrep.c b/src/stringrep.c
-index 2dbec2b..de2a70b 100644
+index 2d83f96..17e9232 100644
 --- a/src/stringrep.c
 +++ b/src/stringrep.c
 @@ -105,7 +105,13 @@ static struct discover_class_node * discover_class(const char *s)
@@ -96,6 +97,3 @@ index 2dbec2b..de2a70b 100644
  		if (fd < 0)
  			goto err4;
  
--- 
-2.7.4
-
diff --git a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
index 14f0ce9..febced7 100644
--- a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
@@ -1,7 +1,7 @@
-From 193d42c8312cb8b189745696065b3aa5bbcc6968 Mon Sep 17 00:00:00 2001
+From e630805d15a3b8d09330353f87a7e4a9fcc9998a Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe.macdonald@windriver.com>
 Date: Tue, 15 Oct 2013 10:07:43 -0400
-Subject: [PATCH 1/3] libselinux: make SOCK_CLOEXEC optional
+Subject: [PATCH] libselinux: make SOCK_CLOEXEC optional
 
 libselinux/src/setrans_client.c checks for the existence of SOCK_CLOEXEC
 before using it, however libselinux/src/avc_internal.c does not.  Since
@@ -12,12 +12,13 @@ way.
 Uptream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
+
 ---
- libselinux/src/avc_internal.c |    8 +++++++-
+ src/avc_internal.c | 8 +++++++-
  1 file changed, 7 insertions(+), 1 deletion(-)
 
-diff --git a/src/avc_internal.c b/libselinux/src/avc_internal.c
-index f735e73..eb0599a 100644
+diff --git a/src/avc_internal.c b/src/avc_internal.c
+index 49cecc9..148cc83 100644
 --- a/src/avc_internal.c
 +++ b/src/avc_internal.c
 @@ -60,7 +60,13 @@ int avc_netlink_open(int blocking)
@@ -35,6 +36,3 @@ index f735e73..eb0599a 100644
  	if (fd < 0) {
  		rc = fd;
  		goto out;
--- 
-1.7.10.4
-
-- 
2.17.1


