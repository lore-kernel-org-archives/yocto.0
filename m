Return-Path: <prvs=5707ad1902=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39933E01158; Mon, 18 Jun 2018 06:41:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533F2E010D8
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 06:41:42 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w5IDeIXm022118; Mon, 18 Jun 2018 08:41:39 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2jn02qnfdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 18 Jun 2018 08:41:39 -0500
Received: from us-aus-exch1.ni.corp.natinst.com
	(us-aus-exch1.ni.corp.natinst.com [130.164.68.11])
	by us-aus-skprod3.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w5IDfcpk001476
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 18 Jun 2018 08:41:38 -0500
Received: from us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) by
	us-aus-exch1.ni.corp.natinst.com (130.164.68.11) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 18 Jun 2018 08:41:38 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Mon, 18 Jun 2018 08:41:37 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Joe MacDonald <joe_macdonald@mentor.com>, Philip Tricca <flihp@twobit.us>, 
	Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 18 Jun 2018 16:42:56 +0300
Message-ID: <20180618134256.24227-2-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180618134256.24227-1-adrian.ratiu@ni.com>
References: <20180618134256.24227-1-adrian.ratiu@ni.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-06-18_04:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 2/2] libsemanage: refresh patches to remove fuzz
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
X-List-Received-Date: Mon, 18 Jun 2018 13:41:43 -0000
Content-Type: text/plain

Recent versions of bitbake starting with sumo issue warnings if
patches are applied with fuzz (in the future these will be errors).

Regenerated patches using:

devtool modify <recipe>
devtool finish --force-patch-refresh <recipe> <layer_path>

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 ...file-fix-includedir-in-libselinux.pc.patch | 16 +++++++--------
 ...anage-Fix-execve-segfaults-on-Ubuntu.patch | 20 +++++++++----------
 ...anage-allow-to-disable-audit-support.patch |  8 +++-----
 ...anage-define-FD_CLOEXEC-as-necessary.patch | 14 ++++++-------
 ...-disable-expand-check-on-policy-load.patch | 13 ++++++------
 ...age-drop-Wno-unused-but-set-variable.patch | 19 +++++++++++++-----
 .../libsemanage-fix-path-nologin.patch        | 15 +++++++-------
 7 files changed, 54 insertions(+), 51 deletions(-)

diff --git a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
index 72b97df..3d1e110 100644
--- a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -1,4 +1,4 @@
-From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
+From 992d02fe0d08361529a5d158119c02521786798f Mon Sep 17 00:00:00 2001
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
+index e8831ab..d3d4644 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -115,7 +115,7 @@ $(LIBSO): $(LOBJS)
- 	ln -sf $@ $(TARGET) 
+@@ -103,7 +103,7 @@ $(LIBSO): $(LOBJS)
+ 	ln -sf $@ $(TARGET)
  
  $(LIBPC): $(LIBPC).in ../VERSION
 -	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
 +	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
  
- selinuxswig_python_exception.i: ../include/selinux/selinux.h
- 	bash exception.sh > $@ 
--- 
-2.5.0
-
+ semanageswig_python_exception.i: ../include/semanage/semanage.h
+ 	bash -e exception.sh > $@ || (rm -f $@ ; false)
diff --git a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
index 5198124..e3c2f82 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
@@ -1,4 +1,4 @@
-From 35aa581aa734d8d93dc5e08bc02d32fa3b50fae2 Mon Sep 17 00:00:00 2001
+From c87bef28e768e2f6bc8612a768ebf9099d156576 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 26 Mar 2012 15:15:16 +0800
 Subject: [PATCH] libsemanage: Fix execve segfaults on Ubuntu.
@@ -8,23 +8,21 @@ this may cause segfaults on Ubuntu.
 Such as "make load" while building refpolicy.
 
 http://oss.tresys.com/pipermail/refpolicy/2011-December/004859.html
+
 ---
- src/semanage_store.c |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
+ src/semanage_store.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/semanage_store.c b/src/semanage_store.c
-index a223aa7..c0af87d 100644
+index 6158d08..1923f0f 100644
 --- a/src/semanage_store.c
 +++ b/src/semanage_store.c
-@@ -1015,7 +1015,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
- 	} else if (forkval == 0) {
+@@ -1405,7 +1405,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
+ 	if (forkval == 0) {
  		/* child process.  file descriptors will be closed
  		 * because they were set as close-on-exec. */
 -		execve(e->path, argv, NULL);
 +		execv(e->path, argv);
  		_exit(EXIT_FAILURE);	/* if execve() failed */
- 	} else {
- 		/* parent process.  wait for child to finish */
--- 
-1.7.5.4
-
+ 	}
+ 
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index 91efe81..205bc97 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,4 +1,4 @@
-From 7d23189c4541124469aad24fe1719f2a24b4ca48 Mon Sep 17 00:00:00 2001
+From 8981b979e36afe2d8384b63c3f48fa8854d1983a Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
@@ -6,6 +6,7 @@ Subject: [PATCH] libsemanage: allow to disable audit support
 Upstream-Status: Pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
  src/Makefile        | 10 +++++++++-
  src/seusers_local.c | 13 +++++++++++++
@@ -13,7 +14,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 31 insertions(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index fdb178f..43e1266 100644
+index d457208..e8831ab 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -29,6 +29,14 @@ ifeq ($(DEBUG),1)
@@ -121,6 +122,3 @@ index 2ef8d30..50d582a 100644
  
  OBJECTS = $(SOURCES:.c=.o) 
  
--- 
-2.13.0
-
diff --git a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
index 7be4381..8b15a80 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
@@ -1,7 +1,7 @@
-From e783080f30e00d00800ff3491d88c62b2a1c637b Mon Sep 17 00:00:00 2001
+From 0e97e4d19627f78bf04445cd51902ccf4f7cf239 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe.macdonald@windriver.com>
 Date: Tue, 15 Oct 2013 10:17:38 -0400
-Subject: [PATCH 3/3] libsemanage: define FD_CLOEXEC as necessary
+Subject: [PATCH] libsemanage: define FD_CLOEXEC as necessary
 
 In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
 warning and duplicate the #define for FD_CLOEXEC found in
@@ -10,15 +10,16 @@ asm-generic/fcntl.h on more modern platforms.
 Uptream-Status: Inappropriate
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
+
 ---
- libsemanage/src/semanage_store.c |    5 +++++
+ libsemanage/src/semanage_store.c | 5 +++++
  1 file changed, 5 insertions(+)
 
 diff --git a/libsemanage/src/semanage_store.c b/libsemanage/src/semanage_store.c
-index 57ef49f..488a14a 100644
+index 1923f0f..f7a8760 100644
 --- a/libsemanage/src/semanage_store.c
 +++ b/libsemanage/src/semanage_store.c
-@@ -65,6 +65,11 @@ static const char *DISABLESTR="disabled";
+@@ -66,6 +66,11 @@ typedef struct dbase_policydb dbase_t;
  
  #define TRUE 1
  
@@ -30,6 +31,3 @@ index 57ef49f..488a14a 100644
  enum semanage_file_defs {
  	SEMANAGE_ROOT,
  	SEMANAGE_TRANS_LOCK,
--- 
-1.7.10.4
-
diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
index d755464..ea7ba20 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -1,4 +1,4 @@
-From b8c5b743c0e0435b1b89eb93c2b846bda7f132f5 Mon Sep 17 00:00:00 2001
+From 4376342a5382df384cb387e2a63eaf0bddb51d26 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe@deserted.net>
 Date: Wed, 7 May 2014 11:36:27 -0400
 Subject: [PATCH] libsemanage: disable expand-check on policy load
@@ -12,14 +12,15 @@ Upstream-Status: Denied [upstream developers want to preserve the default
                  checking: http://marc.info/?l=selinux&m=121794804217721&w=2]
 
 Signed-off-by: Joe MacDonald <joe@deserted.net>
+
 ---
- src/semanage.conf |    4 ++++
+ src/semanage.conf | 4 ++++
  1 file changed, 4 insertions(+)
 
-Index: libsemanage-2.4/src/semanage.conf
-===================================================================
---- libsemanage-2.4.orig/src/semanage.conf
-+++ libsemanage-2.4/src/semanage.conf
+diff --git a/src/semanage.conf b/src/semanage.conf
+index dc8d46b..254f156 100644
+--- a/src/semanage.conf
++++ b/src/semanage.conf
 @@ -39,3 +39,7 @@ module-store = direct
  # By default, semanage will generate policies for the SELinux target.
  # To build policies for Xen, uncomment the following line.
diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
index faf8fc5..cf88150 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
@@ -1,12 +1,21 @@
-Subject: libselinux: drop flag: -Wno-unused-but-set-variable
+From 3f65789f172003c499f24f00d73a42867fccd277 Mon Sep 17 00:00:00 2001
+From: Randy MacLeod <Randy.MacLeod@windriver.com>
+Date: Tue, 30 Apr 2013 23:15:57 -0400
+Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
 
 Upstream status: inappropriate (older compilers only).
 
 Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
 
---- libsemanage-2.1.9.orig/src/Makefile
-+++ libsemanage-2.1.9/src/Makefile
-@@ -57,7 +57,7 @@
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index fdb178f..d457208 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -58,7 +58,7 @@ OBJS= $(patsubst %.c,%.o,$(SRCS)) conf-scan.o conf-parse.o
  LOBJS= $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
  CFLAGS ?= -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn -Wmissing-format-attribute
  
@@ -14,4 +23,4 @@ Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
 +SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-shadow \
  		-Wno-unused-parameter
  
- override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE 
+ override CFLAGS += -I../include -D_GNU_SOURCE
diff --git a/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch b/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
index 5fc1e17..43c5382 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
@@ -1,3 +1,6 @@
+From 1f8164e044f2f727b08c28a69bea19cbf49b071b Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 8 Feb 2013 15:16:07 +0800
 Subject: [PATCH] libsemange: fix incorrect path for nologin
 
 shadow package of oe-core and Debian has installed nologin into
@@ -7,15 +10,16 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+
 ---
- src/genhomedircon.c |    4 ++--
+ src/genhomedircon.c | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)
 
 diff --git a/src/genhomedircon.c b/src/genhomedircon.c
-index f3b9b5c..4f4865a 100644
+index b9a74b7..d574ee2 100644
 --- a/src/genhomedircon.c
 +++ b/src/genhomedircon.c
-@@ -58,7 +58,7 @@
+@@ -60,7 +60,7 @@
  
  /* other paths */
  #define PATH_SHELLS_FILE "/etc/shells"
@@ -24,7 +28,7 @@ index f3b9b5c..4f4865a 100644
  
  /* comments written to context file */
  #define COMMENT_FILE_CONTEXT_HEADER "#\n#\n# " \
-@@ -393,7 +393,7 @@ static semanage_list_t *get_home_dirs(genhomedircon_settings_t * s)
+@@ -395,7 +395,7 @@ static semanage_list_t *get_home_dirs(genhomedircon_settings_t * s)
  
  			/* NOTE: old genhomedircon printed a warning on match */
  			if (hand.matched) {
@@ -33,6 +37,3 @@ index f3b9b5c..4f4865a 100644
  			} else {
  				if (semanage_list_push(&homedir_list, path))
  					goto fail;
--- 
-1.7.9.5
-
-- 
2.17.1


