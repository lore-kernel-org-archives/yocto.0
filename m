Return-Path: <insop.song@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 579CCE01469;
	Sat, 16 Mar 2013 03:16:23 -0700 (PDT)
Received: by mail-qe0-f41.google.com with SMTP id 6so2453405qeb.0
	for <multiple recipients>; Sat, 16 Mar 2013 03:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=Oc6I3mkHA57aDwurPKqFaocAZ4DmFLSSYGcoZXDHkqM=;
	b=cb5EXtBigT0ACggnd4TlVS2uA1xwBlXumUikevWgjZfS59OWEsKEOYtRwSXQUEsodT
	BHh83pZvzEBq3w0hDA63pSqx1S4Zq/drNTlC74rrj0t1vYhK4VzZleQVILqdlPiTBKYg
	KHLAgNJf10V3RqL0qfHjyKzfYxoHWMmIooOQgE2coyHiBgb9oWVFYxSNOffLXZGdcX/c
	DHnIofDtCF9bP7nAdDz+Po4Nn3SGl8I3fa5WmYVYpfJmdcPHU+SZcWOwOMyj85h6rJJx
	ZmLBev4ZsDGVulUjRiMQG3eEahG2cvZKWSrOT99VPbtCo2An2iR46cG5VzSjA5Up4eUK
	pTdw==
X-Received: by 10.49.85.34 with SMTP id e2mr11608539qez.1.1363428982780;
	Sat, 16 Mar 2013 03:16:22 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id et9sm11955534qab.9.2013.03.16.03.16.20
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 16 Mar 2013 03:16:22 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Sat, 16 Mar 2013 03:16:11 -0700
Message-Id: <ed7886f649ab945625ccbfed0ecc74a500a7c22d.1363428594.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1363428594.git.insop.song@gmail.com>
References: <insop.song@gmail.com> <cover.1363428594.git.insop.song@gmail.com>
In-Reply-To: <cover.1363428594.git.insop.song@gmail.com>
References: <cover.1363428594.git.insop.song@gmail.com>
Subject: [PATCH 1/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Sat, 16 Mar 2013 10:16:23 -0000

*applications tested

1. rt-app
- "rt-app" is a test application that starts multiple periodic threads
  in order to simulate a real-time periodic load

  - run example

  root@qemux86:~# rt-app -t 100000:35000:d -D 1
  [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
  [rt-app] <notice> [0] starting thread with period: 100000, exec:
  35000,deadline: 100000, priority: 10
  [rt-app] <notice> [0] Locking pages in memory
  idx	period	min_et	max_et	rel_st	start		end
  deadline	dur.	slack	Budget	Used Budget
  0	100000	35000	35000	64705	305724113	305759126
  305824105	35013	64979
  ...
  0	100000	35000	35000	965099	306624507	306659526
  306724105	35019	64578
  [rt-app] <notice> [0] Exiting.

  2. schedtool
  - scheduler test tool
  - run example
  root@qemux86:~# schedtool -E -t 10000:100000 -a 0 -e yes > /dev/null&
  root@qemux86:~# schedtool -E -t 30000:100000 -a 0 -e yes > /dev/null&
  root@qemux86:~# jobs
  [1]-  Running                 schedtool -E -t 10000:100000 -a 0 -e yes
  > /dev/null &
  [2]+  Running                 schedtool -E -t 30000:100000 -a 0 -e yes
  > /dev/null &

  $ top
  Mem: 33616K used, 84308K free, 0K shrd, 2684K buff, 13904K cached
  CPU:  37% usr   5% sys   0% nic  56% idle   0% io   0% irq   0% sirq
  Load average: 911.65 428.84 84.32 35501/62 715
  PID  PPID USER     STAT   VSZ %VSZ %CPU COMMAND
  714   688 root     R     2352   2%  28% yes
  713   688 root     R     2352   2%   9% yes
  715   688 root     R     2724   2%   4% top
---
 recipes-extended/images/core-image-realtime.bb     |   12 +++++++++
 recipes-kernel/linux/linux-yocto_3.8.bbappend      |    9 +++++++
 ...adline-as-a-default-to-go-around-yocto-bu.patch |   26 ++++++++++++++++++
 recipes-tools/rt-app/rt-app.bb                     |   28 ++++++++++++++++++++
 recipes-tools/schedtool-dl/schedtool-dl.bb         |   23 ++++++++++++++++
 5 files changed, 98 insertions(+)
 create mode 100644 recipes-extended/images/core-image-realtime.bb
 create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
 create mode 100644 recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
 create mode 100644 recipes-tools/rt-app/rt-app.bb
 create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb

diff --git a/recipes-extended/images/core-image-realtime.bb b/recipes-extended/images/core-image-realtime.bb
new file mode 100644
index 0000000..d449e69
--- /dev/null
+++ b/recipes-extended/images/core-image-realtime.bb
@@ -0,0 +1,12 @@
+require recipes-core/images/core-image-minimal-dev.bb
+
+DEPENDS = "linux-yocto"
+
+IMAGE_FEATURES += "package-management ssh-server-dropbear"
+EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
+
+IMAGE_INSTALL = "\
+	${CORE_IMAGE_BASE_INSTALL} \
+	rt-app \
+	schedtool-dl \
+	"
diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend b/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..175ab91
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+KBRANCH_qemux86 = "standard/edf"
+KBRANCH_fri2 = "standard/edf"
+
+SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+
+KERNEL_FEATURES_append =" cfg/edf.scc"
diff --git a/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
new file mode 100644
index 0000000..a697e89
--- /dev/null
+++ b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
@@ -0,0 +1,26 @@
+From 041b2b65889c44c47f90313c5bf9ce61effa96df Mon Sep 17 00:00:00 2001
+From: Insop Song <insop.song@gmail.com>
+Date: Sat, 9 Mar 2013 01:23:24 -0800
+Subject: [PATCH] set "--with-deadline" as a default to go around yocto build
+ error on deadline enabled
+
+---
+ configure.ac |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index a5e2990..64e57e4 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -34,7 +34,7 @@ AC_ARG_WITH([deadline],
+ 	[AS_HELP_STRING([--with-deadline], 
+          [Add support for SCHED_DEADLINE])],
+ 	[],
+-	[with_deadline=no])
++	[with_deadline=yes])
+ 
+ AS_IF([test "x$with_deadline" != xno],
+ 	[AC_DEFINE([DLSCHED], [1], [Define if you have SCHED_DEADLINE support])
+-- 
+1.7.9.5
+
diff --git a/recipes-tools/rt-app/rt-app.bb b/recipes-tools/rt-app/rt-app.bb
new file mode 100644
index 0000000..acce437
--- /dev/null
+++ b/recipes-tools/rt-app/rt-app.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "rt-app is a test application that starts multiple periodic threads in order to simulate a real-time periodic load"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;endline=339;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
+PR = "r1"
+
+SRCREV = "e81cbe9f76ee298feded17bb7455d4deb2fb32af"
+
+SRC_URI = "git://github.com/gbagnoli/rt-app.git \
+	file://0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch \
+	"
+
+S = "${WORKDIR}/git"
+
+inherit autotools gettext pkgconfig
+
+do_configure_prepend() {
+	autoreconf --install --verbose --force
+}
+
+do_install() {
+     	install -d ${D}${bindir}
+     	install -m 0755 src/rt-app ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/rt-app" 
+
+PARALLEL_MAKE = ""
diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb b/recipes-tools/schedtool-dl/schedtool-dl.bb
new file mode 100644
index 0000000..5592175
--- /dev/null
+++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
+PR = "r1"
+
+SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
+SRCREV = "cd4e3f2f5a33c3266e25e447e8efbacb3b8c88da"
+
+S = "${WORKDIR}/git"
+
+do_compile() {
+	oe_runmake
+}
+
+do_install() {
+     	install -d ${D}${bindir}
+     	install -m 0755 schedtool ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/schedtool" 
+
+PARALLEL_MAKE = ""
-- 
1.7.9.5


