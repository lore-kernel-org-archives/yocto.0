Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58939E00CEC; Sun, 13 Aug 2017 17:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C50E00CC8
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 17:57:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v7E0v2Vg028752
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 17:57:02 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Sun, 13 Aug 2017 17:57:01 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Aug 2017 08:56:26 +0800
Message-ID: <20170814005626.30317-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] samhain: update to 4.2.2
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
X-List-Received-Date: Mon, 14 Aug 2017 00:57:07 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* update to version 4.2.2
* Add new recipe for standalone mode
* Add systemd support
* Add patches to fix several issues
* samhain-standalone: add ptest support
* samhain-server: no need to depend on samhain-server-native
* Move common things from the bb to the inc file

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/samhain/files/run-ptest           |   3 +
 .../samhain-configure-add-option-for-ps.patch      | 108 ++++++++++++++
 .../samhain/files/samhain-cross-compile.patch      |  51 +++++++
 .../samhain-mips64-aarch64-dnmalloc-hash-fix.patch |  44 ++++++
 .../files/samhain-not-run-ptest-on-host.patch      |  24 ++++
 .../samhain/files/samhain-pid-path.patch           |  27 ++++
 .../samhain-samhainrc-fix-files-dirs-path.patch    |  61 ++++++++
 .../samhain/files/samhain-samhainrc.patch          | 158 +++++++++++++++++++++
 .../samhain/files/samhain-sha256-big-endian.patch  |  22 +++
 .../samhain/files/samhain-standalone.default       |   3 +
 .../samhain/files/samhain-standalone.init          | 123 ++++++++++++++++
 recipes-security/samhain/files/samhain.service     |  12 ++
 ...ain-client_4.2.1.bb => samhain-client_4.2.2.bb} |   6 +-
 ...ain-server_4.2.1.bb => samhain-server_4.2.2.bb} |  35 +----
 .../samhain/samhain-standalone_4.2.2.bb            |  31 ++++
 recipes-security/samhain/samhain.inc               |  98 +++++++++----
 16 files changed, 743 insertions(+), 63 deletions(-)
 create mode 100755 recipes-security/samhain/files/run-ptest
 create mode 100644 recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch
 create mode 100644 recipes-security/samhain/files/samhain-cross-compile.patch
 create mode 100644 recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
 create mode 100644 recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch
 create mode 100644 recipes-security/samhain/files/samhain-pid-path.patch
 create mode 100644 recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
 create mode 100644 recipes-security/samhain/files/samhain-samhainrc.patch
 create mode 100644 recipes-security/samhain/files/samhain-sha256-big-endian.patch
 create mode 100644 recipes-security/samhain/files/samhain-standalone.default
 create mode 100644 recipes-security/samhain/files/samhain-standalone.init
 create mode 100644 recipes-security/samhain/files/samhain.service
 rename recipes-security/samhain/{samhain-client_4.2.1.bb => samhain-client_4.2.2.bb} (50%)
 rename recipes-security/samhain/{samhain-server_4.2.1.bb => samhain-server_4.2.2.bb} (28%)
 create mode 100644 recipes-security/samhain/samhain-standalone_4.2.2.bb

diff --git a/recipes-security/samhain/files/run-ptest b/recipes-security/samhain/files/run-ptest
new file mode 100755
index 0000000..2a4a765
--- /dev/null
+++ b/recipes-security/samhain/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+current_dir=$(dirname $(readlink -f $0))
+$current_dir/cutest
diff --git a/recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch b/recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch
new file mode 100644
index 0000000..8de0735
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch
@@ -0,0 +1,108 @@
+From 02a143f0068cbc6cea71359169210fbb3606d4bb Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Mon, 18 Jan 2016 00:24:57 -0500
+Subject: [PATCH] configure: add option for ps
+
+The configure searches hardcoded host paths for PSPATH
+and run ps commands to decide PSARG which will fail
+on host without ps:
+| configure: error: Cannot find ps in any of /usr/ucb /bin /usr/bin
+
+So add an option so we can specify the ps at configure
+to avoid host contamination.
+
+Upstream-Status: Inappropriate [cross compile specific]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ aclocal.m4   |  2 +-
+ configure.ac | 60 ++++++++++--------------------------------------------------
+ 2 files changed, 11 insertions(+), 51 deletions(-)
+
+diff --git a/aclocal.m4 b/aclocal.m4
+index a2e59a6..cd20a2f 100644
+--- a/aclocal.m4
++++ b/aclocal.m4
+@@ -409,7 +409,7 @@ x_includes=NONE
+ x_libraries=NONE
+ DESTDIR=
+ SH_ENABLE_OPTS="selinux posix-acl asm ssp db-reload xml-log message-queue login-watch process-check port-check mounts-check logfile-monitor userfiles debug ptrace static network udp nocl stealth micro-stealth install-name identity khide suidcheck base largefile mail external-scripts encrypt srp dnmalloc ipv6 shellexpand suid"
+-SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver kcheck gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file"
++SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver kcheck gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file ps-path"
+ 
+ # Installation directory options.
+ # These are left unexpanded so users can "make install exec_prefix=/foo"
+diff --git a/configure.ac b/configure.ac
+index 5910b1f..8c3e087 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -730,56 +730,16 @@ then
+ fi
+ AC_CHECK_HEADERS(gmp.h)
+ 
+-AC_MSG_CHECKING([for ps])
+-PS=
+-for ff in /usr/ucb /bin /usr/bin; do
+-    if test -x "$ff/ps"; then
+-       PS="$ff/ps"
+-       AC_MSG_RESULT([$PS])
+-       break
+-    fi
+-done
+-if test x$PS = x
+-then
+-	AC_MSG_RESULT([no])
+-	AC_MSG_ERROR([Cannot find ps in any of /usr/ucb /bin /usr/bin])
+-fi
+-AC_DEFINE_UNQUOTED([PSPATH], _("$PS"), [Path to ps])
+-
+-AC_MSG_CHECKING([how to use ps])
+-$PS ax >/dev/null 2>&1
+-if test $? -eq 0; then
+-   case "$host_os" in
+-   *openbsd*)
+-   one=`$PS akx | wc -l`
+-   ;;
+-   *)
+-   one=`$PS ax | wc -l`
+-   ;;
+-   esac
+-else
+-   one=0
+-fi
+-$PS -e >/dev/null 2>&1
+-if test $? -eq 0; then
+-   two=`$PS -e | wc -l`
+-else
+-   two=0
+-fi
+-if test $one -ge $two 
+-then
+-   case "$host_os" in
+-   *openbsd*)
+-	PSARG="akx"
+-	;;
+-   *)
+-	PSARG="ax"
+-	;;
+-   esac
+-else
+-	PSARG="-e"
+-fi
+-AC_DEFINE_UNQUOTED([PSARG], _("$PSARG"), [Argument for ps])
++AC_ARG_WITH(ps-path,
++	[  --with-ps-path=PATH         set path to ps command ],
++	[
++	if test "x${withval}" != xno; then
++		pspath="${withval}"
++		AC_DEFINE_UNQUOTED([PSPATH], _("${pspath}"), [Path to ps])
++		AC_DEFINE_UNQUOTED([PSARG], _("ax"), [Argument for ps])
++	fi
++	])
++
+ AC_MSG_RESULT([$PS $PSARG])
+ 
+ dnl *****************************************
+-- 
+1.9.1
+
diff --git a/recipes-security/samhain/files/samhain-cross-compile.patch b/recipes-security/samhain/files/samhain-cross-compile.patch
new file mode 100644
index 0000000..7f80a5c
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-cross-compile.patch
@@ -0,0 +1,51 @@
+From f63908427b2adb1792c59edbe38618e14ef5bc7b Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Fri, 15 Jan 2016 00:48:58 -0500
+Subject: [PATCH] Enable obfuscating binaries natively.
+
+Enable obfuscating binaries natively.
+
+The samhain build process involves an obfuscation step that attempts to
+defeat decompilation or other binary analysis techniques which might reveal
+secret information that should be known only to the system administrator.
+The obfuscation step builds several applications which run on the build host
+and then generate target code, which is then built into target binaries.
+
+This patch creates a basic infrastructure that supports building the
+obfuscation binaries natively then cross-compiling the target code by adding
+a special configure option.  In the absence of this option the old behaviour
+is preserved.
+
+Upstream-Status: Inappropriate [cross compile specific]
+    
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ Makefile.in | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 684e92b..fb090e2 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -54,7 +54,7 @@ selectconfig = @selectconfig@
+ top_builddir = .
+ 
+ INSTALL = @INSTALL@
+-INSTALL_PROGRAM = @INSTALL@ -s -m 700
++INSTALL_PROGRAM = @INSTALL@ -m 700
+ INSTALL_SHELL = @INSTALL@ -m 700
+ INSTALL_DATA = @INSTALL@ -m 600
+ INSTALL_MAN = @INSTALL@ -m 644
+@@ -525,8 +525,6 @@ install-program: $(PROGRAMS) sstrip
+ 	      echo " $(INSTALL_PROGRAM) $$p $$target"; \
+ 	      $(INSTALL_PROGRAM) $$p $$target; \
+ 	      chmod 0700 $$target; \
+-	      echo " ./sstrip $$target"; \
+-	      ./sstrip $$target; \
+ 	    else \
+ 	      echo " $(INSTALL_SHELL) $$p $$target"; \
+ 	      $(INSTALL_SHELL) $$p $$target; \
+-- 
+1.9.1
+
diff --git a/recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch b/recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
new file mode 100644
index 0000000..0608660
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
@@ -0,0 +1,44 @@
+commit 0f6bdc219e598de08a3f37887efa5dfa50e2b996
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Fri Jun 22 15:47:08 2012 -0400
+
+Hash fix for MIPS64 and AARCH64
+    
+Samhain uses the addresses of local variables in generating hash
+values.  The hashing function is designed only for 32-bit values.
+For MIPS64 when a 64-bit address is passed in the resulting hash
+exceeds the limits of the underlying mechanism and samhain
+ultimately fails.  The solution is to simply take the lower 
+32-bits of the address and use that in generating hash values.
+    
+Signed-off-by: Greg Moffatt <greg.moffatt@windriver.com>
+
+Upstream-Status: Pending
+    
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
+diff --git a/src/dnmalloc.c b/src/dnmalloc.c
+index da9a5c5..fc91400 100644
+--- a/src/dnmalloc.c
++++ b/src/dnmalloc.c
+@@ -2703,11 +2703,19 @@ static void freecilst_add(chunkinfoptr p) {
+ }
+ 
+ /* Calculate the hash table entry for a chunk */
++#if defined(CONFIG_ARCH_MIPS64) || defined(CONFIG_ARCH_AARCH64)
++#ifdef STARTHEAP_IS_ZERO
++#define hash(p)  ((((unsigned long) p) & 0x7fffffff) >> 7)
++#else
++#define hash(p)  ((((unsigned long) p - (unsigned long) startheap) & 0x7fffffff) >> 7)
++#endif
++#else
+ #ifdef STARTHEAP_IS_ZERO
+ #define hash(p)  (((unsigned long) p) >> 7)
+ #else
+ #define hash(p)  (((unsigned long) p - (unsigned long) startheap) >> 7)
+ #endif
++#endif /* CONFIG_ARCH_MIPS64 */ 
+ 
+ static void
+ hashtable_add (chunkinfoptr ci)
diff --git a/recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch b/recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch
new file mode 100644
index 0000000..5284313
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch
@@ -0,0 +1,24 @@
+not run test on host, since we are doing cross-compile
+
+Upstream-status: Inappropriate [cross compile specific]
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ Makefile.in |    1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index e1b32a8..74bfdc9 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -1234,7 +1234,6 @@ intcutest: internal.h $(OBJECTS) $(CUTEST_OBJECTS) sh_tiger_i.o $(srcsrc)/CuTest
+ 	rm x_samhain.c; \
+ 	$(LINK) sh_tiger_i.o $(CUTEST_OBJECTS) CuTestMain.o CuTest.o $(OBJECTS) $(LIBS_TRY); \
+ 	test -f ./intcutest && mv ./intcutest ./cutest; \
+-	./cutest
+ 
+ runcutest:
+ 	gdb ./cutest
+-- 
+1.7.10.4
+
diff --git a/recipes-security/samhain/files/samhain-pid-path.patch b/recipes-security/samhain/files/samhain-pid-path.patch
new file mode 100644
index 0000000..592bd16
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-pid-path.patch
@@ -0,0 +1,27 @@
+commit a932b03b65edeb02ccad2fce06bfa68a8f2fbb04
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Thu Jan 10 16:29:05 2013 -0500
+
+    Set the PID Lock path for samhain.pid
+    
+    The explicit path for samhain.pid inorder
+    for samhain to work properly after it initial
+    database build.
+    
+    Upstream-Status: Inappropriate [configuration]
+
+    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/samhainrc.linux b/samhainrc.linux
+index 10a8176..a7b06e6 100644
+--- a/samhainrc.linux
++++ b/samhainrc.linux
+@@ -639,7 +639,7 @@ SetFileCheckTime = 86400
+ 
+ ## Path to the PID file
+ #
+-# SetLockfilePath = (default: compiled-in)
++SetLockfilePath = /run/samhain.pid
+ 
+ 
+ ## The digest/checksum/hash algorithm
diff --git a/recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch b/recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
new file mode 100644
index 0000000..dad6b15
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
@@ -0,0 +1,61 @@
+From 00fb527e45da42550156197647e01de9a6b1ad52 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 3 Mar 2014 01:50:01 -0500
+Subject: [PATCH] fix real path for some files/dirs
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ samhainrc.linux |   15 +++++++--------
+ 1 file changed, 7 insertions(+), 8 deletions(-)
+
+diff --git a/samhainrc.linux b/samhainrc.linux
+index e9727b4..7775d83 100644
+--- a/samhainrc.linux
++++ b/samhainrc.linux
+@@ -93,7 +93,6 @@ dir = 99/etc
+ ##
+ file = /etc/mtab
+ file = /etc/fstab
+-file = /etc/adjtime
+ file = /etc/motd
+ file = /etc/lvm/lvm.conf
+ 
+@@ -153,11 +152,11 @@ dir = 99/var
+ 
+ [IgnoreAll]
+ dir = -1/var/cache
+-dir = -1/var/lock
+-dir = -1/var/mail
+-dir = -1/var/run
++dir = -1/run/lock
++dir = -1/var/spool/mail
++dir = -1/run
+ dir = -1/var/spool
+-dir = -1/var/tmp
++dir = -1/var/volatile/tmp
+ 
+ 
+ [Attributes]
+@@ -167,7 +166,7 @@ dir = -1/var/tmp
+ file = /var/lib/rpm/__db.00?
+ 
+ file = /var/lib/logrotate.status
+-file = /var/lib/random-seed
++file = /var/lib/urandom/random-seed
+ 
+ 
+ [GrowingLogFiles]
+@@ -176,7 +175,7 @@ file = /var/lib/random-seed
+ ## are ignored. Logfile rotation will cause a report because of shrinking
+ ## size and different inode. 
+ ##
+-dir = 99/var/log
++dir = 99/var/volatile/log
+ 
+ [Attributes]
+ #
+-- 
+1.7.9.5
+
diff --git a/recipes-security/samhain/files/samhain-samhainrc.patch b/recipes-security/samhain/files/samhain-samhainrc.patch
new file mode 100644
index 0000000..145700a
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-samhainrc.patch
@@ -0,0 +1,158 @@
+commit 4c6658441eb3ffc4e51ed70f78cbdab046957580
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Fri Jun 22 16:38:20 2012 -0400
+
+Make samhainrc OE-friendly.
+
+Patch the samhainrc that will be installed 
+as part of the 'make install' step to more
+accurately reflect what will be found, and
+what will be of concern, on a OE install.
+    
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/samhainrc.linux b/samhainrc.linux
+index 9bc5ca4..10a8176 100644
+--- a/samhainrc.linux
++++ b/samhainrc.linux
+@@ -74,7 +74,6 @@ dir = 0/
+ [Attributes]
+ file = /tmp
+ file = /dev
+-file = /media
+ file = /proc
+ file = /sys
+ 
+@@ -93,19 +92,10 @@ dir = 99/etc
+ ## check permission and ownership
+ ##
+ file = /etc/mtab
++file = /etc/fstab
+ file = /etc/adjtime
+ file = /etc/motd
+-file = /etc/lvm/.cache
+-
+-# On Ubuntu, these are in /var/lib rather than /etc
+-file = /etc/cups/certs
+-file = /etc/cups/certs/0
+-
+-# managed by fstab-sync on Fedora Core
+-file = /etc/fstab
+-
+-# modified when booting 
+-file = /etc/sysconfig/hwconf
++file = /etc/lvm/lvm.conf
+ 
+ # There are files in /etc that might change, thus changing the directory
+ # timestamps. Put it here as 'file', and in the ReadOnly section as 'dir'.
+@@ -147,10 +137,6 @@ dir = 99/dev
+ ##
+ dir = -1/dev/pts
+ 
+-# dir = -1/dev/.udevdb
+-
+-file = /dev/ppp
+-
+ #
+ # --------- /usr -----------
+ #
+@@ -167,50 +153,21 @@ dir = 99/var
+ 
+ [IgnoreAll]
+ dir = -1/var/cache
+-dir = -1/var/backups
+-dir = -1/var/games
+-dir = -1/var/gdm
+ dir = -1/var/lock
+ dir = -1/var/mail
+ dir = -1/var/run
+ dir = -1/var/spool
+ dir = -1/var/tmp
+-dir = -1/var/lib/texmf
+-dir = -1/var/lib/scrollkeeper
+ 
+ 
+ [Attributes]
+ 
+-dir = /var/lib/nfs
+-dir = /var/lib/pcmcia
+-
+ # /var/lib/rpm changes if packets are installed;
+ # /var/lib/rpm/__db.00[123] even more frequently
+ file = /var/lib/rpm/__db.00?
+ 
+-file = /var/lib/acpi-support/vbestate
+-file = /var/lib/alsa/asound.state
+-file = /var/lib/apt/lists/lock
+-file = /var/lib/apt/lists/partial
+-file = /var/lib/cups/certs
+-file = /var/lib/cups/certs/0
+-file = /var/lib/dpkg/lock
+-file = /var/lib/gdm
+-file = /var/lib/gdm/.cookie
+-file = /var/lib/gdm/.gdmfifo
+-file = /var/lib/gdm/:0.Xauth
+-file = /var/lib/gdm/:0.Xservers
+-file = /var/lib/logrotate/status
+-file = /var/lib/mysql
+-file = /var/lib/mysql/ib_logfile0
+-file = /var/lib/mysql/ibdata1
+-file = /var/lib/slocate
+-file = /var/lib/slocate/slocate.db
+-file = /var/lib/slocate/slocate.db.tmp
+-file = /var/lib/urandom
+-file = /var/lib/urandom/random-seed
++file = /var/lib/logrotate.status
+ file = /var/lib/random-seed
+-file = /var/lib/xkb
+ 
+ 
+ [GrowingLogFiles]
+@@ -325,7 +282,7 @@ IgnoreMissing = /var/lib/slocate/slocate.db.tmp
+ 
+ ## Console
+ ##
+-# PrintSeverity=info
++PrintSeverity=warn
+ 
+ ## Logfile
+ ##
+@@ -333,7 +290,7 @@ IgnoreMissing = /var/lib/slocate/slocate.db.tmp
+ 
+ ## Syslog
+ ##
+-# SyslogSeverity=none
++SyslogSeverity=info
+ 
+ ## Remote server (yule)
+ ##
+@@ -556,7 +513,8 @@ ChecksumTest=check
+ ## and I/O limit (kilobytes per second; 0 == off)
+ ## to reduce load on host.
+ #
+-# SetNiceLevel = 0
++# By default we configure samhain to be nice with everything else on the system
++SetNiceLevel = 10
+ # SetIOLimit = 0
+ 
+ ## The version string to embed in file signature databases
+@@ -565,13 +523,14 @@ ChecksumTest=check
+ 
+ ## Interval between time stamp messages
+ #
+-# SetLoopTime = 60
+-SetLoopTime = 600
++# Log a timestamp every hour
++SetLoopTime = 3600
+ 
+ ## Interval between file checks 
+ #
+ # SetFileCheckTime = 600
+-SetFileCheckTime = 7200
++# One file system check per day
++SetFileCheckTime = 86400
+ 
+ ## Alternative: crontab-like schedule
+ #
diff --git a/recipes-security/samhain/files/samhain-sha256-big-endian.patch b/recipes-security/samhain/files/samhain-sha256-big-endian.patch
new file mode 100644
index 0000000..3065c73
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-sha256-big-endian.patch
@@ -0,0 +1,22 @@
+samhain: fix sha256 for big-endian machines
+
+After computing the digest, big-endian machines would
+memset() the digest to the first byte of state instead
+of using memcpy() to transfer it.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+
+
+--- a/src/sh_checksum.c
++++ b/src/sh_checksum.c
+@@ -468,7 +468,7 @@ void SHA256_Final(sha2_byte digest[], SH
+       }
+     }
+ #else
+-    memset(d, context->state, SHA256_DIGEST_LENGTH);
++    memcpy(d, context->state, SHA256_DIGEST_LENGTH);
+     /* bcopy(context->state, d, SHA256_DIGEST_LENGTH); */
+ #endif
+   }
diff --git a/recipes-security/samhain/files/samhain-standalone.default b/recipes-security/samhain/files/samhain-standalone.default
new file mode 100644
index 0000000..507a59f
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-standalone.default
@@ -0,0 +1,3 @@
+# Set this to "yes" to start the server, after you configure it, of
+# course.
+SAMHAIN_STANDALONE_START="no"
diff --git a/recipes-security/samhain/files/samhain-standalone.init b/recipes-security/samhain/files/samhain-standalone.init
new file mode 100644
index 0000000..ac28efd
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-standalone.init
@@ -0,0 +1,123 @@
+#!/bin/sh
+# chkconfig: 2345 99 10
+# description: File Integrity Checking Daemon
+#
+# processname: samhain
+# config  : /etc/samhainrc
+# logfile : /var/log/samhain_log
+# database: /var/lib/samhain/samhain_file
+#
+
+NAME=samhain
+DAEMON=/usr/sbin/samhain
+RETVAL=0
+VERBOSE=yes
+PIDFILE=/var/run/samhain.pid
+
+. /etc/default/samhain-standalone
+
+if [ "x$SAMHAIN_STANDALONE_START" != "xyes" ]; then
+	echo "${0}: samhain disabled in /etc/default/samhain-standalone"
+	exit 0
+fi
+
+if [ -x $DAEMON ]; then
+	:
+else
+	echo "${0}: executable ${DAEMON} not found"
+	exit 1
+fi
+
+if [ ! -e /var/lib/samhain/samhain_file ]; then
+	echo "${0}: /var/lib/samhain/samhain_file does not exist.  You must"
+	echo "  run 'samhain -t init' before samhian can start."
+	exit 1
+fi
+
+samhain_done()
+{
+	if [ $RETVAL -eq 0 ]; then
+		echo "."
+	else
+		echo " failed."
+	fi
+}
+
+log_stat_msg () {
+case "$1" in
+	0)
+	echo "Service $NAME: Running";
+	;;
+	1)
+	echo "Service $NAME: Stopped and /var/run pid file exists";
+	;;
+	3)
+	echo "Service $NAME: Stopped";
+	;;
+	*)
+	echo "Service $NAME: Status unknown";
+	;;
+esac
+}
+
+case "$1" in
+  start)
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+
+	echo -n "Starting ${NAME}"
+	( /sbin/start-stop-daemon --start --quiet --exec $DAEMON )
+	RETVAL=$?
+	samhain_done
+	exit $RETVAL
+	;;
+  stop)
+    echo -n "Stopping $NAME"
+    ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+	RETVAL=$?
+	samhain_done
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+        if test -S /var/run/${NAME}.sock; then
+            /bin/rm -f /var/run/${NAME}.sock
+        fi
+	;;
+
+  restart)
+	$0 stop
+	sleep 3
+	$0 start
+	RETVAL=$?
+	;;
+
+  reload|force-reload)
+    echo -n "Reloading $NAME configuration files"
+    ( /sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON )
+    RETVAL=$?
+	samhain_done
+    ;;
+
+  status)
+	if pidof -o %PPID $DAEMON > /dev/null; then
+	    echo "Samhain running"
+	    RETVAL=0
+	else
+	    echo "Samhain not running"
+	    RETVAL=1
+	fi
+	;;
+  *)
+	echo "$0 usage: {start|stop|status|restart|reload}"
+	exit 1
+	;;
+esac
+
+exit $RETVAL
diff --git a/recipes-security/samhain/files/samhain.service b/recipes-security/samhain/files/samhain.service
new file mode 100644
index 0000000..e6dc3b9
--- /dev/null
+++ b/recipes-security/samhain/files/samhain.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=Samhain @MODE_NAME@ Daemon
+After=syslog.target network.target
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+ExecStart=@LIBDIR@/@SAMHAIN_HELPER@ start
+ExecStop=@LIBDIR@/@SAMHAIN_HELPER@ stop
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-security/samhain/samhain-client_4.2.1.bb b/recipes-security/samhain/samhain-client_4.2.2.bb
similarity index 50%
rename from recipes-security/samhain/samhain-client_4.2.1.bb
rename to recipes-security/samhain/samhain-client_4.2.2.bb
index 4b04326..812408e 100644
--- a/recipes-security/samhain/samhain-client_4.2.1.bb
+++ b/recipes-security/samhain/samhain-client_4.2.2.bb
@@ -1,15 +1,11 @@
-SAMHAIN_MODE="client"
 INITSCRIPT_PARAMS = "defaults 15 85"
 
 require samhain.inc
 
-#Let the default Logserver be 127.0.0.1
+# Let the default Logserver be 127.0.0.1
 EXTRA_OECONF += " \
         --with-logserver=${SAMHAIN_SERVER} \
         --with-port=${SAMHAIN_PORT} \
-        --with-config-file=/etc/samhainrc \
-        --with-data-file=/var/samhain/samhain.data \
-        --with-pid-file=/var/samhain/samhain.pid \
         "
 
 RDEPENDS_${PN} = "acl zlib attr bash"
diff --git a/recipes-security/samhain/samhain-server_4.2.1.bb b/recipes-security/samhain/samhain-server_4.2.2.bb
similarity index 28%
rename from recipes-security/samhain/samhain-server_4.2.1.bb
rename to recipes-security/samhain/samhain-server_4.2.2.bb
index 7ef84db..67f1ec5 100644
--- a/recipes-security/samhain/samhain-server_4.2.1.bb
+++ b/recipes-security/samhain/samhain-server_4.2.2.bb
@@ -1,39 +1,14 @@
-SAMHAIN_MODE="server"
 INITSCRIPT_PARAMS = "defaults 14 86"
 
 require samhain.inc
 
-DEPENDS = "gmp samhain-server-native"
-
-EXTRA_OECONF += "--enable-network=${SAMHAIN_MODE} "
-
-# supports mysql|postgresql|oracle|odbc but postgresql is the only one available
-
-PACKAGECONFIG ??= "postgresql"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6', '', d)}"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
-
-PACKAGECONFIG[postgres]  = "--with-database=postgresql --enable-xml-log, "", postgresql"
-PACKAGECONFIG[suidcheck]  = "--enable-suidcheck","" , "
-PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
-PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
-PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
-PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
-PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux"
-PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
+DEPENDS = "gmp"
 
 SRC_URI += "file://samhain-server-volatiles"
 
 TARGET_CC_ARCH += "${LDFLAGS}"
 
-EXTRA_OECONF += " \
-    --with-config-file=REQ_FROM_SERVER/etc/samhainrc \
-    --with-data-file=REQ_FROM_SERVER/var/lib/samhain/samhain_file \
-    "
-
 do_install_append() {
-    cd ${S}
     install -d ${D}${sysconfdir}/default/volatiles
     install -m 0644 ${WORKDIR}/samhain-server-volatiles \
         ${D}${sysconfdir}/default/volatiles/samhain-server
@@ -42,13 +17,5 @@ do_install_append() {
         init/samhain.startLSB ${D}/var/lib/samhain
 }
 
-PACKAGES = "${PN} ${PN}-doc ${PN}-dbg"
-
-FILES_${PN} += "${sbindir}/*"
-
-FILES_${PN}-dbg += " \
-    ${sbindir}/.debug/* \
-    "
-
 RDEPENDS_${PN} += "gmp bash perl"
 BBCLASSEXTEND = "native"
diff --git a/recipes-security/samhain/samhain-standalone_4.2.2.bb b/recipes-security/samhain/samhain-standalone_4.2.2.bb
new file mode 100644
index 0000000..4fed9e9
--- /dev/null
+++ b/recipes-security/samhain/samhain-standalone_4.2.2.bb
@@ -0,0 +1,31 @@
+require samhain.inc
+
+SRC_URI += "file://samhain-not-run-ptest-on-host.patch \
+            file://run-ptest \
+"
+
+PROVIDES += "samhain"
+
+SYSTEMD_SERVICE_${PN} = "samhain.service"
+
+inherit ptest
+
+do_compile() {
+	if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'yes', 'no', d)}" = "yes" ]; then
+		oe_runmake cutest
+		rm -f ${S}*.o config_xor.h internal.h
+	fi
+	oe_runmake "$@"
+}
+
+do_install_append() {
+    ln -sf ${INITSCRIPT_NAME} ${D}${sysconfdir}/init.d/samhain
+}
+
+do_install_ptest() {
+	mkdir -p ${D}${PTEST_PATH}
+	install ${S}/cutest ${D}${PTEST_PATH}
+}
+
+RPROVIDES_${PN} += "samhain"
+RCONFLICTS_${PN} = "samhain-client samhain-server"
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 007264d..83b2db2 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -5,25 +5,60 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
 
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
-	   file://${INITSCRIPT_NAME}.init \
-	   file://${INITSCRIPT_NAME}.default \
-	  "
-
-SRC_URI[md5sum] = "6de1060d6e79c4893d8d89d5cbd3c1b0"
-SRC_URI[sha256sum] = "93beabb19ac68fb5336a3d8f6b5414de05a460ff6982c41a4e3fb2082e769791"
+           file://samhain-cross-compile.patch \
+           file://samhain-mips64-aarch64-dnmalloc-hash-fix.patch \
+           file://samhain-samhainrc.patch \
+           file://samhain-samhainrc-fix-files-dirs-path.patch \
+           file://samhain-pid-path.patch \
+           file://samhain-sha256-big-endian.patch \
+           file://samhain-configure-add-option-for-ps.patch \
+           file://${INITSCRIPT_NAME}.init \
+           file://${INITSCRIPT_NAME}.default \
+           file://samhain.service \
+           "
+
+SRC_URI[md5sum] = "f499d5d06bfd1d787073a45bf28dd60f"
+SRC_URI[sha256sum] = "0f3e64afb3f00064c9b136d34a72d580cd41248c5941eba0452f364a109003c7"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-inherit autotools-brokensep update-rc.d pkgconfig
+inherit autotools-brokensep update-rc.d pkgconfig systemd
 
 SAMHAIN_PORT ??= "49777"
 SAMHAIN_SERVER ??= "NULL"
 
-INITSCRIPT_NAME = "samhain-${SAMHAIN_MODE}"
+INITSCRIPT_NAME = "${BPN}"
 INITSCRIPT_PARAMS ?= "defaults"
 
-
-PACKAGECONFIG ??= ""
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "${INITSCRIPT_NAME}.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+# mode mapping:
+# BPN                MODE_NAME   SAMHAIN_MODE
+# samhain-standalone standalone  no
+# samhain-client     client      client
+# samhain-server     server      server
+MODE_NAME = "${@d.getVar('BPN').split('-')[1]}"
+SAMHAIN_MODE = "${@oe.utils.ifelse(d.getVar('MODE_NAME') == 'standalone', 'no', '${MODE_NAME}')}"
+
+# supports mysql|postgresql|oracle|odbc but postgresql is the only one available
+
+PACKAGECONFIG ??= "postgresql ps"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+
+PACKAGECONFIG[postgres]  = "--with-database=postgresql --enable-xml-log, "", postgresql"
+PACKAGECONFIG[suidcheck]  = "--enable-suidcheck","" , "
+PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
+PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
+PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
+PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
+PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux"
+PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
+PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
+PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
 
 do_unpack_samhain() {
     cd ${WORKDIR}
@@ -72,6 +107,9 @@ do_configure () {
 	--includedir=${includedir} \
 	--infodir=${infodir} \
 	--mandir=${mandir} \
+	--enable-network=${SAMHAIN_MODE} \
+	--with-pid-file=${localstatedir}/run/samhain.pid \
+	--with-data-file=${localstatedir}/lib/samhain/samhain_file \
 	${EXTRA_OECONF}
 }
 
@@ -82,24 +120,36 @@ do_compile_prepend_libc-musl () {
 # Install the init script, it's default file, and the extraneous
 # documentation.
 do_install_append () {
-	cd ${S}
 	oe_runmake install DESTDIR='${D}' INSTALL=install-boot
-	install -d ${D}${sysconfdir}/init.d
-	install -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
+
+	install -D -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
 		${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
 
-	install -d ${D}${sysconfdir}/default
-	install -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.default \
+	install -D -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.default \
 		${D}${sysconfdir}/default/${INITSCRIPT_NAME}
 
-	install -d ${D}${docdir}/${PN}
-	cp -r docs/* ${D}${docdir}/${PN}
-	cp -r scripts ${D}${docdir}/${PN}
-	install -d -m 755 ${D}/var/samhain
+	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+		if [ "${SAMHAIN_MODE}" = "no" ]; then
+		    install -D -m 0644 ${WORKDIR}/samhain.service ${D}/${systemd_system_unitdir}/samhain.service
+		else
+		    install -D -m 0644 ${WORKDIR}/samhain.service ${D}/${systemd_system_unitdir}/${BPN}.service
+		fi
+		install -D -m 0755 ${WORKDIR}/${BPN}.init ${D}/${libexecdir}/${BPN}
+		sed -i -e 's,@LIBDIR@,${libexecdir},' \
+		       -e 's,@SAMHAIN_HELPER@,${BPN},' \
+		       -e 's,@MODE_NAME@,${MODE_NAME},' \
+		       ${D}${systemd_system_unitdir}/samhain*.service
+    fi
+
+	install -d ${D}${docdir}/${BPN}
+	cp -r docs/* ${D}${docdir}/${BPN}
+	cp -r scripts ${D}${docdir}/${BPN}
+	install -d -m 755 ${D}${localstatedir}/samhain
+
+	# Prevent QA warnings about installed ${localstatedir}/run
+	if [ -d ${D}${localstatedir}/run ]; then
+		rmdir ${D}${localstatedir}/run
+	fi
 }
 
-FILES_${PN} += "\
-    /run \
-    "
-
-INSANE_SKIP_${PN} = "already-stripped"
+FILES_${PN} += "${systemd_system_unitdir}"
-- 
2.11.0


