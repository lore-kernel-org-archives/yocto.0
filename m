Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DE83E00CC3; Fri, 15 Apr 2016 18:43:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 071D4E009D7
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:43:27 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id k3so10940747pav.3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=IkaKJYVZSnTYiWXyXcdX1KBW2Bi/rRZDoWHaobvtvDU=;
	b=EG1aH6nXQUfIPzQ9/MadtdkHwGPxBKQ1VYxSs2r6ABeyrbsuHoxuvoJjmmY/yaJHdA
	PrpfZpf7K/AsZI08EqxCpAe4xwfw7oBCGfb9LKZPv63TT7cMzBSqh5LwIXZGcAj1mjig
	TJ0H5PYSdqJt8Rcr8oidXC0+4ikOj/t16bKoEIFXrsu+vxGJKJbm8omsw2YqWJAhe8Vw
	yEPSdFwcZ6E/cXdj0othPBjRC94FBOLEweHQCHxCEi5b+VzNZyQkisV3bI1m9KNmVeQD
	fv5V2g1BJNmX5AZ5x8byA1r+/rmYghDbm3VzU9f9MpELFjHjT+qiDGveWXRwN2C+NalD
	iX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=IkaKJYVZSnTYiWXyXcdX1KBW2Bi/rRZDoWHaobvtvDU=;
	b=N+iLuazio0KmabdwMR6xfyDbrlbvahrk8IpSyFb4uaeWV/auzbEYb/YEUL2F1fUrSc
	IIuZOckhvJ9Mxt+dAC/Y5dSXTrSfqA6dGEDzWmZkEoTTkxdx6Byp6mPER7kIRmI+2xG2
	2bix8N4EwjkXgjjVjinvgnadXJ1eqvdviW9V/H9jHDPtH7F17IyQourKWC7Nc/w5B2IG
	Epmr4fmlmc92cEf7MbSY84/ooE5EsX7oApQ3BTWAFU918VhAtiI4bmIm8yDcnnGdqVzx
	oSUCzkb5NeAmppx0gy3J+ym01Or9NlHAwtpi1vLY6QJ+QFYQpKkG5WaD7vLNSNbQ+b79
	XQwQ==
X-Gm-Message-State: AOPr4FXeGX/icOxHuN8Jm4stIFfjzMvOW/0O2uwrZVhYbciGMHMjMiP6rADCK1bHI7sL0w==
X-Received: by 10.67.6.36 with SMTP id cr4mr33697321pad.146.1460771007085;
	Fri, 15 Apr 2016 18:43:27 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	xa4sm67520518pab.26.2016.04.15.18.43.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Apr 2016 18:43:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Apr 2016 18:43:21 -0700
Message-Id: <1460771002-6782-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/2] trousers: add package
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
X-List-Received-Date: Sat, 16 Apr 2016 01:43:30 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../trousers/files/07-read_data-not-inline.patch   |  65 ++++++++++++
 recipes-tpm/trousers/files/tcsd.service            |  10 ++
 recipes-tpm/trousers/files/trousers-udev.rules     |   2 +
 recipes-tpm/trousers/files/trousers.init.sh        |  65 ++++++++++++
 recipes-tpm/trousers/trousers_0.3.13.bb            | 112 +++++++++++++++++++++
 5 files changed, 254 insertions(+)
 create mode 100644 recipes-tpm/trousers/files/07-read_data-not-inline.patch
 create mode 100644 recipes-tpm/trousers/files/tcsd.service
 create mode 100644 recipes-tpm/trousers/files/trousers-udev.rules
 create mode 100644 recipes-tpm/trousers/files/trousers.init.sh
 create mode 100644 recipes-tpm/trousers/trousers_0.3.13.bb

diff --git a/recipes-tpm/trousers/files/07-read_data-not-inline.patch b/recipes-tpm/trousers/files/07-read_data-not-inline.patch
new file mode 100644
index 0000000..76ba98a
--- /dev/null
+++ b/recipes-tpm/trousers/files/07-read_data-not-inline.patch
@@ -0,0 +1,65 @@
+Title: Remove inline keyword for read_data and write_data
+Date: 2015-06-28
+Origin: https://chromium.googlesource.com/chromiumos%2Fthird_party%2Ftrousers/+/c9c7cd50640c2d8882a04f59f1bcb383a88b19e9
+Bug-Debian: http://bugs.debian.org/778149
+Index: trousers/src/include/tcsps.h
+===================================================================
+--- trousers.orig/src/include/tcsps.h
++++ trousers/src/include/tcsps.h
+@@ -23,13 +23,6 @@ int		   get_file();
+ int		   put_file(int);
+ void		   close_file(int);
+ void		   ps_destroy();
+-#ifdef SOLARIS
+-TSS_RESULT  read_data(int, void *, UINT32);
+-TSS_RESULT  write_data(int, void *, UINT32);
+-#else
+-inline TSS_RESULT  read_data(int, void *, UINT32);
+-inline TSS_RESULT  write_data(int, void *, UINT32);
+-#endif
+ int		   write_key_init(int, UINT32, UINT32, UINT32);
+ TSS_RESULT	   cache_key(UINT32, UINT16, TSS_UUID *, TSS_UUID *, UINT16, UINT32, UINT32);
+ TSS_RESULT	   UnloadBlob_KEY_PS(UINT16 *, BYTE *, TSS_KEY *);
+Index: trousers/src/include/tspps.h
+===================================================================
+--- trousers.orig/src/include/tspps.h
++++ trousers/src/include/tspps.h
+@@ -18,8 +18,8 @@
+ 
+ TSS_RESULT	   get_file(int *);
+ int		   put_file(int);
+-inline TSS_RESULT  read_data(int, void *, UINT32);
+-inline TSS_RESULT  write_data(int, void *, UINT32);
++TSS_RESULT	   read_data(int, void *, UINT32);
++TSS_RESULT	   write_data(int, void *, UINT32);
+ UINT32		   psfile_get_num_keys(int);
+ TSS_RESULT	   psfile_get_parent_uuid_by_uuid(int, TSS_UUID *, TSS_UUID *);
+ TSS_RESULT	   psfile_remove_key_by_uuid(int, TSS_UUID *);
+Index: trousers/src/tcs/ps/ps_utils.c
+===================================================================
+--- trousers.orig/src/tcs/ps/ps_utils.c
++++ trousers/src/tcs/ps/ps_utils.c
+@@ -42,11 +42,7 @@
+ struct key_disk_cache *key_disk_cache_head = NULL;
+ 
+ 
+-#ifdef SOLARIS
+ TSS_RESULT
+-#else
+-inline TSS_RESULT
+-#endif
+ read_data(int fd, void *data, UINT32 size)
+ {
+ 	int rc;
+@@ -64,11 +60,7 @@ read_data(int fd, void *data, UINT32 siz
+ }
+ 
+ 
+-#ifdef SOLARIS
+ TSS_RESULT
+-#else
+-inline TSS_RESULT
+-#endif
+ write_data(int fd, void *data, UINT32 size)
+ {
+ 	int rc;
diff --git a/recipes-tpm/trousers/files/tcsd.service b/recipes-tpm/trousers/files/tcsd.service
new file mode 100644
index 0000000..787d4e9
--- /dev/null
+++ b/recipes-tpm/trousers/files/tcsd.service
@@ -0,0 +1,10 @@
+[Unit]
+Description=TCG Core Services Daemon
+After=syslog.target
+
+[Service]
+Type=forking
+ExecStart=@SBINDIR@/tcsd
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-tpm/trousers/files/trousers-udev.rules b/recipes-tpm/trousers/files/trousers-udev.rules
new file mode 100644
index 0000000..256babd
--- /dev/null
+++ b/recipes-tpm/trousers/files/trousers-udev.rules
@@ -0,0 +1,2 @@
+# trousers daemon expects tpm device to be owned by tss user & group
+KERNEL=="tpm[0-9]*", MODE="0600", OWNER="tss", GROUP="tss"
diff --git a/recipes-tpm/trousers/files/trousers.init.sh b/recipes-tpm/trousers/files/trousers.init.sh
new file mode 100644
index 0000000..0ecf7cc
--- /dev/null
+++ b/recipes-tpm/trousers/files/trousers.init.sh
@@ -0,0 +1,65 @@
+#!/bin/sh
+
+### BEGIN INIT INFO
+# Provides:		tcsd trousers
+# Required-Start:	$local_fs $remote_fs $network
+# Required-Stop:	$local_fs $remote_fs $network
+# Should-Start:
+# Should-Stop:
+# Default-Start:	2 3 4 5
+# Default-Stop:		0 1 6
+# Short-Description:	starts tcsd
+# Description:		tcsd belongs to the TrouSerS TCG Software Stack
+### END INIT INFO
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+DAEMON=/usr/sbin/tcsd
+NAME=tcsd
+DESC="Trusted Computing daemon"
+USER="tss"
+
+test -x "${DAEMON}" || exit 0
+
+# Read configuration variable file if it is present
+[ -r /etc/default/$NAME ] && . /etc/default/$NAME
+
+case "${1}" in
+	start)
+		echo "Starting $DESC: "
+
+		if [ ! -e /dev/tpm* ]
+		then
+			echo "device driver not loaded, skipping."
+			exit 0
+		fi
+
+		start-stop-daemon --start --quiet --oknodo --pidfile /var/run/${NAME}.pid --user ${USER} --chuid ${USER} --exec ${DAEMON} -- ${DAEMON_OPTS}
+		RETVAL="$?"
+		echo "$NAME."
+		[ "$RETVAL" = 0 ] && pidof $DAEMON > /var/run/${NAME}.pid
+		exit $RETVAL
+		;;
+
+	stop)
+		echo "Stopping $DESC: "
+
+		start-stop-daemon --stop --quiet --oknodo --pidfile /var/run/${NAME}.pid --user ${USER} --exec ${DAEMON}
+		RETVAL="$?"
+                echo  "$NAME."
+		rm -f /var/run/${NAME}.pid
+		exit $RETVAL
+		;;
+
+	restart|force-reload)
+		"${0}" stop
+		sleep 1
+		"${0}" start
+		exit $?
+		;;
+	*)
+		echo "Usage: ${NAME} {start|stop|restart|force-reload|status}" >&2
+		exit 3
+		;;
+esac
+
+exit 0
diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
new file mode 100644
index 0000000..7001788
--- /dev/null
+++ b/recipes-tpm/trousers/trousers_0.3.13.bb
@@ -0,0 +1,112 @@
+SUMMARY = "TrouSerS - An open-source TCG Software Stack implementation."
+LICENSE = "BSD"
+HOMEPAGE = "http://sourceforge.net/projects/trousers/"
+LIC_FILES_CHKSUM = "file://README;startline=3;endline=4;md5=2af28fbed0832e4d83a9e6dd68bb4413"
+SECTION = "security/tpm"
+
+DEPENDS = "openssl"
+
+SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${BPN}-${PV}.tar.gz \
+    file://07-read_data-not-inline.patch \
+    file://trousers.init.sh \
+    file://trousers-udev.rules \
+    file://tcsd.service \
+    "
+
+SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
+SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
+
+inherit autotools pkgconfig useradd update-rc.d
+inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+
+PACKAGECONFIG ?= "gmp "
+PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
+PACKAGECONFIG[gtk] = "--with-gui=gtk, --with-gui=none, gtk+"
+
+do_install () {
+    oe_runmake DESTDIR=${D} install
+}
+
+do_install_append() {
+    install -d ${D}${sysconfdir}/init.d
+    install -m 0755 ${WORKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
+    install -d ${D}${sysconfdir}/udev/rules.d
+    install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
+
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
+        sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
+    fi        
+    chown -R root:root ${D}${sysconfdir}/tcsd.conf
+}
+
+CONFFILES_${PN} += "${sysconfig}/tcsd.conf"
+
+PROVIDES = "${PACKAGES}"
+PACKAGES = " \
+	libtspi \
+	libtspi-dbg \
+	libtspi-dev \
+	libtspi-doc \
+	libtspi-staticdev \
+	trousers \
+	trousers-dbg \
+	trousers-doc \
+	"
+
+FILES_libtspi = " \
+	${libdir}/*.so.1.2.0 \
+	"
+FILES_libtspi-dbg = " \
+	${libdir}/.debug \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tspi \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/trspi \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/*.h \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/tss \
+	"
+FILES_libtspi-dev = " \
+	${includedir} \
+	${libdir}/*.so \
+	${libdir}/*.so.1 \
+	"
+FILES_libtspi-doc = " \
+	${mandir}/man3 \
+	"
+FILES_libtspi-staticdev = " \
+	${libdir}/*.la \
+	${libdir}/*.a \
+	"
+FILES_${PN} = " \
+	${sbindir}/tcsd \
+	${sysconfdir} \
+	${localstatedir} \
+	"
+
+FILES_${PN}-dev += "${libdir}/trousers"
+
+FILES_${PN}-dbg = " \
+	${sbindir}/.debug \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tcs \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tcsd \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/tddl \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/trousers \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/${PN}-${PV}/src/include/trousers \
+	"
+FILES_${PN}-doc = " \
+	${mandir}/man5 \
+	${mandir}/man8 \
+	"
+
+INITSCRIPT_NAME = "trousers"
+INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "tss"
+USERADD_PARAM_${PN} = "-M -d /var/lib/tpm -s /bin/false -g tss tss"
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "tcsd.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+BBCLASSEXTEND = "native"
-- 
2.3.5


