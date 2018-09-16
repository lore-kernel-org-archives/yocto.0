Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11B9CE00ACF; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE4BE00AAA
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id d19-v6so6517984pgv.1
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=LASasZXpdyL1phrd6DWDNJPNWuaHPC6cD6bLOVzvi2I=;
	b=J5UMolpX7jExc3U9hEuggRWL3Uq1vEH3g5puK22YfEodWAFQ0VVN2l6L/o1zimhbQL
	S/M0S4kirSRqldqvM1T/qB0/hbtZC6i8dhBDHHWx6e06kY4Z5Fp+9XtuxOc1eRQu7syQ
	gbAzq66ou7Kdkm7Bk4xdvCOS9YwY9UlDWu85oFmW8gQfvvTqXIO7Sbjnobqav07x5Pw9
	c4foi8WTDSkTW8zbRoXHf7UytgN6qUgarRlQGP8a6SFjUfRCZBNr9E30vwgW8sfqF7HN
	uAaEs1ifYJyfkw4XPO0ObISZuCeY7FMxnOXT44in/djDls3gksoezvYAMFRs1UaXZUqo
	hyOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=LASasZXpdyL1phrd6DWDNJPNWuaHPC6cD6bLOVzvi2I=;
	b=QJNmzqUX/eV/aYE99s3CbTnOsjIO9Z52kBar8I4B/jx4Lzyj7ftTrPMyM5fesvI9Wn
	Jq3HzyT9gNtYZ2uP99sZ8/vr4QhC2YX4QsAwC572qJOrbtBm2wg0NozpEWpbILpks32R
	ZUwXdTbuKJZwHNj1cOaoN392NM/d6HL/t4Wh4D0uh9o07zE+ml54AjIwNd0mp6gTmrBY
	cb5VQ5BVRfHZ3WnFfUwglpJNleWYpK8F6qJB3MyY9Hb0q+ccFq2vZuhkPkEQkIQVQNkd
	VmMYNHB5xFREXn0jzHCw7aU7uyjpEfXF2mvJ/25z6jsXd/9MDeF6IO7Nn9iegdwD73po
	PVug==
X-Gm-Message-State: APzg51BmnQMU+ZLoxV8VxwQSMPujYOVRIrD86gHGtMd3KUAqWJK4tqTP
	hcL4V2fC4FkO+EzmMhnXtQ2XkHg6
X-Google-Smtp-Source: ANB0VdZlA8JzeySlgbs8xn98DYWr4YO+OlUL4FhGMca0Dt3rCrIOHWQMjq1Wy3JOwbgD5/fvZ70f8Q==
X-Received: by 2002:aa7:83cd:: with SMTP id
	j13-v6mr22001759pfn.236.1537113448929; 
	Sun, 16 Sep 2018 08:57:28 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.27
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:02 -0700
Message-Id: <20180916155719.9911-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 08/25] tpm2.0: update to 2.0.1
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2.0-tss/tpm2.0-tss_1.3.0.bb            | 99 -------------------
 .../tpm2.0-tss/tpm2.0-tss_2.0.1.bb            | 93 +++++++++++++++++
 2 files changed, 93 insertions(+), 99 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
 create mode 100644 meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
deleted file mode 100644
index b673c2b..0000000
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
+++ /dev/null
@@ -1,99 +0,0 @@
-SUMMARY = "Software stack for TPM2."
-DESCRIPTION = "tpm2.0-tss like woah."
-LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
-SECTION = "tpm"
-
-DEPENDS = "autoconf-archive pkgconfig"
-
-SRCREV = "b1d9ece8c6bea2e3043943b2edfaebcdca330c38"
-
-SRC_URI = " \
-    git://github.com/tpm2-software/tpm2-tss.git;branch=1.x \
-    file://ax_pthread.m4 \
-"
-
-inherit autotools pkgconfig systemd
-
-S = "${WORKDIR}/git"
-
-do_configure_prepend () {
-	mkdir -p ${S}/m4
-	cp ${WORKDIR}/ax_pthread.m4 ${S}/m4
-	# execute the bootstrap script
-	currentdir=$(pwd)
-	cd ${S}
-	ACLOCAL="aclocal --system-acdir=${STAGING_DATADIR}/aclocal" ./bootstrap
-	cd $currentdir
-}
-
-INHERIT += "extrausers"
-EXTRA_USERS_PARAMS = "\
-	useradd -p '' tss; \
-	groupadd tss; \
-	"
-
-SYSTEMD_PACKAGES = "resourcemgr"
-SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
-SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
-
-do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
-fix_systemd_unit () {
-    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
-}
-
-do_install_append() {
-    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}${systemd_system_unitdir}
-        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
-    fi
-}
-
-PROVIDES = "${PACKAGES}"
-PACKAGES = " \
-    ${PN}-dbg \
-    ${PN}-doc \
-    libtss2 \
-    libtss2-dev \
-    libtss2-staticdev \
-    libtctidevice \
-    libtctidevice-dev \
-    libtctidevice-staticdev \
-    libtctisocket \
-    libtctisocket-dev \
-    libtctisocket-staticdev \
-    resourcemgr \
-"
-
-FILES_libtss2 = " \
-	${libdir}/libsapi.so.0.0.0 \
-	${libdir}/libmarshal.so.0.0.0 \
-"
-FILES_libtss2-dev = " \
-    ${includedir}/sapi \
-    ${includedir}/tcti/common.h \
-    ${libdir}/libsapi.so* \
-    ${libdir}/libmarshal.so* \
-    ${libdir}/pkgconfig/sapi.pc \
-"
-FILES_libtss2-staticdev = " \
-    ${libdir}/libsapi.a \
-    ${libdir}/libsapi.la \
-    ${libdir}/libmarshal.a \
-    ${libdir}/libmarshal.la \
-"
-FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0"
-FILES_libtctidevice-dev = " \
-    ${includedir}/tcti/tcti_device.h \
-    ${libdir}/libtcti-device.so* \
-    ${libdir}/pkgconfig/tcti-device.pc \
-"
-FILES_libtctidevice-staticdev = "${libdir}/libtcti-device.*a"
-FILES_libtctisocket = "${libdir}/libtcti-socket.so.0.0.0"
-FILES_libtctisocket-dev = " \
-    ${includedir}/tcti/tcti_socket.h \
-    ${libdir}/libtcti-socket.so* \
-    ${libdir}/pkgconfig/tcti-socket.pc \
-"
-FILES_libtctisocket-staticdev = "${libdir}/libtcti-socket.*a"
-FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"
diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
new file mode 100644
index 0000000..3e7b81a
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
@@ -0,0 +1,93 @@
+SUMMARY = "Software stack for TPM2."
+DESCRIPTION = "tpm2.0-tss like woah."
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0b1d631c4218b72f6b05cb58613606f4"
+SECTION = "tpm"
+
+DEPENDS = "autoconf-archive-native libgcrypt"
+
+SRCREV = "dc31e8dca9dbc77d16e419dc514ce8c526cd3351"
+
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.0.x"
+
+inherit autotools-brokensep pkgconfig systemd
+
+S = "${WORKDIR}/git"
+
+do_configure_prepend () {
+       ./bootstrap
+}
+
+INHERIT += "extrausers"
+EXTRA_USERS_PARAMS = "\
+	useradd -p '' tss; \
+	groupadd tss; \
+	"
+
+SYSTEMD_PACKAGES = "resourcemgr"
+SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
+SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
+
+do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
+fix_systemd_unit () {
+    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
+}
+
+do_install_append() {
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${systemd_system_unitdir}
+        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
+    fi
+}
+
+PROVIDES = "${PACKAGES}"
+PACKAGES = " \
+    ${PN} \
+    ${PN}-dbg \
+    ${PN}-doc \
+    libtss2-mu \
+    libtss2-mu-dev \
+    libtss2-mu-staticdev \
+    libtss2-tcti-device \
+    libtss2-tcti-device-dev \
+    libtss2-tcti-device-staticdev \
+    libtss2-tcti-mssim \
+    libtss2-tcti-mssim-dev \
+    libtss2-tcti-mssim-staticdev \
+    libtss2 \
+    libtss2-dev \
+    libtss2-staticdev \
+    resourcemgr \
+"
+
+FILES_libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
+FILES_libtss2-tcti-device-dev = " \
+    ${includedir}/tss2/tss2_tcti_device.h \
+    ${libdir}/pkgconfig/tss2-tcti-device.pc \
+    ${libdir}/libtss2-tcti-device.so"
+FILES_libtss2-tcti-device-staticdev = "${libdir}/libtss2-tcti-device.*a"
+
+FILES_libtss2-tcti-mssim = "${libdir}/libtss2-tcti-mssim.so.*"
+FILES_libtss2-tcti-mssim-dev = " \
+    ${includedir}/tss2/tss2_tcti_mssim.h \
+    ${libdir}/pkgconfig/tss2-tcti-mssim.pc \
+    ${libdir}/libtss2-tcti-mssim.so"
+FILES_libtss2-tcti-mssim-staticdev = "${libdir}/libtss2-tcti-mssim.*a"
+
+FILES_libtss2-mu = "${libdir}/libtss2-mu.so.*"
+FILES_libtss2-mu-dev = " \
+    ${includedir}/tss2/tss2_mu.h \
+    ${libdir}/pkgconfig/tss2-mu.pc \
+    ${libdir}/libtss2-mu.so"
+FILES_libtss2-mu-staticdev = "${libdir}/libtss2-mu.*a"
+
+FILES_libtss2 = "${libdir}/libtss2*so.*"
+FILES_libtss2-dev = " \
+    ${includedir} \
+    ${libdir}/pkgconfig \
+    ${libdir}/libtss2*so"
+FILES_libtss2-staticdev = "${libdir}/libtss*a"
+
+FILES_${PN} = "${libdir}/udev"
+
+FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"
-- 
2.17.1


