Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.4876.1620969669057981669
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 22:21:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gc3r2GxY;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id n6-20020a17090ac686b029015d2f7aeea8so101756pjt.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 May 2021 22:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=LApVGkirtJrJzKqlIuLrl8Yu04CHloTwVrv+fF+wIHs=;
        b=gc3r2GxY06v1t+FueiQqf1GuRWHpxUs/YzvO30OLUvTgn1OpY4pbQhNLlvOX+uqZDy
         fduQHp8foNuV60v5RFUpTaB8C617s+fTsBRoq1ai9M9IBVYoG7WyKnILYT6hz/mdJPd2
         gi+FE8VqOJfXSqAaiLZFec/eSfgRFC56oEC4rOV8tkrY8LvyG55LhpZQEhtLIt7xU9bz
         fZbW1n1rAQbGQUEr/8VpremQ1unJcW3aKV3X2hWwD1vtaoqUwRAOXSkeWwTk0w3hhlwP
         oeFHkp1l6joyv/AFTnsQlVJpCyARAeSwUfKUntSgHmUCjG0guv1zCbGAy8es852NgteD
         WVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=LApVGkirtJrJzKqlIuLrl8Yu04CHloTwVrv+fF+wIHs=;
        b=iRMRVFTSqf4Zrk9U3q6dqAyxdI/bKBWAyTVknti/kA4RXjlYtPZeZUrtCt0n0hXpvJ
         tTM0MllQTJ2Vv5irWgPG8jECHD1ibsGA7l03uVDiNHgCKKMuI/5rexbtDhCRALUJCa1Q
         F6gE7PEkxY3pNya+u4q0vPafr+XRl37GEihISBRykdYu2OXBKin8BAjYH2GDtH29uKWW
         uuGpWhF2CSHKqFP0ifsHPojGb3ItX8/uX1xf2NhsD/J2NJvbE6cOHtbUGDkmN8KCEmld
         yyQIyJXNYVPvl4+DU7DzAZdEOMAxAb2wAOnEQ5VDO3I8ZWIl4gIG687kiozUwrfXd8jM
         +8sg==
X-Gm-Message-State: AOAM533+nt9JZR2jvJfhtQsQUD01p/Wb5VidvdIWho2CIoOkBqugxvt7
	Vr3dvIBQfnfjoeXUkpVGtPE3rSli3uM=
X-Google-Smtp-Source: ABdhPJyUkCxpgmkMdl0fU3RlGHQts7+eiTCdbw88h3evPHSHw4lH51twPj6hVBhjZX3jjEuF3a/6bQ==
X-Received: by 2002:a17:902:b70f:b029:ed:36ed:299d with SMTP id d15-20020a170902b70fb02900ed36ed299dmr43875055pls.48.1620969667907;
        Thu, 13 May 2021 22:21:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e2:8f3f:6fa1:8a8b])
        by smtp.gmail.com with ESMTPSA id y14sm1458227pgl.21.2021.05.13.22.21.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 22:21:07 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][PATCH 1/2] audit: pkg now in meta-oe
Date: Thu, 13 May 2021 22:21:05 -0700
Message-Id: <20210514052106.9157-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../Fixed-swig-host-contamination-issue.patch |  57 -------
 .../audit/audit/audit-volatile.conf           |   1 -
 recipes-security/audit/audit/auditd           | 153 ------------------
 recipes-security/audit/audit/auditd.service   |  28 ----
 recipes-security/audit/audit_3.0.1.bb         | 109 -------------
 5 files changed, 348 deletions(-)
 delete mode 100644 recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
 delete mode 100644 recipes-security/audit/audit/audit-volatile.conf
 delete mode 100644 recipes-security/audit/audit/auditd
 delete mode 100644 recipes-security/audit/audit/auditd.service
 delete mode 100644 recipes-security/audit/audit_3.0.1.bb

diff --git a/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
deleted file mode 100644
index 740bcb5..0000000
--- a/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From 3d13f92c1bb293523670ba01aea7e655b00a6709 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Sun, 19 Jul 2015 02:42:58 +0900
-Subject: [PATCH] audit: Fixed swig host contamination issue
-
-The audit build uses swig to generate a python wrapper.
-Unfortunately, the swig info file references host include
-directories.  Some of these were previously noticed and
-eliminated, but the one fixed here was not.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
-Signed-off-by: Joe Slater <jslater@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- bindings/swig/python3/Makefile.am | 3 ++-
- bindings/swig/src/auditswig.i     | 2 +-
- 2 files changed, 3 insertions(+), 2 deletions(-)
-
-diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/python3/Makefile.am
-index dd9d934..61b486d 100644
---- a/bindings/swig/python3/Makefile.am
-+++ b/bindings/swig/python3/Makefile.am
-@@ -22,6 +22,7 @@
- CONFIG_CLEAN_FILES = *.loT *.rej *.orig
- AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing $(PYTHON3_CFLAGS)
- AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
-+STDINC ?= /usr/include
- LIBS = $(top_builddir)/lib/libaudit.la
- SWIG_FLAGS = -python -py3 -modern
- SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
-@@ -36,7 +37,7 @@ _audit_la_DEPENDENCIES =${top_srcdir}/lib/libaudit.h ${top_builddir}/lib/libaudi
- _audit_la_LIBADD = ${top_builddir}/lib/libaudit.la
- nodist__audit_la_SOURCES  = audit_wrap.c
- audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i 
--	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/auditswig.i 
-+	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i
- 
- CLEANFILES = audit.py* audit_wrap.c *~
- 
-diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig.i
-index 21aafca..dd0f62c 100644
---- a/bindings/swig/src/auditswig.i
-+++ b/bindings/swig/src/auditswig.i
-@@ -39,7 +39,7 @@ signed
- #define __attribute(X) /*nothing*/
- typedef unsigned __u32;
- typedef unsigned uid_t;
--%include "/usr/include/linux/audit.h"
-+%include "linux/audit.h"
- #define __extension__ /*nothing*/
- %include <stdint.i>
- %include "../lib/libaudit.h"
--- 
-2.17.1
-
diff --git a/recipes-security/audit/audit/audit-volatile.conf b/recipes-security/audit/audit/audit-volatile.conf
deleted file mode 100644
index 9cbe154..0000000
--- a/recipes-security/audit/audit/audit-volatile.conf
+++ /dev/null
@@ -1 +0,0 @@
-d  /var/log/audit 0750 root root -
diff --git a/recipes-security/audit/audit/auditd b/recipes-security/audit/audit/auditd
deleted file mode 100644
index 6aa7f94..0000000
--- a/recipes-security/audit/audit/auditd
+++ /dev/null
@@ -1,153 +0,0 @@
-#! /bin/sh
-### BEGIN INIT INFO
-# Provides:          auditd
-# Required-Start:    $local_fs
-# Required-Stop:     $local_fs
-# Default-Start:     2 3 4 5
-# Default-Stop:      0 1 6
-# Short-Description: Audit Daemon
-# Description:       Collects audit information from Linux 2.6 Kernels.
-### END INIT INFO
-
-# Author: Philipp Matthias Hahn <pmhahn@debian.org>
-# Based on Debians /etc/init.d/skeleton and Auditds init.d/auditd.init
-
-# June, 2012: Adopted for yocto <amy.fong@windriver.com>
-
-# PATH should only include /usr/* if it runs after the mountnfs.sh script
-PATH=/sbin:/bin:/usr/sbin:/usr/bin
-DESC="audit daemon"
-NAME=auditd
-DAEMON=/sbin/auditd
-PIDFILE=/var/run/"$NAME".pid
-SCRIPTNAME=/etc/init.d/"$NAME"
-
-# Exit if the package is not installed
-[ -x "$DAEMON" ] || exit 0
-
-# Read configuration variable file if it is present
-[ -r /etc/default/"$NAME" ] && . /etc/default/"$NAME"
-
-. /etc/default/rcS
-
-. /etc/init.d/functions
-
-#
-# Function that starts the daemon/service
-#
-do_start()
-{
-	# Return
-	#   0 if daemon has been started
-	#   1 if daemon was already running
-	#   2 if daemon could not be started
-	start-stop-daemon -S --quiet --pidfile "$PIDFILE" --exec "$DAEMON" --test > /dev/null \
-		|| return 1
-	start-stop-daemon -S --quiet --pidfile "$PIDFILE" --exec "$DAEMON" -- \
-		$EXTRAOPTIONS \
-		|| return 2
-	if [ -f /etc/audit/audit.rules ]
-	then
-		/sbin/auditctl -R /etc/audit/audit.rules >/dev/null
-	fi
-}
-
-#
-# Function that stops the daemon/service
-#
-do_stop()
-{
-	# Return
-	#   0 if daemon has been stopped
-	#   1 if daemon was already stopped
-	#   2 if daemon could not be stopped
-	#   other if a failure occurred
-	start-stop-daemon -K --quiet --pidfile "$PIDFILE" --name "$NAME"
-	RETVAL="$?"
-	[ "$RETVAL" = 2 ] && return 2
-	# Many daemons don't delete their pidfiles when they exit.
-	rm -f "$PIDFILE"
-	rm -f /var/run/audit_events
-	# Remove watches so shutdown works cleanly
-	case "$AUDITD_CLEAN_STOP" in
-		no|NO) ;;
-		*) /sbin/auditctl -D >/dev/null ;;
-	esac
-	return "$RETVAL"
-}
-
-#
-# Function that sends a SIGHUP to the daemon/service
-#
-do_reload() {
-	start-stop-daemon -K --signal HUP --quiet --pidfile $PIDFILE --name $NAME
-	return 0
-}
-
-if [ ! -e /var/log/audit ]; then
-	mkdir -p /var/log/audit
-	[ -x /sbin/restorecon ] && /sbin/restorecon -F $(readlink -f /var/log/audit)
-fi
-
-case "$1" in
-  start)
-	[ "$VERBOSE" != no ] && echo "Starting $DESC" "$NAME"
-	do_start
-	case "$?" in
-		0|1) [ "$VERBOSE" != no ] && echo 0 ;;
-		2) [ "$VERBOSE" != no ] && echo 1 ;;
-	esac
-	;;
-  stop)
-	[ "$VERBOSE" != no ] && echo "Stopping $DESC" "$NAME"
-	do_stop
-	case "$?" in
-		0|1) [ "$VERBOSE" != no ] && echo 0 ;;
-		2) [ "$VERBOSE" != no ] && echo 1 ;;
-	esac
-	;;
-  reload|force-reload)
-	echo "Reloading $DESC" "$NAME"
-	do_reload
-	echo $?
-	;;
-  restart)
-	echo "Restarting $DESC" "$NAME"
-	do_stop
-	case "$?" in
-	  0|1)
-		do_start
-		case "$?" in
-			0) echo 0 ;;
-			1) echo 1 ;; # Old process is still running
-			*) echo 1 ;; # Failed to start
-		esac
-		;;
-	  *)
-		# Failed to stop
-		echo 1
-		;;
-	esac
-	;;
-  rotate)
-	echo "Rotating $DESC logs" "$NAME"
-	start-stop-daemon -K --signal USR1 --quiet --pidfile "$PIDFILE" --name "$NAME"
-	echo $?
-	;;
-  status)
-	pidofproc "$DAEMON" >/dev/null
-	status=$?
-	if [ $status -eq 0 ]; then
-		echo "$NAME is running."
-	else
-		echo "$NAME is not running."
-	fi
-	exit $status
-	;;
-  *)
-	echo "Usage: $SCRIPTNAME {start|stop|restart|reload|force-reload|rotate|status}" >&2
-	exit 3
-	;;
-esac
-
-:
diff --git a/recipes-security/audit/audit/auditd.service b/recipes-security/audit/audit/auditd.service
deleted file mode 100644
index 06c63f0..0000000
--- a/recipes-security/audit/audit/auditd.service
+++ /dev/null
@@ -1,28 +0,0 @@
-[Unit]
-Description=Security Auditing Service
-DefaultDependencies=no
-After=local-fs.target systemd-tmpfiles-setup.service
-Before=sysinit.target shutdown.target
-Conflicts=shutdown.target
-ConditionKernelCommandLine=!audit=0
-
-[Service]
-Type=forking
-PIDFile=/run/auditd.pid
-ExecStart=/sbin/auditd
-## To use augenrules, uncomment the next line and comment/delete the auditctl line.
-## NOTE: augenrules expect any rules to be added to /etc/audit/rules.d/
-#ExecStartPost=-/sbin/augenrules --load
-ExecStartPost=-/sbin/auditctl -R /etc/audit/audit.rules
-# By default we don't clear the rules on exit.
-# To enable this, uncomment the next line.
-#ExecStopPost=/sbin/auditctl -R /etc/audit/audit-stop.rules
-
-### Security Settings ###
-MemoryDenyWriteExecute=true
-LockPersonality=true
-ProtectControlGroups=true
-ProtectKernelModules=true
-
-[Install]
-WantedBy=multi-user.target
diff --git a/recipes-security/audit/audit_3.0.1.bb b/recipes-security/audit/audit_3.0.1.bb
deleted file mode 100644
index ba24d36..0000000
--- a/recipes-security/audit/audit_3.0.1.bb
+++ /dev/null
@@ -1,109 +0,0 @@
-SUMMARY = "User space tools for kernel auditing"
-DESCRIPTION = "The audit package contains the user space utilities for \
-storing and searching the audit records generated by the audit subsystem \
-in the Linux kernel."
-HOMEPAGE = "http://people.redhat.com/sgrubb/audit/"
-SECTION = "base"
-LICENSE = "GPLv2+ & LGPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-
-SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=master \
-           file://Fixed-swig-host-contamination-issue.patch \
-           file://auditd \
-           file://auditd.service \
-           file://audit-volatile.conf \
-"
-
-S = "${WORKDIR}/git"
-SRCREV = "46cb7d92443c9ec7b3af15fb0baa65f65f6415d3"
-
-inherit autotools python3native update-rc.d systemd
-
-UPDATERCPN = "auditd"
-INITSCRIPT_NAME = "auditd"
-INITSCRIPT_PARAMS = "defaults"
-
-SYSTEMD_PACKAGES = "auditd"
-SYSTEMD_SERVICE_auditd = "auditd.service"
-
-DEPENDS = "python3 tcp-wrappers libcap-ng linux-libc-headers swig-native"
-
-EXTRA_OECONF = " --with-libwrap \
-        --enable-gssapi-krb5=no \
-        --with-libcap-ng=yes \
-        --with-python3=yes \
-        --libdir=${base_libdir} \
-        --sbindir=${base_sbindir} \
-        --without-python \
-        --without-golang \
-        --disable-zos-remote \
-        --with-arm=yes \
-        --with-aarch64=yes \
-        "
-
-EXTRA_OEMAKE = "PYLIBVER='python${PYTHON_BASEVERSION}' \
-	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
-	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
-	STDINC='${STAGING_INCDIR}' \
-	pkgconfigdir=${libdir}/pkgconfig \
-	"
-
-SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
-DESCRIPTION_audispd-plugins = "The audispd-plugins package provides plugins for the real-time \
-interface to the audit system, audispd. These plugins can do things \
-like relay events to remote machines or analyze events for suspicious \
-behavior."
-
-PACKAGES =+ "audispd-plugins"
-PACKAGES += "auditd ${PN}-python"
-
-FILES_${PN} = "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1* ${base_libdir}/libauparse.so.*"
-FILES_auditd = "${bindir}/* ${base_sbindir}/* ${sysconfdir}/* ${datadir}/audit/*"
-FILES_audispd-plugins = "${sysconfdir}/audit/audisp-remote.conf \
-	${sysconfdir}/audit/plugins.d/au-remote.conf \
-	${sysconfdir}/audit/plugins.d/syslog.conf \
-	${base_sbindir}/audisp-remote \
-	${base_sbindir}/audisp-syslog \
-	${localstatedir}/spool/audit \
-	"
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
-
-CONFFILES_auditd = "${sysconfdir}/audit/audit.rules"
-RDEPENDS_auditd = "bash"
-
-do_install_append() {
-	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
-	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
-
-	# reuse auditd config
-	[ ! -e ${D}/etc/default ] && mkdir ${D}/etc/default
-	mv ${D}/etc/sysconfig/auditd ${D}/etc/default
-	rmdir ${D}/etc/sysconfig/
-
-	# replace init.d
-	install -D -m 0755 ${WORKDIR}/auditd ${D}/etc/init.d/auditd
-	rm -rf ${D}/etc/rc.d
-
-	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-		# install systemd unit files
-		install -d ${D}${systemd_unitdir}/system
-		install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
-
-		install -d ${D}${sysconfdir}/tmpfiles.d/
-		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfiles.d/
-	fi
-
-	# audit-2.5 doesn't install any rules by default, so we do that here
-	mkdir -p ${D}/etc/audit ${D}/etc/audit/rules.d
-	cp ${S}/rules/10-base-config.rules ${D}/etc/audit/rules.d/audit.rules
-
-	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
-	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
-
-	# Based on the audit.spec "Copy default rules into place on new installation"
-	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
-
-	# Create /var/spool/audit directory for audisp-remote
-	install -m 0700 -d ${D}${localstatedir}/spool/audit
-}
-- 
2.17.1

