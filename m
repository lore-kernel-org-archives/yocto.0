Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E88E009E7; Tue, 20 May 2014 07:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 May 2014 07:48:01 PDT
Received: from mail-wg0-f52.google.com (unknown [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFE1E0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 07:48:01 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id l18so625096wgh.35
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 07:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=E+Fz0H7VlGJ3R+RtzqEdCi7sWwmS0o/Ld992RAqJ+uY=;
	b=c2il6qoRxSNl+sBN/wWZy77L+jukJv7tek5E0PbX+EN2/tAIsMjp9cqzpzrZgxTos4
	6v67nzaYKpEZz+fzxzQyLrix7eLLUjSv3y3y6Shm+of7cHqi+C3BzScD8nU1xvbvTpRu
	JpCNNn4p9OJJ7YkBOAKrSgXfjcGWj0dVXn+bDbNZ2kw2F6TlTq/aSkYvdaRMM+uLTIDm
	SExquimb+IL7voqU0K3xTKg+Q+O+g/T113EDCwcPzm7NM1nmMSamyyohC33ou3bekO4S
	Al3BNRYLSwXjH75TPgILyoeRf2pLOAT0ln/2W7B9Dgk9hQP04PqjZlbTxvD6I763SZC+
	7+tw==
X-Received: by 10.194.62.176 with SMTP id z16mr2873068wjr.76.1400596885424;
	Tue, 20 May 2014 07:41:25 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id bj5sm21110647wib.3.2014.05.20.07.41.24
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 May 2014 07:41:24 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 15:41:00 +0100
Message-Id: <ba540e1080aef15beea1ccb15129f80222e9cb06.1400594463.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/1] pi-blaster: Added recipe
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
X-List-Received-Date: Tue, 20 May 2014 14:48:05 -0000

This project enables PWM on the GPIO pins you request of a Raspberry Pi. The technique used is extremely efficient: does not use the CPU and gives very stable pulses.

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-devtools/pi-blaster/files/initscript.patch | 71 ++++++++++++++++++++++
 recipes-devtools/pi-blaster/pi-blaster.inc         | 36 +++++++++++
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  3 +
 3 files changed, 110 insertions(+)
 create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch
 create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc
 create mode 100644 recipes-devtools/pi-blaster/pi-blaster_git.bb

diff --git a/recipes-devtools/pi-blaster/files/initscript.patch b/recipes-devtools/pi-blaster/files/initscript.patch
new file mode 100644
index 0000000..8545546
--- /dev/null
+++ b/recipes-devtools/pi-blaster/files/initscript.patch
@@ -0,0 +1,71 @@
+diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
+--- git.org/pi-blaster.boot.sh	2014-05-20 14:49:44.378582168 +0100
++++ git/pi-blaster.boot.sh	2014-05-20 14:51:08.330582386 +0100
+@@ -28,12 +28,12 @@
+ [ -r /etc/default/$NAME ] && . /etc/default/$NAME
+ 
+ # Load the VERBOSE setting and other rcS variables
+-. /lib/init/vars.sh
++#. /lib/init/vars.sh
+ 
+ # Define LSB log_* functions.
+ # Depend on lsb-base (>= 3.2-14) to ensure that this file is present
+ # and status_of_proc is working.
+-. /lib/lsb/init-functions
++#. /lib/lsb/init-functions
+ 
+ #
+ # Function that starts the daemon/service
+@@ -77,48 +77,23 @@
+ 
+ case "$1" in
+   start)
+-	[ "$VERBOSE" != no ] && log_daemon_msg "Starting $DESC" "$NAME"
++	[ "$VERBOSE" != no ] && echo "Starting $DESC" "$NAME"
+ 	do_start
+-	case "$?" in
+-		0|1) [ "$VERBOSE" != no ] && log_end_msg 0 ;;
+-		2) [ "$VERBOSE" != no ] && log_end_msg 1 ;;
+-	esac
+ 	;;
+   stop)
+-	[ "$VERBOSE" != no ] && log_daemon_msg "Stopping $DESC" "$NAME"
++	[ "$VERBOSE" != no ] && echo "Stopping $DESC" "$NAME"
+ 	do_stop
+-	case "$?" in
+-		0|1) [ "$VERBOSE" != no ] && log_end_msg 0 ;;
+-		2) [ "$VERBOSE" != no ] && log_end_msg 1 ;;
+-	esac
+-	;;
+-  status)
+-	status_of_proc "$DAEMON" "$NAME" && exit 0 || exit $?
+ 	;;
+   restart|force-reload)
+ 	#
+ 	# If the "reload" option is implemented then remove the
+ 	# 'force-reload' alias
+ 	#
+-	log_daemon_msg "Restarting $DESC" "$NAME"
+ 	do_stop
+-	case "$?" in
+-	  0|1)
+-		do_start
+-		case "$?" in
+-			0) log_end_msg 0 ;;
+-			1) log_end_msg 1 ;; # Old process is still running
+-			*) log_end_msg 1 ;; # Failed to start
+-		esac
+-		;;
+-	  *)
+-		# Failed to stop
+-		log_end_msg 1
+-		;;
+-	esac
++	do_start
+ 	;;
+   *)
+-	echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}" >&2
++	echo "Usage: $SCRIPTNAME {start|stop|restart}" >&2
+ 	exit 3
+ 	;;
+ esac
diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
new file mode 100644
index 0000000..85a6a4d
--- /dev/null
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc
@@ -0,0 +1,36 @@
+DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspberry Pi."
+HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
+SECTION = "devel/libs"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://README.md;beginline=138;endline=151;md5=e0f0f92050a87a160939707c60940307"
+
+SRC_URI = "git://github.com/sarfata/pi-blaster \
+	   file://initscript.patch \
+"
+
+
+S = "${WORKDIR}/git"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+inherit update-rc.d
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME_${PN} = "pi-blaster.boot.sh"
+INITSCRIPT_PARAMS_${PN} = "defaults 15 85"
+
+do_configure() {
+  sed -e "s|gcc|${CC}|g" -i Makefile
+}
+
+do_compile() {
+  oe_runmake 
+}
+
+do_install() {
+  install -d ${D}${sbindir}
+  install -m 0755 ${S}/pi-blaster ${D}${sbindir}
+  install -d ${D}${sysconfdir}
+  install -d ${D}${sysconfdir}/init.d
+  install -m 0755 ${S}/pi-blaster.boot.sh ${D}${sysconfdir}/init.d
+}
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
new file mode 100644
index 0000000..25eb382
--- /dev/null
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -0,0 +1,3 @@
+require pi-blaster.inc
+
+SRCREV = "177cef81774d6df5c6284c198ff818515281db14"
-- 
1.9.3


