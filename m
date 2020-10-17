Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.3056.1602957842583939081
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YxYKu5sh;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id k8so3433111pfk.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=WW8xIcPkmxZsXGpy53InGJW3GCkC5L5FkTRlR15y468=;
        b=YxYKu5sh8XGh282YEXLFx91sgP7bPrB7Hx33wm4jZbF5vhMW5FHvs7eafUua2CAOVh
         ywqSVFTGpp9Pw2stkLlk7hsS/FWeGvyUTR+zubKd17CssUbdlQzf2CpTBWnJBGSZxm5X
         g+9pRKtNof3JOIolXv8JWnJRsLXJTF0IMgBGKqr/HEXxmaA2yEnxbdNOZquQ+sNgBmDn
         tj3pYXq2enNL9wL/dphEAef11JYWNRiw6ZsDIJKoL4dedstM3iBzJl+ROxz247+qOa1R
         IgbEqpl3k1ja1+W9c/dP+ykxsk3PeaeiCwaNEhSSvd2beSPGLornSFm/9NadUgDj0glM
         vuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=WW8xIcPkmxZsXGpy53InGJW3GCkC5L5FkTRlR15y468=;
        b=lXork8it2hufXyMFUvNlYG7f7G+B70hFuabAq0LYQ1S1r0S6Zgivwn/Fws7Wmi57aV
         Bni5saRZCy3iZDefJ2jjmWfYb4cBTwjEKhlmBfJYMfEGBVWUSpnMRLXU5p7ensZzf97h
         sNcNkC5Erv5kGENQQ1a4ka21PjU/2/SDjMgW5QQTduYdi/9iSa2KOpxmTRDCkxMRzbm1
         769w+iO8ea8wKcj+W+P7zEWtr824BSFKSDF1XfyVApdiizzcruARtKiJykHd4SRxiw/Z
         9WS2+9RX57LrnbFx1rkr6aR3UYGp5hUl6OvMm7cjVqpHcDIzFV/f6vlwQ0WJH5o0UHg1
         cU4g==
X-Gm-Message-State: AOAM531Qqrm+FKC0NLRgn7MCauME6HmM3MRVUTKWxhQtq2QJ0GEh6+RA
	1zYlxKT8fOJMAdBfPl3DqV5yQ8LQI9Y=
X-Google-Smtp-Source: ABdhPJy/8yWU3Iz8GKMR5gQM0wDxR7y6nnE9F5mPis4FllunuSLzjn2hD52gFHaRuP21a6fYeS9aMw==
X-Received: by 2002:a62:148a:0:b029:156:857e:853f with SMTP id 132-20020a62148a0000b0290156857e853fmr9346041pfu.25.1602957841641;
        Sat, 17 Oct 2020 11:04:01 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:01 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 25/32] apparmor: fix build issue with ptest enabled.
Date: Sat, 17 Oct 2020 11:03:22 -0700
Message-Id: <f01129b22ef61843e91524afbee3198fcd003e9b.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

minor spacing cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 2a7963df18e7f43c6209387b6e1a1e75ff74b6ca)
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb       | 181 +++++++++---------
 ...-Don-t-build-syscall_sysctl-if-missi.patch |  96 ++++++++++
 2 files changed, 186 insertions(+), 91 deletions(-)
 create mode 100644 recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index dcdc1f7..6ba1ea8 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -14,16 +14,17 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
 DEPENDS = "bison-native apr gettext-native coreutils-native"
 
 SRC_URI = " \
-	git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-2.13 \
-	file://disable_perl_h_check.patch \
-	file://crosscompile_perl_bindings.patch \
-	file://apparmor.rc \
-	file://functions \
-	file://apparmor \
-	file://apparmor.service \
-	file://0001-Makefile.am-suppress-perllocal.pod.patch \
-	file://run-ptest \
-	"
+    git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-2.13 \
+    file://disable_perl_h_check.patch \
+    file://crosscompile_perl_bindings.patch \
+    file://apparmor.rc \
+    file://functions \
+    file://apparmor \
+    file://apparmor.service \
+    file://0001-Makefile.am-suppress-perllocal.pod.patch \
+    file://run-ptest \
+    file://0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch \
+    "
 
 SRCREV = "df0ac742f7a1146181d8734d03334494f2015134"
 S = "${WORKDIR}/git"
@@ -54,76 +55,76 @@ python() {
 DISABLE_STATIC = ""
 
 do_configure() {
-	cd ${S}/libraries/libapparmor
-	aclocal
-	autoconf --force
-	libtoolize --automake -c --force
-	automake -ac
-	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+    cd ${S}/libraries/libapparmor
+    aclocal
+    autoconf --force
+    libtoolize --automake -c --force
+    automake -ac
+    ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
 }
 
 do_compile () {
-        # Fixes:
-        # | sed -ie 's///g' Makefile.perl
-        # | sed: -e expression #1, char 0: no previous regular expression
-        #| Makefile:478: recipe for target 'Makefile.perl' failed
-        sed -i "s@sed -ie 's///g' Makefile.perl@@" ${S}/libraries/libapparmor/swig/perl/Makefile
-
-
-	oe_runmake -C ${B}/libraries/libapparmor
-        oe_runmake -C ${B}/binutils
-        oe_runmake -C ${B}/utils
-        oe_runmake -C ${B}/parser
-        oe_runmake -C ${B}/profiles
-
-	if test -z "${HTTPD}" ; then
-        	oe_runmake -C ${B}/changehat/mod_apparmor
-	fi	
-
-	if test -z "${PAMLIB}" ; then
-        	oe_runmake -C ${B}/changehat/pam_apparmor
-	fi
+    # Fixes:
+    # | sed -ie 's///g' Makefile.perl
+    # | sed: -e expression #1, char 0: no previous regular expression
+    #| Makefile:478: recipe for target 'Makefile.perl' failed
+    sed -i "s@sed -ie 's///g' Makefile.perl@@" ${S}/libraries/libapparmor/swig/perl/Makefile
+
+
+    oe_runmake -C ${B}/libraries/libapparmor
+    oe_runmake -C ${B}/binutils
+    oe_runmake -C ${B}/utils
+    oe_runmake -C ${B}/parser
+    oe_runmake -C ${B}/profiles
+
+    if test -z "${HTTPD}" ; then
+        oe_runmake -C ${B}/changehat/mod_apparmor
+    fi
+
+    if test -z "${PAMLIB}" ; then
+        oe_runmake -C ${B}/changehat/pam_apparmor
+    fi
 }
 
 do_install () {
-	install -d ${D}/${INIT_D_DIR}
-	install -d ${D}/lib/apparmor
-	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
-	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
-	oe_runmake -C ${B}/utils DESTDIR="${D}" install
-	oe_runmake -C ${B}/parser DESTDIR="${D}" install
-	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
-
-	# If perl is disabled this script won't be any good
-	if ! ${@bb.utils.contains('PACKAGECONFIG','perl','true','false', d)}; then
-		rm -f ${D}${sbindir}/aa-notify
-	fi
-
-	if ! ${@bb.utils.contains('PACKAGECONFIG','aa-decode','true','false', d)}; then
-		rm -f ${D}${sbindir}/aa-decode
-	fi
-
-	if test -z "${HTTPD}" ; then
-		oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
-	fi
-
-	if test -z "${PAMLIB}" ; then
-		oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
-	fi
-
-	# aa-easyprof is installed by python-tools-setup.py, fix it up
-	sed -i -e 's:/usr/bin/env.*:/usr/bin/python3:' ${D}${bindir}/aa-easyprof
-	chmod 0755 ${D}${bindir}/aa-easyprof
-
-	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
-	install ${WORKDIR}/functions ${D}/lib/apparmor
-	sed -i -e 's/getconf _NPROCESSORS_ONLN/nproc/' ${D}/lib/apparmor/functions
-	sed -i -e 's/ls -AU/ls -A/' ${D}/lib/apparmor/functions  
-
-	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-		install -d ${D}${systemd_system_unitdir}
-		install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
-	fi
+    install -d ${D}/${INIT_D_DIR}
+    install -d ${D}/lib/apparmor
+    oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
+    oe_runmake -C ${B}/binutils DESTDIR="${D}" install
+    oe_runmake -C ${B}/utils DESTDIR="${D}" install
+    oe_runmake -C ${B}/parser DESTDIR="${D}" install
+    oe_runmake -C ${B}/profiles DESTDIR="${D}" install
+
+    # If perl is disabled this script won't be any good
+    if ! ${@bb.utils.contains('PACKAGECONFIG','perl','true','false', d)}; then
+        rm -f ${D}${sbindir}/aa-notify
+    fi
+
+    if ! ${@bb.utils.contains('PACKAGECONFIG','aa-decode','true','false', d)}; then
+        rm -f ${D}${sbindir}/aa-decode
+    fi
+
+    if test -z "${HTTPD}" ; then
+        oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
+    fi
+
+    if test -z "${PAMLIB}" ; then
+        oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
+    fi
+
+    # aa-easyprof is installed by python-tools-setup.py, fix it up
+    sed -i -e 's:/usr/bin/env.*:/usr/bin/python3:' ${D}${bindir}/aa-easyprof
+    chmod 0755 ${D}${bindir}/aa-easyprof
+
+    install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
+    install ${WORKDIR}/functions ${D}/lib/apparmor
+    sed -i -e 's/getconf _NPROCESSORS_ONLN/nproc/' ${D}/lib/apparmor/functions
+    sed -i -e 's/ls -AU/ls -A/' ${D}/lib/apparmor/functions  
+
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${systemd_system_unitdir}
+        install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+    fi
 }
 
 #Building ptest on arm fails.
@@ -136,30 +137,28 @@ do_compile_ptest_arm () {
 }
 
 do_compile_ptest () {
-        oe_runmake -C ${B}/tests/regression/apparmor
-        oe_runmake -C ${B}/parser/tst
-        oe_runmake -C ${B}/libraries/libapparmor
+    sed -i -e 's/cpp \-dM/${HOST_PREFIX}gcc \-dM/' ${B}/tests/regression/apparmor/Makefile
+    oe_runmake -C ${B}/tests/regression/apparmor
+    oe_runmake -C ${B}/libraries/libapparmor
 }
 
 do_install_ptest () {
-	t=${D}/${PTEST_PATH}/testsuite
-	install -d ${t}
-	install -d ${t}/tests/regression/apparmor
-	cp -rf ${B}/tests/regression/apparmor ${t}/tests/regression
+    t=${D}/${PTEST_PATH}/testsuite
+    install -d ${t}
+    install -d ${t}/tests/regression/apparmor
+    cp -rf ${B}/tests/regression/apparmor ${t}/tests/regression
 
-	install -d ${t}/parser/tst
-	cp -rf ${B}/parser/tst ${t}/parser
-	cp ${B}/parser/apparmor_parser ${t}/parser
-	cp ${B}/parser/frob_slack_rc ${t}/parser
+    cp ${B}/parser/apparmor_parser ${t}/parser
+    cp ${B}/parser/frob_slack_rc ${t}/parser
 
-	install -d ${t}/libraries/libapparmor
-	cp -rf ${B}/libraries/libapparmor ${t}/libraries
+    install -d ${t}/libraries/libapparmor
+    cp -rf ${B}/libraries/libapparmor ${t}/libraries
 
-	install -d ${t}/common
-	cp -rf ${B}/common ${t}
+    install -d ${t}/common
+    cp -rf ${B}/common ${t}
 
-	install -d ${t}/binutils
-	cp -rf ${B}/binutils ${t}
+    install -d ${t}/binutils
+    cp -rf ${B}/binutils ${t}
 }
 
 #Building ptest on arm fails.
diff --git a/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch b/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch
new file mode 100644
index 0000000..3cd1e88
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch
@@ -0,0 +1,96 @@
+From 7a7c7fb346ded6f017c8df44486778a5f032d41a Mon Sep 17 00:00:00 2001
+From: John Johansen <john.johansen@canonical.com>
+Date: Tue, 29 Sep 2020 03:05:22 -0700
+Subject: [PATCH] regression tests: Don't build syscall_sysctl if missing
+ kernel headers
+
+sys/sysctl.h is not guaranteed to exist anymore since
+https://sourceware.org/pipermail/glibc-cvs/2020q2/069366.html
+
+which is a follow on to the kernel commit
+61a47c1ad3a4 sysctl: Remove the sysctl system call
+
+While the syscall_sysctl currently checks if the kernel supports
+sysctrs before running the tests. The tests can't even build if the
+kernel headers don't have the sysctl defines.
+
+Fixes: https://gitlab.com/apparmor/apparmor/-/issues/119
+Fixes: https://bugs.launchpad.net/apparmor/+bug/1897288
+MR: https://gitlab.com/apparmor/apparmor/-/merge_requests/637
+Signed-off-by: John Johansen <john.johansen@canonical.com>
+Acked-by: Steve Beattie <steve.beattie@canonical.com>
+(cherry picked from commit 2e5a266eb715fc7e526520235a6450444775791f)
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ tests/regression/apparmor/Makefile          | 10 +++++++++-
+ tests/regression/apparmor/syscall_sysctl.sh | 15 +++++++++++----
+ 2 files changed, 20 insertions(+), 5 deletions(-)
+
+diff --git a/tests/regression/apparmor/Makefile b/tests/regression/apparmor/Makefile
+index 198ca421..c3d0cfb7 100644
+--- a/tests/regression/apparmor/Makefile
++++ b/tests/regression/apparmor/Makefile
+@@ -69,6 +69,9 @@ endif # USE_SYSTEM
+ 
+ CFLAGS += -g -O0 -Wall -Wstrict-prototypes
+ 
++USE_SYSCTL:=$(shell echo "#include <sys/sysctl.h>" | cpp -dM >/dev/null 2>/dev/null && echo true)
++
++
+ SRC=access.c \
+     at_secure.c \
+     introspect.c \
+@@ -130,7 +133,6 @@ SRC=access.c \
+     syscall_sethostname.c \
+     syscall_setdomainname.c \
+     syscall_setscheduler.c \
+-    syscall_sysctl.c \
+     sysctl_proc.c \
+     tcp.c \
+     transition.c \
+@@ -146,6 +148,12 @@ ifneq (,$(findstring $(shell uname -i),i386 i486 i586 i686 x86 x86_64))
+ SRC+=syscall_ioperm.c syscall_iopl.c
+ endif
+ 
++#only do sysctl syscall test if defines installed and OR supported by the
++# kernel
++ifeq ($(USE_SYSCTL),true)
++SRC+=syscall_sysctl.c
++endif
++
+ #only do dbus if proper libs are installl
+ ifneq (,$(shell pkg-config --exists dbus-1 && echo TRUE))
+ SRC+=dbus_eavesdrop.c dbus_message.c dbus_service.c dbus_unrequested_reply.c
+diff --git a/tests/regression/apparmor/syscall_sysctl.sh b/tests/regression/apparmor/syscall_sysctl.sh
+index f93946f3..5f856984 100644
+--- a/tests/regression/apparmor/syscall_sysctl.sh
++++ b/tests/regression/apparmor/syscall_sysctl.sh
+@@ -148,11 +148,18 @@ test_sysctl_proc()
+ # check if the kernel supports CONFIG_SYSCTL_SYSCALL
+ # generally we want to encourage kernels to disable it, but if it's
+ # enabled we want to test against it
+-settest syscall_sysctl
+-if ! res="$(${test} ro 2>&1)" && [ "$res" = "FAIL: sysctl read failed - Function not implemented" ] ; then
+-    echo "	WARNING: syscall sysctl not implemented, skipping tests ..."
++# In addition test that sysctl exists in the kernel headers, if it does't
++# then we can't even built the syscall_sysctl test
++if  echo "#include <sys/sysctl.h>" | cpp -dM >/dev/null 2>/dev/null ; then
++    settest syscall_sysctl
++
++    if ! res="$(${test} ro 2>&1)" && [ "$res" = "FAIL: sysctl read failed - Function not implemented" ] ; then
++	echo "	WARNING: syscall sysctl not implemented, skipping tests ..."
++    else
++	test_syscall_sysctl
++    fi
+ else
+-    test_syscall_sysctl
++    echo "	WARNING: syscall sysctl not supported by kernel headers, skipping tests ..."
+ fi
+ 
+ # now test /proc/sys/ paths
+-- 
+2.17.1
+
-- 
2.17.1

