Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F531E00ED7; Wed, 18 Jul 2018 22:15:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3720E009B2
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 22:15:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w6J5FAEc022598
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Jul 2018 22:15:10 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 18 Jul 2018 22:15:09 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Thu, 19 Jul 2018 13:14:55 +0800
Message-ID: <1531977296-32221-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1531977296-32221-1-git-send-email-yi.zhao@windriver.com>
References: <1531977296-32221-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 2/3] libsemanage: refresh patches to fix QA warning
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
X-List-Received-Date: Thu, 19 Jul 2018 05:15:14 -0000
Content-Type: text/plain

Refresh patches with devtool command to fix do_patch warning.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...rc-Makefile-fix-includedir-in-libselinux.pc.patch | 16 +++++++---------
 .../libsemanage-Fix-execve-segfaults-on-Ubuntu.patch | 20 +++++++++-----------
 .../libsemanage-allow-to-disable-audit-support.patch |  8 +++-----
 .../libsemanage-define-FD_CLOEXEC-as-necessary.patch | 20 +++++++++-----------
 ...emanage-disable-expand-check-on-policy-load.patch | 13 +++++++------
 ...ibsemanage-drop-Wno-unused-but-set-variable.patch | 19 ++++++++++++++-----
 .../libsemanage/libsemanage-fix-path-nologin.patch   | 15 ++++++++-------
 recipes-security/selinux/libsemanage_2.7.bb          |  2 +-
 recipes-security/selinux/libsemanage_git.bb          |  2 +-
 9 files changed, 59 insertions(+), 56 deletions(-)

diff --git a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
index 72b97df..c7d7754 100644
--- a/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ b/recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -1,4 +1,4 @@
-From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
+From a7dd288d5bc0e3c92b760701c634b27bf5054007 Mon Sep 17 00:00:00 2001
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
index 5198124..507223c 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
@@ -1,4 +1,4 @@
-From 35aa581aa734d8d93dc5e08bc02d32fa3b50fae2 Mon Sep 17 00:00:00 2001
+From 982004f666ba99db050195d90ded083fa74587b9 Mon Sep 17 00:00:00 2001
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
index 91efe81..fa129fd 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,4 +1,4 @@
-From 7d23189c4541124469aad24fe1719f2a24b4ca48 Mon Sep 17 00:00:00 2001
+From 3efc3911d922cd0935d91a28d857a20dc8cc1753 Mon Sep 17 00:00:00 2001
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
index 7be4381..03f3ecd 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as-necessary.patch
@@ -1,7 +1,7 @@
-From e783080f30e00d00800ff3491d88c62b2a1c637b Mon Sep 17 00:00:00 2001
+From 171fc95c3dcec602cf65a36094e54b08b228bf76 Mon Sep 17 00:00:00 2001
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
+ src/semanage_store.c | 5 +++++
  1 file changed, 5 insertions(+)
 
-diff --git a/libsemanage/src/semanage_store.c b/libsemanage/src/semanage_store.c
-index 57ef49f..488a14a 100644
---- a/libsemanage/src/semanage_store.c
-+++ b/libsemanage/src/semanage_store.c
-@@ -65,6 +65,11 @@ static const char *DISABLESTR="disabled";
+diff --git a/src/semanage_store.c b/src/semanage_store.c
+index 1923f0f..f7a8760 100644
+--- a/src/semanage_store.c
++++ b/src/semanage_store.c
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
index d755464..fba81d0 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -1,4 +1,4 @@
-From b8c5b743c0e0435b1b89eb93c2b846bda7f132f5 Mon Sep 17 00:00:00 2001
+From f60a660f3e9efcec63f66fb9f6d9c636d1022227 Mon Sep 17 00:00:00 2001
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
index faf8fc5..94b9fe2 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
@@ -1,12 +1,21 @@
-Subject: libselinux: drop flag: -Wno-unused-but-set-variable
+From e5aea57de30c969770bd518e2a703e656202a877 Mon Sep 17 00:00:00 2001
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
index 5fc1e17..f578e8b 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
@@ -1,3 +1,6 @@
+From 21f1fee58b9467e9351d8de25d75d541c22d36e9 Mon Sep 17 00:00:00 2001
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
diff --git a/recipes-security/selinux/libsemanage_2.7.bb b/recipes-security/selinux/libsemanage_2.7.bb
index d7b5312..f88d160 100644
--- a/recipes-security/selinux/libsemanage_2.7.bb
+++ b/recipes-security/selinux/libsemanage_2.7.bb
@@ -10,7 +10,7 @@ SRC_URI += "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
 	file://libsemanage-fix-path-nologin.patch \
 	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch \
 	file://libsemanage-allow-to-disable-audit-support.patch \
 	file://libsemanage-disable-expand-check-on-policy-load.patch \
 	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
index 2e1fdc8..aeca450 100644
--- a/recipes-security/selinux/libsemanage_git.bb
+++ b/recipes-security/selinux/libsemanage_git.bb
@@ -9,7 +9,7 @@ SRC_URI += "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
 	file://libsemanage-fix-path-nologin.patch \
 	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch \
 	file://libsemanage-allow-to-disable-audit-support.patch \
 	file://libsemanage-disable-expand-check-on-policy-load.patch \
 	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-- 
2.7.4


