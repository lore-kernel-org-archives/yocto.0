Return-Path: <Bjoern.Stenberg@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 60B03E00283
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 07:20:07 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.298.4;
	Thu, 23 Aug 2012 16:20:05 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4331)	id 761622867D0;
	Thu, 23 Aug 2012 16:20:05 +0200 (CEST)
From: =?UTF-8?q?Bj=C3=B6rn=20Stenberg?= <bjst@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 23 Aug 2012 16:20:02 +0200
Message-ID: <1345731602-47313-4-git-send-email-bjst@enea.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1345731602-47313-1-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: bjst@enea.com does not designate
	permitted sender hosts)
Subject: [PATCH 3/3] Enable bash-ptest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 14:20:07 -0000
Content-Type: text/plain

Patch Makefile.in to allow test programs be built on host and ran on
target.
Patch tests/run-all to output PASS/FAIL for each testcase.
Patch recipe to build and install test programs and test suite.

---
 .../bash/bash-4.2/build-tests.patch                |   29 ++++++++++++++++++++
 meta/recipes-extended/bash/bash-4.2/run-ptest      |    2 +
 .../bash/bash-4.2/test-output.patch                |   19 +++++++++++++
 meta/recipes-extended/bash/bash.inc                |   18 ++++++++++++
 meta/recipes-extended/bash/bash_4.2.bb             |    5 +++-
 5 files changed, 72 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-extended/bash/bash-4.2/build-tests.patch
 create mode 100644 meta/recipes-extended/bash/bash-4.2/run-ptest
 create mode 100644 meta/recipes-extended/bash/bash-4.2/test-output.patch

diff --git a/meta/recipes-extended/bash/bash-4.2/build-tests.patch b/meta/recipes-extended/bash/bash-4.2/build-tests.patch
new file mode 100644
index 0000000..e92fab3
--- /dev/null
+++ b/meta/recipes-extended/bash/bash-4.2/build-tests.patch
@@ -0,0 +1,29 @@
+diff -uNr a/Makefile.in b/Makefile.in
+--- a/Makefile.in	2012-06-14 10:15:15.063465304 +0200
++++ b/Makefile.in	2012-06-14 10:47:02.985115849 +0200
+@@ -827,18 +827,21 @@
+ 	fi
+ 
+ recho$(EXEEXT):		$(SUPPORT_SRC)recho.c
+-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)recho.c ${LIBS_FOR_BUILD}
++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
+ 
+ zecho$(EXEEXT):		$(SUPPORT_SRC)zecho.c
+-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)zecho.c ${LIBS_FOR_BUILD}
++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
+ 
+ printenv$(EXEEXT):	$(SUPPORT_SRC)printenv.c
+-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)printenv.c ${LIBS_FOR_BUILD}
++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
+ 
+ xcase$(EXEEXT):	$(SUPPORT_SRC)xcase.c
+-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)xcase.c ${LIBS_FOR_BUILD}
++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
+ 
+ test tests check:	force $(Program) $(TESTS_SUPPORT)
++	$(MAKE) runtest
++
++runtest:
+ 	@-test -d tests || mkdir tests
+ 	@cp $(TESTS_SUPPORT) tests
+ 	@( cd $(srcdir)/tests && \
diff --git a/meta/recipes-extended/bash/bash-4.2/run-ptest b/meta/recipes-extended/bash/bash-4.2/run-ptest
new file mode 100644
index 0000000..8dd3b99
--- /dev/null
+++ b/meta/recipes-extended/bash/bash-4.2/run-ptest
@@ -0,0 +1,2 @@
+#!/bin/sh
+make -k THIS_SH=/bin/bash BUILD_DIR=. runtest
diff --git a/meta/recipes-extended/bash/bash-4.2/test-output.patch b/meta/recipes-extended/bash/bash-4.2/test-output.patch
new file mode 100644
index 0000000..065a85c
--- /dev/null
+++ b/meta/recipes-extended/bash/bash-4.2/test-output.patch
@@ -0,0 +1,19 @@
+diff -uNr a/tests/run-all b/tests/run-all
+--- a/tests/run-all	2012-06-14 10:15:15.007467700 +0200
++++ b/tests/run-all	2012-06-14 10:19:26.464678067 +0200
+@@ -22,6 +22,14 @@
+ 	case $x in
+ 	$0|run-minimal|run-gprof)	;;
+ 	*.orig|*~) ;;
+-	*)	echo $x ; sh $x ;;
++	*)	echo $x
++		output=`sh $x`
++		if [ -n "$output" ]; then
++			echo "$output"
++			echo "FAIL: $x"
++		else
++			echo "PASS: $x"
++		fi
++		;;
+ 	esac
+ done
diff --git a/meta/recipes-extended/bash/bash.inc b/meta/recipes-extended/bash/bash.inc
index 3684191..04f9940 100644
--- a/meta/recipes-extended/bash/bash.inc
+++ b/meta/recipes-extended/bash/bash.inc
@@ -21,18 +21,36 @@ ALTERNATIVE_PRIORITY = "100"
 
 export AUTOHEADER = "true"
 
+RDEPENDS_${PN}-ptest += "make"
+FILES_${PN}-dbg += "${PTEST_PATH}/.debug"
+
 do_configure_prepend () {
 	if [ ! -e acinclude.m4 ]; then
 		cat aclocal.m4 > acinclude.m4
 	fi
 }
 
+do_compile_append () {
+	oe_runmake recho zecho printenv xcase
+}
+
 do_install_append () {
 	# Move /usr/bin/bash to /bin/bash, if need
 	if [ "${base_bindir}" != "${bindir}" ]; then
 		mkdir -p ${D}${base_bindir}
 		mv ${D}${bindir}/bash ${D}${base_bindir}
 	fi
+
+        if [ "${PN}" = "${BPN}" ]; then
+            mkdir -p ${D}${PTEST_PATH}
+            install -m 0755 ${WORKDIR}/run-ptest    ${D}${PTEST_PATH}
+            install -m 0755 ${B}/Makefile           ${D}${PTEST_PATH}
+            install -m 0755 ${B}/recho              ${D}${PTEST_PATH}
+            install -m 0755 ${B}/zecho              ${D}${PTEST_PATH}
+            install -m 0755 ${B}/printenv           ${D}${PTEST_PATH}
+            install -m 0755 ${B}/xcase              ${D}${PTEST_PATH}
+            cp -r ${B}/tests                        ${D}${PTEST_PATH}/
+        fi
 }
 
 pkg_postinst_${PN} () {
diff --git a/meta/recipes-extended/bash/bash_4.2.bb b/meta/recipes-extended/bash/bash_4.2.bb
index 50f2ff6..5e9b50e 100644
--- a/meta/recipes-extended/bash/bash_4.2.bb
+++ b/meta/recipes-extended/bash/bash_4.2.bb
@@ -1,6 +1,6 @@
 require bash.inc
 
-PR = "r4"
+PR = "r5"
 
 SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
            ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-001;apply=yes;striplevel=0;name=patch001 \
@@ -14,6 +14,9 @@ SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
            ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-009;apply=yes;striplevel=0;name=patch009 \
            ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-010;apply=yes;striplevel=0;name=patch010 \
            file://execute_cmd.patch;striplevel=0 \
+           file://build-tests.patch \
+           file://test-output.patch \
+           file://run-ptest \
            "
 
 SRC_URI[tarball.md5sum] = "3fb927c7c33022f1c327f14a81c0d4b0"
-- 
1.7.5.4


