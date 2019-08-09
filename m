Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF29E00D74; Fri,  9 Aug 2019 02:48:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA22E00CD7
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 02:48:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x799mETO020539
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Aug 2019 02:48:24 -0700
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Fri, 9 Aug 2019 02:48:02 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Aug 2019 17:48:00 +0800
Message-ID: <1565344080-13306-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-selinux][PATCH] libselinux: fix build with glibc 2.30
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
X-List-Received-Date: Fri, 09 Aug 2019 09:48:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Fix build error:
procattr.c:27:14: error: static declaration of 'gettid' follows
non-static declaration
   27 | static pid_t gettid(void)
      |              ^~~~~~
In file included from /buildarea/build/tmp/work/core2-64-poky-linux/libselinux/2.8-r0/recipe-sysroot/usr/include/unistd.h:1170,
                 from procattr.c:2:
/buildarea/build/tmp/work/core2-64-poky-linux/libselinux/2.8-r0/recipe-sysroot/usr/include/bits/unistd_ext.h:34:16:
note: previous declaration of 'gettid' was here
   34 | extern __pid_t gettid (void) __THROW;
      |                ^~~~~~

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...Do-not-define-gettid-if-glibc-2.30-is-use.patch | 60 ++++++++++++++++++++++
 recipes-security/selinux/libselinux_2.8.bb         |  1 +
 2 files changed, 61 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch

diff --git a/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch b/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
new file mode 100644
index 0000000..fc3e37e
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
@@ -0,0 +1,60 @@
+From 2c672b4cc39fbddb6faec2c7434832058f339d59 Mon Sep 17 00:00:00 2001
+From: Petr Lautrbach <plautrba@redhat.com>
+Date: Mon, 11 Mar 2019 16:00:41 +0100
+Subject: [PATCH] libselinux: Do not define gettid() if glibc >= 2.30 is used
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Since version 2.30 glibc implements gettid() system call wrapper, see
+https://sourceware.org/bugzilla/show_bug.cgi?id=6399
+
+Fixes:
+cc -O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -I../include -D_GNU_SOURCE  -DNO_ANDROID_BACKEND   -c -o procattr.o procattr.c
+procattr.c:28:14: error: static declaration of ‘gettid’ follows non-static declaration
+   28 | static pid_t gettid(void)
+      |              ^~~~~~
+In file included from /usr/include/unistd.h:1170,
+                 from procattr.c:2:
+/usr/include/bits/unistd_ext.h:34:16: note: previous declaration of ‘gettid’ was here
+   34 | extern __pid_t gettid (void) __THROW;
+      |                ^~~~~~
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/707e4b8610733b5c9eaac0f00239778f3edb23c2]
+
+Signed-off-by: Petr Lautrbach <plautrba@redhat.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ src/procattr.c | 15 +++++++++++++--
+ 1 file changed, 13 insertions(+), 2 deletions(-)
+
+diff --git a/src/procattr.c b/src/procattr.c
+index 8bf8432..3c7b87f 100644
+--- a/src/procattr.c
++++ b/src/procattr.c
+@@ -22,8 +22,19 @@ static pthread_key_t destructor_key;
+ static int destructor_key_initialized = 0;
+ static __thread char destructor_initialized;
+ 
+-#ifndef __BIONIC__
+-/* Bionic declares this in unistd.h and has a definition for it */
++/* Bionic and glibc >= 2.30 declare gettid() system call wrapper in unistd.h and
++ * has a definition for it */
++#ifdef __BIONIC__
++  #define OVERRIDE_GETTID 0
++#elif !defined(__GLIBC_PREREQ)
++  #define OVERRIDE_GETTID 1
++#elif !__GLIBC_PREREQ(2,30)
++  #define OVERRIDE_GETTID 1
++#else
++  #define OVERRIDE_GETTID 0
++#endif
++
++#if OVERRIDE_GETTID
+ static pid_t gettid(void)
+ {
+ 	return syscall(__NR_gettid);
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/libselinux_2.8.bb b/recipes-security/selinux/libselinux_2.8.bb
index 5de4607..7545967 100644
--- a/recipes-security/selinux/libselinux_2.8.bb
+++ b/recipes-security/selinux/libselinux_2.8.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
+        file://0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch \
         "
-- 
2.7.4


