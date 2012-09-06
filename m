Return-Path: <veerabrahmam.vr@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C26E00346
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 23:34:47 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml202-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AOM97777; Thu, 06 Sep 2012 14:34:45 +0800 (CST)
Received: from SZXEML430-HUB.china.huawei.com (10.72.61.38) by
	szxeml202-edg.china.huawei.com (172.24.2.42) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Thu, 6 Sep 2012 14:34:35 +0800
Received: from SZXEML523-MBS.china.huawei.com ([169.254.6.74]) by
	szxeml430-hub.china.huawei.com ([10.72.61.38]) with mapi id
	14.01.0323.003; Thu, 6 Sep 2012 14:34:34 +0800
From: Veerabrahmam vr <veerabrahmam.vr@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 3/4] qemuimagetest: add basic function to check syslogd
Thread-Index: Ac2L+a4XmG3bpAHkQ3iMQAyFF77MnA==
Date: Thu, 6 Sep 2012 06:34:34 +0000
Message-ID: <C175418477740840BC00A33D88D2C4FA523E3784@szxeml523-mbs.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.96]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 06 Sep 2012 00:01:23 -0700
Cc: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Subject: [PATCH 3/4] qemuimagetest: add basic function to check syslogd
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 06:34:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

one test case to check syslogd is executing on target.

Signed-off-by: veerabrahmam <veerabrahmamvr@huawei.com>
---
 scripts/qemuimage-tests/systemusage/syslog |   54 ++++++++++++++++++++++++=
++++
 scripts/qemuimage-tests/tools/syslog.sh    |   17 +++++++++
 2 files changed, 71 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/systemusage/syslog
 create mode 100644 scripts/qemuimage-tests/tools/syslog.sh
diff --git a/scripts/qemuimage-tests/systemusage/syslog b/scripts/qemuimage=
-tests/systemusage/syslog
new file mode 100755
index 0000000..08e1544
--- /dev/null
+++ b/scripts/qemuimage-tests/systemusage/syslog
@@ -0,0 +1,54 @@
+#!/bin/bash
+# syslog Check test Case for function test
+# boot up the Qemu target with `runqemu qemuxxx`.
+# then check if syslog service is working fine or not target.
+#
+# Author: veera <veerabrahmamvr@huawei.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+. $COREBASE/scripts/qemuimage-testlib
+
+TIMEOUT=3D400
+RET=3D1
+
+# Start qemu and check its network
+Test_Create_Qemu ${TIMEOUT}
+
+
+
+# If qemu network is up, check ssh service in qemu
+if [ $? -eq 0 ];then
+ Test_Info "Begin to Test SSH Service in Qemu"
+ Test_SSH_UP ${TARGET_IPADDR} ${TIMEOUT}
+ RET=3D$?
+else
+ RET=3D1
+fi
+
+# Check if syslog is working fine or not
+if [ $RET -eq 0 -a -f $TOOLS/syslog.sh ]; then
+ # Copy syslog.sh into target
+ Test_Target_Pre ${TARGET_IPADDR} $TOOLS/syslog.sh
+ if [ $? -eq 0 ]; then
+  # Run syslog.sh to check if syslog service is working fine or not on the=
 qemuxxx target
+  Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/syslog.sh"
+  RET=3D$?
+ else
+  RET=3D1
+ fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+ Test_Info "syslog Test PASS"
+ Test_Kill_Qemu
+ Test_Print_Result "syslog" 0
+ exit 0
+else
+ Test_Info "syslog Test FAIL, Pls. check above syslog"
+ Test_Kill_Qemu
+ Test_Print_Result "syslog" 1
+ exit 1
+fi
diff --git a/scripts/qemuimage-tests/tools/syslog.sh b/scripts/qemuimage-te=
sts/tools/syslog.sh
new file mode 100644
index 0000000..412d6d5
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/syslog.sh
@@ -0,0 +1,17 @@
+#!/bin/bash
+# syslog test script running in qemu=20
+#
+# Author: veera <veerabrahmamvr@huawei.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+ps aux | grep -w syslogd | grep -v grep
+if [ $? -eq 0 ]; then
+ echo "QEMU: syslogd is running by default"
+ exit 0=20
+else
+ echo "QEMU: syslogd is not running"
+ exit 1
+fi
--=20
1.7.7=

