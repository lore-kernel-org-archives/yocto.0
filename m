Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5990CE00873; Fri, 20 Feb 2015 18:32:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE0AE0078E
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 18:32:51 -0800 (PST)
Received: by iecat20 with SMTP id at20so12214787iec.12
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 18:32:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=5vp9m11/QlGhjVdDJw6RKi1ra3XB2PrupQniW1TkteE=;
	b=C0XahJxixN1Xtgb3049smDXe8G5ojG3j39MczhD7kVuxtPmQDXUF0q7Uh2b10xnZzG
	SS4tFG+IBRGaY7pnNS8dQMdTBKACaqpOc4C/gD8q2hIW/ViKLtJ2dT25ZDahJvg84oWS
	zvhTWrPzJjdiltXzWWdq9d1IXPoNXxdMOd45/VGyI2KIftNQQQeFth4rgRgoPJPIxrRM
	4WwnGNa+umpjN63dCA3HuLEWPvCQP3gKg2g7hFidT0zc2UhOYgOl8/JyFBLM3nE5VX4U
	3xYg9fhRmLKntUbvR3w2jdhGEyVigJv/JsiDjRK5y4QYdgESXH4QSZqDAA8KYUNgqbuY
	xOYg==
X-Gm-Message-State: ALoCoQnAW7PtXybtPtSlNj6cGHY2xT1is2wK0htM7+C9lJoGkOdv4pngjNuWIZJX8A/37n0Zp5h9
X-Received: by 10.50.147.99 with SMTP id tj3mr426845igb.41.1424485970646;
	Fri, 20 Feb 2015 18:32:50 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id d1sm2072184igr.20.2015.02.20.18.32.49
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Feb 2015 18:32:49 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Fri, 20 Feb 2015 21:33:44 -0500
Message-Id: <1424486024-6971-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] policycoreutils: address QA issues
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
X-List-Received-Date: Sat, 21 Feb 2015 02:32:58 -0000

Both the fixfiles and sandbox utilities had dependencies on bash when they
didn't really need to.  Update sandbox and patch fixfiles.  ifgen is
python script, so ensure that python is listed as a runtime dependency.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 recipes-security/selinux/policycoreutils.inc       |  7 +-
 .../policycoreutils-fixfiles-de-bashify.patch      | 92 ++++++++++++++++++++++
 .../policycoreutils-sandbox-de-bashify.patch       | 39 +++++++++
 3 files changed, 136 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 44a5861..4846683 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -7,7 +7,10 @@ context."
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)} \
+            file://policycoreutils-fixfiles-de-bashify.patch \
+            file://policycoreutils-sandbox-de-bashify.patch \
+           "
 
 PAM_SRC_URI = "file://pam.d/newrole \
                file://pam.d/run_init \
@@ -97,7 +100,7 @@ RDEPENDS_${BPN}-sepolicy += "\
 "
 # static link to libsepol
 DEPENDS_${BPN}-sepolgen-ifgen += "libsepol"
-RDEPENDS_${BPN}-sepolgen-ifgen += "libselinux-python"
+RDEPENDS_${BPN}-sepolgen-ifgen += "python libselinux-python"
 RDEPENDS_${BPN}-sestatus += "libselinux"
 RDEPENDS_${BPN}-setfiles += "\
 	libselinux \
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
new file mode 100644
index 0000000..44d7525
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
@@ -0,0 +1,92 @@
+From 25ca94680f2fe20f49b80e8b5b180a0dbb903f17 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Fri, 20 Feb 2015 17:00:19 -0500
+Subject: [PATCH] fixfiles: de-bashify
+
+Most of the bashisms in fixfiles are pretty easy to work around, the only
+complex one is the use of PIPESTATUS.  The common solution to this is to
+use fifos but considering the action this script is performing, that's not
+necessarily the best option here.  Introducing a second invocation of rpm
+is minimal overhead on an operation that should happen very infrequently,
+so we'll try that instead.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ scripts/fixfiles | 26 +++++++++++++++-----------
+ 1 file changed, 15 insertions(+), 11 deletions(-)
+
+diff --git a/scripts/fixfiles b/scripts/fixfiles
+index 5c29eb9..10a5078 100755
+--- a/scripts/fixfiles
++++ b/scripts/fixfiles
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ # fixfiles
+ #
+ # Script to restore labels on a SELinux box
+@@ -25,7 +25,7 @@
+ # number if the current kernel version is greater than 2.6.30, a negative
+ # number if the current is less than 2.6.30 and 0 if they are the same.
+ #
+-function useseclabel {
++useseclabel() {
+ 	VER=`uname -r`
+ 	SUP=2.6.30
+ 	expr '(' "$VER" : '\([^.]*\)' ')' '-' '(' "$SUP" : '\([^.]*\)' ')' '|' \
+@@ -91,9 +91,9 @@ exclude_dirs_from_relabelling() {
+ 	  # skip not absolute path
+ 	  # skip not directory
+ 	  [ -z "${i}" ] && continue
+-	  [[ "${i}" =~ "^[[:blank:]]*#" ]] && continue
+-	  [[ ! "${i}" =~ ^/.* ]] && continue
+-	  [[ ! -d "${i}" ]] && continue
++	  echo "${i}" | egrep -q '^[[:space:]]*#' && continue
++	  echo "${i}" | egrep -v '^/.*' && continue
++	  [ ! -d "${i}" ] && continue
+ 	  exclude_from_relabelling="$exclude_from_relabelling -e $i"
+ 	  logit "skipping the directory $i"
+ 	done < /etc/selinux/fixfiles_exclude_dirs
+@@ -205,8 +205,12 @@ fi
+ }
+ 
+ rpmlist() {
+-rpm -q --qf '[%{FILESTATES} %{FILENAMES}\n]' "$1" | grep '^0 ' | cut -f2- -d ' '
+-[ ${PIPESTATUS[0]} != 0 ] && echo "$1 not found" >/dev/stderr
++    if rpm -q --qf '[%{FILESTATES} %{FILENAMES}\n]' "$1" >/dev/null
++    then
++        rpm -q --qf '[%{FILESTATES} %{FILENAMES}\n]' "$1" | grep '^0 ' | cut -f2- -d ' '
++    else
++        echo "$1 not found" >/dev/stderr
++    fi
+ }
+ 
+ #
+@@ -233,10 +237,10 @@ if [ -n "${exclude_dirs}" ]
+ then
+ 	TEMPFCFILE=`mktemp ${FC}.XXXXXXXXXX`
+ 	test -z "$TEMPFCFILE" && exit
+-	/bin/cp -p ${FC} ${TEMPFCFILE} &>/dev/null || exit
+-	tmpdirs=${tempdirs//-e/}
+-	for p in ${tmpdirs}
++	/bin/cp -p ${FC} ${TEMPFCFILE} >/dev/null 2>&1 || exit
++	for p in ${tempdirs}
+ 	do
++		[ ${p} = "-e" ] && continue
+ 		p="${p%/}"
+ 		p1="${p}(/.*)? -- <<none>>"
+ 		echo "${p1}" >> $TEMPFCFILE
+@@ -288,7 +292,7 @@ relabel() {
+ 	restore Relabel
+     fi
+ 
+-    if [ $fullFlag == 1  ]; then
++    if [ $fullFlag = 1 ]; then
+ 	fullrelabel
+     fi
+ 
+-- 
+1.9.1
+
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch b/recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch
new file mode 100644
index 0000000..c078ef6
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch
@@ -0,0 +1,39 @@
+From d3e778e0062ca441c80e2a3ef2b508f5566e1f70 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Fri, 20 Feb 2015 21:07:47 -0500
+Subject: [PATCH] sandbox: de-bashify
+
+There's no bashisms apparent in either the sandbox initscript nor the
+sandboxX script, so point them at /bin/sh instead.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ sandbox/sandbox.init | 2 +-
+ sandbox/sandboxX.sh  | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/sandbox/sandbox.init b/sandbox/sandbox.init
+index b3979bf..1893dc8 100644
+--- a/sandbox/sandbox.init
++++ b/sandbox/sandbox.init
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ ## BEGIN INIT INFO
+ # Provides: sandbox
+ # Default-Start: 3 4 5
+diff --git a/sandbox/sandboxX.sh b/sandbox/sandboxX.sh
+index eaa500d..8755d75 100644
+--- a/sandbox/sandboxX.sh
++++ b/sandbox/sandboxX.sh
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ trap "" TERM
+ context=`id -Z | secon -t -l -P`
+ export TITLE="Sandbox $context -- `grep ^#TITLE: ~/.sandboxrc | /usr/bin/cut -b8-80`"
+-- 
+1.9.1
+
-- 
1.9.1


