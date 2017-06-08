Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC55DE00BF6; Thu,  8 Jun 2017 07:39:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEF00E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 07:39:24 -0700 (PDT)
X-Halon-ID: 41eead77-4c58-11e7-b75a-005056917a89
Authorized-sender: petter@technux.se
Received: from elxacs1nn72.localdomain (unknown [95.195.201.18])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Thu,  8 Jun 2017 16:39:20 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu,  8 Jun 2017 16:39:17 +0200
Message-Id: <1496932757-14369-1-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2] pi-blaster: update to include proper rpi3 support
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
X-List-Received-Date: Thu, 08 Jun 2017 14:39:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update to latest available revision, in order to include proper rpi3
support as well as latest fixes.

LIC_FILES_CHKSUM for the license text in README.md is changed to handle
fixes of whitespace and newlines in the license text, introduced by the
pi-blaster commit: '0e1a1df Cleaning up the README'.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../files/remove-initscript-lsb-dependency.patch   | 37 ++++++++++++++++------
 recipes-devtools/pi-blaster/pi-blaster.inc         |  2 +-
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
 3 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
index 7ea9a3b..c8afe60 100644
--- a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
+++ b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.patch
@@ -1,13 +1,28 @@
-Remove dependencies on LSB functions
+From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Sun, 4 Jun 2017 12:22:40 +0200
+Subject: [PATCH] Remove dependencies on LSB functions
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+See this as a rebase of the previous 'Remove dependencies on LSB
+functions patch' with only minor modifications from the original version,
+based on the work done by Alex Lennon <ajlennon@dynamicdevices.co.uk> in
+'25fd817 pi-blaster: Added recipe'.
 
 Upstream-Status: Inappropriate [configuration]
 
-Signed-off-by: Alex Lennon <ajlennon@dynamicdevices.co.uk>
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ debian/pi-blaster.init | 38 +++++++-------------------------------
+ 1 file changed, 7 insertions(+), 31 deletions(-)
 
-diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
---- git.org/pi-blaster.boot.sh	2014-05-20 14:49:44.378582168 +0100
-+++ git/pi-blaster.boot.sh	2014-05-20 14:51:08.330582386 +0100
-@@ -28,12 +28,12 @@
+diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init
+index b142d70..01a686c 100644
+--- a/debian/pi-blaster.init
++++ b/debian/pi-blaster.init
+@@ -28,12 +28,12 @@ SCRIPTNAME=/etc/init.d/$NAME
  [ -r /etc/default/$NAME ] && . /etc/default/$NAME
  
  # Load the VERBOSE setting and other rcS variables
@@ -22,7 +37,7 @@ diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
  
  #
  # Function that starts the daemon/service
-@@ -77,48 +77,23 @@
+@@ -77,48 +77,24 @@ do_stop()
  
  case "$1" in
    start)
@@ -52,6 +67,7 @@ diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
  	# 'force-reload' alias
  	#
 -	log_daemon_msg "Restarting $DESC" "$NAME"
++	echo "Restarting $DESC" "$NAME"
  	do_stop
 -	case "$?" in
 -	  0|1)
@@ -67,11 +83,14 @@ diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
 -		log_end_msg 1
 -		;;
 -	esac
-+	do_start
++    do_start
  	;;
    *)
 -	echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}" >&2
-+	echo "Usage: $SCRIPTNAME {start|stop|restart}" >&2
++	echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
  	exit 3
  	;;
  esac
+-- 
+1.9.1
+
diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc b/recipes-devtools/pi-blaster/pi-blaster.inc
index a3beccc..a548957 100644
--- a/recipes-devtools/pi-blaster/pi-blaster.inc
+++ b/recipes-devtools/pi-blaster/pi-blaster.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "This project enables PWM on the GPIO pins you request of a Raspbe
 HOMEPAGE = "https://github.com/sarfata/pi-blaster/"
 SECTION = "devel/libs"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://README.md;beginline=157;endline=170;md5=f20832f31126609af5a7bf2340014540"
+LIC_FILES_CHKSUM = "file://README.md;beginline=212;endline=239;md5=a012868ef5f83b9f257af253d7cb07a3"
 
 SRC_URI = "git://github.com/sarfata/pi-blaster \
            file://remove-initscript-lsb-dependency.patch \
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 263852b..ac812ab 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,3 @@
 require pi-blaster.inc
 
-SRCREV = "ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"
+SRCREV = "9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"
-- 
1.9.1


