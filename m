Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.34976.1599455684325039935
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Sep 2020 22:14:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 73A1438C0894
	for <yocto@yoctoproject.org>; Sun,  6 Sep 2020 22:14:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0875EfCB011761
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Sep 2020 22:14:41 -0700 (PDT)
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.487.0; Sun, 6 Sep 2020
 22:14:23 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [yocto][meta-security][PATCH] dhcp: remove bbappend file
Date: Sun, 6 Sep 2020 22:14:23 -0700
Message-ID: <20200907051423.80188-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

dhcp has been removed, thus removing its bbappend file.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-connectivity/dhcp/dhcp_%.bbappend   |  1 -
 recipes-connectivity/dhcp/dhcp_selinux.inc  |  3 --
 recipes-connectivity/dhcp/files/init-server | 52 ---------------------
 3 files changed, 56 deletions(-)
 delete mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
 delete mode 100644 recipes-connectivity/dhcp/dhcp_selinux.inc
 delete mode 100644 recipes-connectivity/dhcp/files/init-server

diff --git a/recipes-connectivity/dhcp/dhcp_%.bbappend b/recipes-connecti=
vity/dhcp/dhcp_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-connectivity/dhcp/dhcp_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selin=
ux.inc', '', d)}
diff --git a/recipes-connectivity/dhcp/dhcp_selinux.inc b/recipes-connect=
ivity/dhcp/dhcp_selinux.inc
deleted file mode 100644
index 08389f1..0000000
--- a/recipes-connectivity/dhcp/dhcp_selinux.inc
+++ /dev/null
@@ -1,3 +0,0 @@
-inherit selinux
-
-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connec=
tivity/dhcp/files/init-server
deleted file mode 100644
index a0e901a..0000000
--- a/recipes-connectivity/dhcp/files/init-server
+++ /dev/null
@@ -1,52 +0,0 @@
-#!/bin/sh
-#
-# $Id: dhcp3-server.init.d,v 1.4 2003/07/13 19:12:41 mdz Exp $
-#
-
-test -f /usr/sbin/dhcpd || exit 0
-
-# It is not safe to start if we don't have a default configuration...
-if [ ! -f /etc/default/dhcp-server ]; then
-	echo "/etc/default/dhcp-server does not exist! - Aborting..."
-	exit 0
-fi
-
-# Read init script configuration (so far only interfaces the daemon
-# should listen on.)
-. /etc/default/dhcp-server
-
-# Restorecon for /var/lib/dhcp/{dhcpd.leases,dhcpd6.leases}
-restorecon_dhcpd_leases(){
-	test ! -x /sbin/restorecon || for x in dhcpd.leases dhcpd6.leases; do
-		[ -f /var/lib/dhcp/$x ] && /sbin/restorecon -F /var/lib/dhcp/$x
-	done
-}
-
-case "$1" in
-	start)
-		echo -n "Starting DHCP server: "
-		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
-		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases=
=09
-		restorecon_dhcpd_leases
-		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES -user dhcp -=
group dhcp
-		echo "."
-		;;
-	stop)
-		echo -n "Stopping DHCP server: dhcpd3"
-		start-stop-daemon -K -x /usr/sbin/dhcpd
-		echo "."
-		;;
-	restart | force-reload)
-		$0 stop
-		sleep 2
-		$0 start
-		if [ "$?" !=3D "0" ]; then
-			exit 1
-		fi
-		;;
-	*)
-		echo "Usage: /etc/init.d/dhcp-server {start|stop|restart|force-reload}=
"
-		exit 1=20
-esac
-
-exit 0
--=20
2.21.0

