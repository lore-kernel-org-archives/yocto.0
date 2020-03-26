Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.28554.1585186139511472880
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 18:28:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LoJFGwsP;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id b9so1509134pls.12
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 18:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=2JlBERVdE70NIGwBTOwyfzEG3xZ/4n6hcjgOBfTCxSk=;
        b=LoJFGwsPa4u9UyJOgfgXGK22uCO1UuPQfvHFXaz3qpU04siVydWu44w6/PDHfrTGrv
         SLdUo+qruvWX+2VojxG3ByYbUrNXX7UJWqwoMco+gBm/HHA7B7gfqNP8H+uBct4YYxcZ
         dVb8tbY9iEFdL4UVGaG+QqTv3K8VQ0ekGYvaOLWTJPBFoQMxj9bi9AcD/0L6B56SGtxY
         RFI55blbqzlRKOfCwLeQABqnqp07KVnFALCAciEvn9ksYLwHrDzHBx5PEnfHLxn511d0
         FMJ2FLFBpPndhCDbv0ovckn3kfIgSH9B/1t8bGZz17OJvRm1uB7FLnJ6t8e5LlYCEXwE
         m4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=2JlBERVdE70NIGwBTOwyfzEG3xZ/4n6hcjgOBfTCxSk=;
        b=aOLHhM7kQPmeCCO2yQJoDEsjT4nnewvMDyyKDsYjeAKKXIndvOaBUpUisT3eTjj5ue
         F7BhiG0GJ8e4ScNPWP5cz8R1W54aApdifQMXqfqEZKkEit8ud7+3ZlUTBEPb1u+cYfzd
         N7KsX8PHvYdz3RZ7sh5e5Tt1kVdIEvafs+br1k3R0XP+TW7qyxwOaz5fivVtNJhLS62S
         9FLe4o8PCMhuhPtzxXaUCljf7POo7MgnSSryDC1JHqGC4Xh9lPb3dbcFALB2UkKlPL5T
         kvfCZUnC3DG/ZRAW54I17OWfsFDhoiuzjYXFMbDsdx5+YeuxBMMrKObr50iZSsUe8H8O
         4mog==
X-Gm-Message-State: ANhLgQ3fX4z5JCUtjRa2K7hP3KYqquZkfRTdjmm52YFoQu8hX+XCNNcq
	+xEL+Ff5O9JG9eGpCLpPDTXSs1tlfoM=
X-Google-Smtp-Source: ADFU+vv1YvrJAn7zxDVO298qY81IVKmQlT1a2UzUIJB6jaoB1tR1E5+44xgHLO55AV4TGU8HL5Alvg==
X-Received: by 2002:a17:90b:3103:: with SMTP id gc3mr400761pjb.58.1585186138144;
        Wed, 25 Mar 2020 18:28:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id u5sm330664pfb.153.2020.03.25.18.28.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 18:28:57 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] arpwatch: add new recipe
Date: Thu, 26 Mar 2020 01:28:55 +0000
Message-Id: <20200326012855.12161-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/arpwatch/arpwatch_3.0.bb     |  79 +++++++++++
 recipes-scanners/arpwatch/files/arpwatch.conf |  23 ++++
 .../arpwatch/files/arpwatch.default           |   7 +
 recipes-scanners/arpwatch/files/arpwatch_init | 123 ++++++++++++++++++
 .../arpwatch/files/host_contam_fix.patch      |  21 +++
 .../arpwatch/files/postfix_workaround.patch   |  91 +++++++++++++
 6 files changed, 344 insertions(+)
 create mode 100644 recipes-scanners/arpwatch/arpwatch_3.0.bb
 create mode 100644 recipes-scanners/arpwatch/files/arpwatch.conf
 create mode 100644 recipes-scanners/arpwatch/files/arpwatch.default
 create mode 100644 recipes-scanners/arpwatch/files/arpwatch_init
 create mode 100644 recipes-scanners/arpwatch/files/host_contam_fix.patch
 create mode 100644 recipes-scanners/arpwatch/files/postfix_workaround.patch

diff --git a/recipes-scanners/arpwatch/arpwatch_3.0.bb b/recipes-scanners/arpwatch/arpwatch_3.0.bb
new file mode 100644
index 0000000..9be319a
--- /dev/null
+++ b/recipes-scanners/arpwatch/arpwatch_3.0.bb
@@ -0,0 +1,79 @@
+SUMARRY = "The ethernet monitor program; for keeping track of ethernet/ip address pairings"
+LICENSE = "BSD-4-Clause"
+HOME_PAGE = "http://ee.lbl.gov/"
+LIC_FILES_CHKSUM = "file://configure;md5=212742e55562cf47527d31c2a492411a"
+
+DEPENDS += "libpcap postfix"
+
+SRC_URI = "https://ee.lbl.gov/downloads/arpwatch/${BP}.tar.gz \
+           file://arpwatch.conf \
+           file://arpwatch.default \
+           file://arpwatch_init  \
+           file://postfix_workaround.patch \
+           file://host_contam_fix.patch "
+
+SRC_URI[sha256sum] = "82e137e104aca8b1280f5cca0ebe61b978f10eadcbb4c4802c181522ad02b25b"
+
+inherit  autotools-brokensep update-rc.d useradd
+
+ARPWATCH_UID ?= "arpwatch"
+ARPWATCH_GID ?= "arpwatch"
+APRWATCH_FROM ?= "root "
+ARPWATH_REPLY ?= "${ARPWATCH_UID}"
+
+EXTRA_OECONF = " --srcdir=${S} --with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}"
+
+CONFIGUREOPTS = " --build=${BUILD_SYS} \
+          --host=${HOST_SYS} \
+          --target=${TARGET_SYS} \
+          --prefix=${prefix} \
+          --exec_prefix=${exec_prefix} \
+          --bindir=${bindir} \
+          --sbindir=${sbindir} \
+          --libexecdir=${libexecdir} \
+          --datadir=${datadir} \
+          --sysconfdir=${sysconfdir} \
+          --sharedstatedir=${sharedstatedir} \
+          --localstatedir=${localstatedir} \
+          --libdir=${libdir} \
+          --includedir=${includedir} \
+          --oldincludedir=${oldincludedir} \
+          --infodir=${infodir} \
+          --mandir=${mandir} \
+          "
+
+do_configure () {
+    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
+
+do_install () {
+    install -d ${D}${bindir}
+    install -d ${D}${sbindir}
+    install -d ${D}${mandir}
+    install -d ${D}${sysconfdir}
+    install -d ${D}${sysconfdir}/default
+    install -d ${D}${sysconfdir}/init.d
+    install -d ${D}${prefix}/etc/rc.d
+    install -d ${D}/var/lib/arpwatch
+
+    oe_runmake install DESTDIR=${D}
+    install -m 644 ${WORKDIR}/arpwatch.conf  ${D}${sysconfdir}
+    install -m 655 ${WORKDIR}/arpwatch_init  ${D}${sysconfdir}/init.d/arpwatch
+    install -m 644 ${WORKDIR}/arpwatch.default  ${D}${sysconfdir}/default
+}
+
+INITSCRIPT_NAME = "arpwatch"
+INITSCRIPT_PARAMS = "start 02 2 3 4 5 . stop 20 0 1 6 ."
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system ${ARPWATCH_UID}"
+USERADD_PARAM_${PN} = "--system -g ${ARPWATCH_GID} --home-dir  \
+    ${localstatedir}/spool/${BPN} \
+    --no-create-home  --shell /bin/false ${BPN}"
+
+CONFFILE_FILES = "${sysconfdir}/${PN}.conf"
+
+FILES_${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
+               ${sysconfdir} /var/lib/arpwatch"
+
+RDEPENDS_${PN} = "libpcap postfix postfix-cfg"
diff --git a/recipes-scanners/arpwatch/files/arpwatch.conf b/recipes-scanners/arpwatch/files/arpwatch.conf
new file mode 100644
index 0000000..67213c9
--- /dev/null
+++ b/recipes-scanners/arpwatch/files/arpwatch.conf
@@ -0,0 +1,23 @@
+# /etc/arpwatch.conf: Debian-specific way to watch multiple interfaces.
+# Format of this configuration file is:
+#
+#<dev1>	<arpwatch options for dev1>
+#<dev2>	<arpwatch options for dev2>
+#...
+#<devN>	<arpwatch options for devN>
+#
+# You can set global options for all interfaces by editing
+# /etc/default/arpwatch
+
+# For example:
+
+eth0	
+#eth0	-m root
+#eth1	-m root
+#eth2	-m root
+
+# or, if you have an MTA configured for plussed addressing:
+#
+#eth0	-m root+eth0
+#eth1	-m root+eth1
+#eth2	-m root+eth2
diff --git a/recipes-scanners/arpwatch/files/arpwatch.default b/recipes-scanners/arpwatch/files/arpwatch.default
new file mode 100644
index 0000000..b0a7d8f
--- /dev/null
+++ b/recipes-scanners/arpwatch/files/arpwatch.default
@@ -0,0 +1,7 @@
+# Global options for arpwatch(8).
+
+# Debian: don't report bogons, don't use PROMISC.
+ARGS="-N -p"
+
+# Debian: run as `arpwatch' user.  Empty this to run as root.
+RUNAS="arpwatch"
diff --git a/recipes-scanners/arpwatch/files/arpwatch_init b/recipes-scanners/arpwatch/files/arpwatch_init
new file mode 100644
index 0000000..9860c65
--- /dev/null
+++ b/recipes-scanners/arpwatch/files/arpwatch_init
@@ -0,0 +1,123 @@
+#!/bin/sh
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+NAME=arpwatch
+DAEMON=/usr/sbin/$NAME
+DESC="Ethernet/FDDI station monitor daemon"
+DATADIR=/var/lib/$NAME
+RETVAL=0
+
+. /etc/init.d/functions
+
+### You shouldn't touch anything below unless you know what you are doing.
+
+[ -f /etc/default/arpwatch ] && . /etc/default/arpwatch
+
+# Decide whether we have to deal with multiple interfaces.
+CONF=/etc/arpwatch.conf
+MULTIPLE=0
+if [ -r $CONF ]; then
+	grep -c '^[a-z]' $CONF 2>&1 >/dev/null && MULTIPLE=1
+fi
+
+# Check whether we have to drop privileges.
+if [ -n "$RUNAS" ]; then
+	if getent passwd "$RUNAS" >/dev/null; then
+		ARGS="-u ${RUNAS} $ARGS"
+	else
+		RUNAS=""
+	fi
+fi
+
+start_instance () {
+	IFACE=$1
+	INSTANCE=${NAME}-${IFACE}
+	DATAFILE=$DATADIR/${IFACE}.dat
+	IFACE_OPTS="-P /var/run/${INSTANCE}.pid -i ${IFACE} -f ${DATAFILE} $2"
+
+	echo -n "Starting $DESC: "
+	if [ ! -f $DATAFILE ]; then
+		echo -n "(creating $DATAFILE) " :> $DATAFILE
+	fi
+	if [ -n "$RUNAS" ]; then
+		echo -n "(chown $RUNAS $DATAFILE) "
+		chown $RUNAS $DATAFILE
+	fi
+	start-stop-daemon --start --quiet \
+		--pidfile /var/run/${INSTANCE}.pid \
+		--exec $DAEMON -- $IFACE_OPTS $ARGS
+	echo "${INSTANCE}."
+	ps h -C $NAME -o pid,args | \
+		awk "/$IFACE/ { print \$1 }" > /var/run/${INSTANCE}.pid
+}
+
+stop_instance () {
+	IFACE=$1
+	INSTANCE=${NAME}-${IFACE}
+	[ -f /var/run/${INSTANCE}.pid ] || return 0
+	echo -n "Stopping $DESC: "
+	start-stop-daemon --stop --quiet --oknodo \
+		--pidfile /var/run/${INSTANCE}.pid
+	echo "${INSTANCE}."
+	rm -f /var/run/${INSTANCE}.pid
+}
+
+process_loop_break_line () {
+	__IFACE=$1
+	shift
+	__IOPTS="$@"
+}
+
+process_loop () {
+	OPERATION=$1
+	grep '^[a-z]' $CONF 2>/dev/null | \
+	while read LINE
+	do
+		process_loop_break_line $LINE
+		I=$__IFACE
+		I_OPTS="$__IOPTS"
+		$OPERATION $I "$I_OPTS"
+	done
+}
+
+startup () {
+  	process_loop start_instance
+}
+
+shutdown () {
+	process_loop stop_instance
+}
+
+case "$1" in
+  start)
+  	startup
+	;;
+  stop)
+  	shutdown
+	;;
+  reload)
+  	echo "Reload operation not supported -- use restart."
+	RETVAL=2
+	;;
+  restart|force-reload)
+	#
+	#	If the "reload" option is implemented, move the "force-reload"
+	#	option to the "reload" entry above. If not, "force-reload" is
+	#	just the same as "restart".
+	#
+	shutdown
+	sleep 1
+	startup
+	;;
+  status)
+      status_of_proc $DAEMON $NAME
+      ;;
+  *)
+	N=/etc/init.d/$NAME
+	# echo "Usage: $N {start|stop|restart|reload|force-reload}" >&2
+	echo "Usage: $N {start|stop|restart|force-reload}" >&2
+	RETVAL=2
+	;;
+esac
+
+exit $RETVAL
diff --git a/recipes-scanners/arpwatch/files/host_contam_fix.patch b/recipes-scanners/arpwatch/files/host_contam_fix.patch
new file mode 100644
index 0000000..7d7ffac
--- /dev/null
+++ b/recipes-scanners/arpwatch/files/host_contam_fix.patch
@@ -0,0 +1,21 @@
+This removes the host contamination
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: arpwatch-3.0/configure
+===================================================================
+--- arpwatch-3.0.orig/configure
++++ arpwatch-3.0/configure
+@@ -4349,8 +4349,8 @@ fi
+ 	    CC=cc
+ 	    export CC
+     fi
+-    V_INCLS="$V_INCLS -I/usr/local/include"
+-    LDFLAGS="$LDFLAGS -L/usr/local/lib"
++    V_INCLS="$V_INCLS "
++    LDFLAGS="$LDFLAGS "
+     if test "$GCC" != yes ; then
+ 	    { $as_echo "$as_me:${as_lineno-$LINENO}: checking that $CC handles ansi prototypes" >&5
+ $as_echo_n "checking that $CC handles ansi prototypes... " >&6; }
diff --git a/recipes-scanners/arpwatch/files/postfix_workaround.patch b/recipes-scanners/arpwatch/files/postfix_workaround.patch
new file mode 100644
index 0000000..95213f2
--- /dev/null
+++ b/recipes-scanners/arpwatch/files/postfix_workaround.patch
@@ -0,0 +1,91 @@
+Sendmail exists after the system boots. We are using postfix
+so no need to check if it exists. 
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: arpwatch-3.0/configure
+===================================================================
+--- arpwatch-3.0.orig/configure
++++ arpwatch-3.0/configure
+@@ -636,7 +636,6 @@ LBL_LIBS
+ HAVE_FREEBSD_TRUE
+ HAVE_FREEBSD_FALSE
+ PYTHON
+-V_SENDMAIL
+ LIBOBJS
+ INSTALL_DATA
+ INSTALL_SCRIPT
+@@ -5573,53 +5572,6 @@ fi
+ done
+ 
+ 
+-# Extract the first word of "sendmail", so it can be a program name with args.
+-set dummy sendmail; ac_word=$2
+-{ $as_echo "$as_me:${as_lineno-$LINENO}: checking for $ac_word" >&5
+-$as_echo_n "checking for $ac_word... " >&6; }
+-if ${ac_cv_path_V_SENDMAIL+:} false; then :
+-  $as_echo_n "(cached) " >&6
+-else
+-  case $V_SENDMAIL in
+-  [\\/]* | ?:[\\/]*)
+-  ac_cv_path_V_SENDMAIL="$V_SENDMAIL" # Let the user override the test with a path.
+-  ;;
+-  *)
+-  as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
+-as_dummy="$PATH:/usr/sbin:/usr/lib:/usr/bin:/usr/ucblib:/usr/local/etc"
+-for as_dir in $as_dummy
+-do
+-  IFS=$as_save_IFS
+-  test -z "$as_dir" && as_dir=.
+-    for ac_exec_ext in '' $ac_executable_extensions; do
+-  if as_fn_executable_p "$as_dir/$ac_word$ac_exec_ext"; then
+-    ac_cv_path_V_SENDMAIL="$as_dir/$ac_word$ac_exec_ext"
+-    $as_echo "$as_me:${as_lineno-$LINENO}: found $as_dir/$ac_word$ac_exec_ext" >&5
+-    break 2
+-  fi
+-done
+-  done
+-IFS=$as_save_IFS
+-
+-  ;;
+-esac
+-fi
+-V_SENDMAIL=$ac_cv_path_V_SENDMAIL
+-if test -n "$V_SENDMAIL"; then
+-  { $as_echo "$as_me:${as_lineno-$LINENO}: result: $V_SENDMAIL" >&5
+-$as_echo "$V_SENDMAIL" >&6; }
+-else
+-  { $as_echo "$as_me:${as_lineno-$LINENO}: result: no" >&5
+-$as_echo "no" >&6; }
+-fi
+-
+-
+-
+-if test -z "${V_SENDMAIL}" ; then
+-	as_fn_error $? "Can't find sendmail" "$LINENO" 5
+-fi
+-
+-
+ python=${PYTHON:-python}
+ # Extract the first word of "${python}", so it can be a program name with args.
+ set dummy ${python}; ac_word=$2
+Index: arpwatch-3.0/configure.in
+===================================================================
+--- arpwatch-3.0.orig/configure.in
++++ arpwatch-3.0/configure.in
+@@ -76,13 +76,6 @@ AC_LBL_UNION_WAIT
+ AC_CHECK_LIB(resolv, res_query)
+ AC_LBL_LIBPCAP(V_PCAPDEP, V_INCLS)
+ 
+-AC_PATH_PROG(V_SENDMAIL, sendmail,,
+-    $PATH:/usr/sbin:/usr/lib:/usr/bin:/usr/ucblib:/usr/local/etc)
+-
+-if test -z "${V_SENDMAIL}" ; then
+-	AC_MSG_ERROR([Can't find sendmail])
+-fi
+-
+ dnl AC_LBL_CHECK_TYPE(int32_t, int)
+ dnl AC_LBL_CHECK_TYPE(u_int32_t, u_int)
+ 
-- 
2.17.1

