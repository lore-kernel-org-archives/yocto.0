Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF153E008CC; Wed,  4 Mar 2015 23:55:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F98FE00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 23:55:34 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t257tXK0015754
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 4 Mar 2015 23:55:33 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.224.2; Wed, 4 Mar 2015 23:55:33 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Mar 2015 15:50:19 +0800
Message-ID: <1425541819-11994-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] iscsi-initiator-utils: fix label for initiatorname.iscsi
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
X-List-Received-Date: Thu, 05 Mar 2015 07:55:36 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This config file was created by postinstall or initscript, the correct
label should be "etc_t", run restorecon /etc/iscsi/initiatorname.iscsi
to fix it and remove below avc denied issues:

  avc: denied { read } for pid=6094 comm="iscsid" \
  name="initiatorname.iscsi" dev="sda3" ino=1057846 \
  scontext=system_u:system_r:iscsid_t:s0-s15:c0.c1023 \
  tcontext=system_u:object_r:etc_runtime_t:s0 tclass=file

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../iscsi-initiator-utils/files/initd.debian       | 123 +++++++++++++++++++++
 .../iscsi-initiator-utils_%.bbappend               |   1 +
 2 files changed, 124 insertions(+)
 create mode 100644 networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
 create mode 100644 networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend

diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian b/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
new file mode 100644
index 0000000..43fb348
--- /dev/null
+++ b/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
@@ -0,0 +1,123 @@
+#! /bin/sh
+### BEGIN INIT INFO
+# Provides:
+# Required-Start:
+# Required-Stop:
+# Default-Start:
+# Default-Stop:
+# Short-Description: Starts and stops the iSCSI initiator services and logins to default targets
+### END INIT INFO
+#set -x
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+DAEMON=/usr/sbin/iscsid
+ADM=/usr/sbin/iscsiadm
+PIDFILE=/var/run/iscsid.pid
+
+[ -x "$DAEMON" ] || exit 0
+
+if [ ! -d /sys/class/ ]; then
+  echo "Failure:" "iSCSI requires a mounted sysfs, not started."
+  exit 1
+fi
+
+nodestartup_re='s/^node\.conn\[0]\.startup[ 	]*=[ 	]*//p'
+
+RETVAL=0
+
+start() {
+	echo "Starting iSCSI initiator service" "iscsid"
+	modprobe -q iscsi_tcp 2>/dev/null || :
+	modprobe -q ib_iser 2>/dev/null || :
+	if [ ! -f /etc/iscsi/initiatorname.iscsi ]; then
+		INITIATORNAME=$(iscsi-iname)
+		cat >/etc/iscsi/initiatorname.iscsi <<EOF
+## DO NOT EDIT OR REMOVE THIS FILE!
+## If you remove this file, the iSCSI daemon will not start.
+## If you change the InitiatorName, existing access control lists
+## may reject this initiator.  The InitiatorName must be unique
+## for each iSCSI initiator.  Do NOT duplicate iSCSI InitiatorNames.
+InitiatorName=$INITIATORNAME
+EOF
+	fi
+
+	# Fix label for /etc/iscsi/initiatorname.iscsi if SELinux was enabled
+	test ! -x /sbin/restorecon || /sbin/restorecon -F /etc/iscsi/initiatorname.iscsi
+
+	start-stop-daemon --start --quiet --pidfile $PIDFILE --exec $DAEMON
+	RETVAL=$?
+	starttargets
+}
+
+starttargets() {
+	echo "Setting up iSCSI targets"
+	$ADM -m node --loginall=automatic
+}
+
+stoptargets() {
+	echo "Disconnecting iSCSI targets"
+	sync
+	$ADM -m node --logoutall=all
+	RETVAL=$?
+	#if RETVAL is 21, means no active sessions, consider ok
+	if [ "$RETVAL" = "21" ]; then
+		RETVAL=0
+	fi
+}
+
+stop() {
+	stoptargets
+	if [ $RETVAL -ne 0 ]; then
+		echo "Failure:" "Could not stop all targets, try again later"
+		return $RETVAL
+	fi
+
+	echo "Stopping iSCSI initiator service"
+	start-stop-daemon --stop --quiet --pidfile $PIDFILE --exec $DAEMON
+	rm -f $PIDFILE
+	status=0
+	modprobe -r ib_iser 2>/dev/null
+	if [ "$?" -ne "0" -a "$?" -ne "1" ]; then
+		status=1
+	fi
+	modprobe -r iscsi_tcp 2>/dev/null
+	if [ "$?" -ne "0" -a "$?" -ne "1" ]; then
+		status=1
+	fi
+}
+
+restart() {
+	stop
+	if [ $RETVAL -ne 0 ]; then
+		echo "Failure:" "Stopping iSCSI initiator service failed, not starting"
+		return $RETVAL
+	fi
+	start
+}
+
+restarttargets() {
+	stoptargets
+	if [ $RETVAL -ne 0 ]; then
+		echo "Failure:" "Could not stop all targets, try again later"
+		return $RETVAL
+	fi
+	starttargets
+}
+
+status() {
+	#XXX FIXME: what to do here?
+	#status iscsid
+	# list active sessions
+	echo Current active iSCSI sessions:
+	$ADM -m session
+}
+
+case "$1" in
+	start|starttargets|stop|stoptargets|restart|restarttargets|status)
+		$1
+		;;
+	*)
+		echo "Usage: $0 {start|stop|restart|status}"
+		exit 1
+		;;
+esac
+exit $RETVAL
diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend b/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
new file mode 100644
index 0000000..81fe7b7
--- /dev/null
+++ b/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
@@ -0,0 +1 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-- 
1.9.1


