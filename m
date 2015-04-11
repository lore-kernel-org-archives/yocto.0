Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC4CE009A5; Fri, 10 Apr 2015 19:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B83CE00993
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 19:12:01 -0700 (PDT)
Received: by paboj16 with SMTP id oj16so38833906pab.0
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 19:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=fNZ/mO9s6R/9eWn5tekbC7cZoqf3vGeIjnqB4u7UQQU=;
	b=E+S/00GFAKH84oAcbjo3AW1OxvvutCQhdmxM/cc8DX4gDQJJvEfaFOpuDBtNzU0KDT
	FIkMYOIS0Q0+I/MJt8qMp+vJ+oPPx3WfVlPYVgvD2mWgSJhu9o981F5cvG4UZsAUjMyu
	Vxu5/R7GBtKspD50Pq6DhAuJhADqlpJisfuL+UctLfvMIX41cpyDnm3mpr945oujElwD
	gE2DDpNCOEcIsiiMo+B2WOZmTJ7jk6DW8LCjUUAki2iBcSJFFEKqzRJD8Uy3R2Kyozzp
	WTfHNmg/8XnQVHBYoUthFv7hw6W6KUkhqZ/J+Eb1t/u43vyCI5h4cIoielnHEuwpy9wK
	HLjQ==
X-Received: by 10.70.90.162 with SMTP id bx2mr7432815pdb.60.1428718320474;
	Fri, 10 Apr 2015 19:12:00 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id rj6sm325673pbc.62.2015.04.10.19.11.58
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 10 Apr 2015 19:11:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Apr 2015 19:11:53 -0700
Message-Id: <1428718313-28089-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1428718313-28089-1-git-send-email-akuster808@gmail.com>
References: <1428718313-28089-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] libseccomp: add tests
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
X-List-Received-Date: Sat, 11 Apr 2015 02:12:03 -0000

update busybox for extend head option for test suite
remove seq -f option as it is not supported buy busybox

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/busybox/busybox/head.cfg              |  1 +
 recipes-core/busybox/busybox_%.bbappend            |  3 +++
 .../files/regresion_fixup_seq_usage.patch          | 25 ++++++++++++++++++++
 recipes-security/libseccomp/libseccomp_2.2.0.bb    | 27 +++++++++++++++++++++-
 4 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/busybox/busybox/head.cfg
 create mode 100644 recipes-core/busybox/busybox_%.bbappend
 create mode 100644 recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch

diff --git a/recipes-core/busybox/busybox/head.cfg b/recipes-core/busybox/busybox/head.cfg
new file mode 100644
index 0000000..16017ea
--- /dev/null
+++ b/recipes-core/busybox/busybox/head.cfg
@@ -0,0 +1 @@
+CONFIG_FEATURE_FANCY_HEAD=y
diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
new file mode 100644
index 0000000..8bb0706
--- /dev/null
+++ b/recipes-core/busybox/busybox_%.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://head.cfg"
diff --git a/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch b/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch
new file mode 100644
index 0000000..7832ff8
--- /dev/null
+++ b/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch
@@ -0,0 +1,25 @@
+Index: git/tests/regression
+===================================================================
+--- git.orig/tests/regression
++++ git/tests/regression
+@@ -468,13 +468,13 @@ function run_test_bpf_sim() {
+ 		# and arg ranges and generate/run every combination of requested
+ 		# tests; if no ranges were specifed, then the single test is
+ 		# run
+-		for sys in $(seq -f "%1.0f" $low_syscall $high_syscall); do
+-		for arg0 in $(seq -f "%1.0f" ${low_arg[0]} ${high_arg[0]}); do
+-		for arg1 in $(seq -f "%1.0f" ${low_arg[1]} ${high_arg[1]}); do
+-		for arg2 in $(seq -f "%1.0f" ${low_arg[2]} ${high_arg[2]}); do
+-		for arg3 in $(seq -f "%1.0f" ${low_arg[3]} ${high_arg[3]}); do
+-		for arg4 in $(seq -f "%1.0f" ${low_arg[4]} ${high_arg[4]}); do
+-		for arg5 in $(seq -f "%1.0f" ${low_arg[5]} ${high_arg[5]}); do
++		for sys in $(seq  $low_syscall $high_syscall); do
++		for arg0 in $(seq ${low_arg[0]} ${high_arg[0]}); do
++		for arg1 in $(seq ${low_arg[1]} ${high_arg[1]}); do
++		for arg2 in $(seq ${low_arg[2]} ${high_arg[2]}); do
++		for arg3 in $(seq ${low_arg[3]} ${high_arg[3]}); do
++		for arg4 in $(seq ${low_arg[4]} ${high_arg[4]}); do
++		for arg5 in $(seq ${low_arg[5]} ${high_arg[5]}); do
+ 			local -a arg=($arg0 $arg1 $arg2 $arg3 $arg4 $arg5)
+ 
+ 			# Get the generated sub-test num string
diff --git a/recipes-security/libseccomp/libseccomp_2.2.0.bb b/recipes-security/libseccomp/libseccomp_2.2.0.bb
index 02cfb39..bd970ed 100644
--- a/recipes-security/libseccomp/libseccomp_2.2.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.2.0.bb
@@ -8,7 +8,7 @@ SRCREV = "bd10aab13c7248cc0df57512617e33d6743d33a6"
 
 PV = "2.2.0+git${SRCPV}"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git;protocol=http \
+SRC_URI = "git://github.com/seccomp/libseccomp.git \
         file://0001-arch-add-a-ppc64-syscall-table.patch \
         file://0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch \
         file://0003-tools-add-ppc64-support.patch \
@@ -20,6 +20,7 @@ SRC_URI = "git://github.com/seccomp/libseccomp.git;protocol=http \
         file://0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch \
         file://0010-tools-add-ppc-support.patch \
         file://0011-tests-add-ppc-support-to-the-regression-tests.patch \
+        file://regresion_fixup_seq_usage.patch \
         "
 
 S = "${WORKDIR}/git"
@@ -29,4 +30,28 @@ inherit autotools-brokensep pkgconfig
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
 
+do_compile_appned() {
+    oe_runmake -C tests check-build
+}
+
+do_install_append() {
+    install -d ${D}/${libdir}/${PN}/tests
+    install -d ${D}/${libdir}/${PN}/tools
+    for file in $(find tests/* -executable -type f); do
+        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
+    done
+    for file in $(find tests/*.tests -type f); do
+        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
+    done
+    for file in $(find tools/* -executable -type f); do
+        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tools
+    done
+}
+
+PACKAGES += " ${PN}-tests"
+FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
+FILES_${PN}-tests = "${libdir}/${PN}/tools ${libdir}/${PN}/tests"
+FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
+
 RDEPENDS_${PN} = "bash"
+RDEPENDS_${PN}-tests = "bash"
-- 
2.3.5


