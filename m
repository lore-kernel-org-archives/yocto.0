Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A465E00B72; Mon, 12 May 2014 00:32:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C32CE00AFD
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s4C7VrX5028162
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:53 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 12 May 2014 00:31:53 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 12 May 2014 03:31:48 -0400
Message-ID: <4a2f45e49b072a62cbe40c275d991f9d41563220.1399879397.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1399879397.git.wenzong.fan@windriver.com>
References: <cover.1399879397.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] initscripts: add a local copy of devpts.sh
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
X-List-Received-Date: Mon, 12 May 2014 07:32:03 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Start point to make SELinux specific changes in devpts.sh, copied from
oe-core layer.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/initscripts/initscripts/devpts.sh    |   28 +++++++++++++++++++++
 recipes-core/initscripts/initscripts_1.0.bbappend |    2 ++
 2 files changed, 30 insertions(+)
 create mode 100755 recipes-core/initscripts/initscripts/devpts.sh

diff --git a/recipes-core/initscripts/initscripts/devpts.sh b/recipes-core/initscripts/initscripts/devpts.sh
new file mode 100755
index 0000000..c6043fb
--- /dev/null
+++ b/recipes-core/initscripts/initscripts/devpts.sh
@@ -0,0 +1,28 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          devpts
+# Required-Start: udev
+# Required-Stop:
+# Default-Start:     S
+# Default-Stop:
+# Short-Description: Mount /dev/pts file systems.
+### END INIT INFO
+
+. /etc/default/devpts
+
+if grep -q devpts /proc/filesystems
+then
+	#
+	#	Create multiplexor device.
+	#
+	test -c /dev/ptmx || mknod -m 666 /dev/ptmx c 5 2
+
+	#
+	#	Mount /dev/pts if needed.
+	#
+	if ! grep -q devpts /proc/mounts
+	then
+		mkdir -p /dev/pts
+		mount -t devpts devpts /dev/pts -ogid=${TTYGRP},mode=${TTYMODE}
+	fi
+fi
diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
index 367cd6b..462db6f 100644
--- a/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -1,5 +1,7 @@
 PR .= ".3"
 
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 do_install_append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
-- 
1.7.9.5


