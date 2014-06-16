Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE2F7E00B20; Sun, 15 Jun 2014 18:38:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 506F4E00AEC
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:38:41 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5G1cfY8006633
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:38:41 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Sun, 15 Jun 2014 18:38:40 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <Xin.Ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 15 Jun 2014 21:38:37 -0400
Message-ID: <1402882718-31154-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] dhcp: make a copy of init-server
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
X-List-Received-Date: Mon, 16 Jun 2014 01:38:42 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend |    3 ++
 recipes-connectivity/dhcp/files/init-server   |   44 +++++++++++++++++++++++++
 2 files changed, 47 insertions(+)
 create mode 100644 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
 create mode 100644 recipes-connectivity/dhcp/files/init-server

diff --git a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
new file mode 100644
index 0000000..900c2aa
--- /dev/null
+++ b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
@@ -0,0 +1,3 @@
+inherit with-selinux
+
+FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
new file mode 100644
index 0000000..34c2085
--- /dev/null
+++ b/recipes-connectivity/dhcp/files/init-server
@@ -0,0 +1,44 @@
+#!/bin/sh
+#
+# $Id: dhcp3-server.init.d,v 1.4 2003/07/13 19:12:41 mdz Exp $
+#
+
+test -f /usr/sbin/dhcpd || exit 0
+
+# It is not safe to start if we don't have a default configuration...
+if [ ! -f /etc/default/dhcp-server ]; then
+	echo "/etc/default/dhcp-server does not exist! - Aborting..."
+	exit 0
+fi
+
+# Read init script configuration (so far only interfaces the daemon
+# should listen on.)
+. /etc/default/dhcp-server
+
+case "$1" in
+	start)
+		echo -n "Starting DHCP server: "
+		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
+		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
+		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES
+		echo "."
+		;;
+	stop)
+		echo -n "Stopping DHCP server: dhcpd3"
+		start-stop-daemon -K -x /usr/sbin/dhcpd
+		echo "."
+		;;
+	restart | force-reload)
+		$0 stop
+		sleep 2
+		$0 start
+		if [ "$?" != "0" ]; then
+			exit 1
+		fi
+		;;
+	*)
+		echo "Usage: /etc/init.d/dhcp-server {start|stop|restart|force-reload}"
+		exit 1 
+esac
+
+exit 0
-- 
1.7.9.5


