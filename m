Return-Path: <veerabrahmam.vr@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B993E0027F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 23:30:42 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml212-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AOM97066; Thu, 06 Sep 2012 14:30:40 +0800 (CST)
Received: from SZXEML416-HUB.china.huawei.com (10.82.67.155) by
	szxeml212-edg.china.huawei.com (172.24.2.181) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Thu, 6 Sep 2012 14:29:24 +0800
Received: from SZXEML523-MBS.china.huawei.com ([169.254.6.74]) by
	szxeml416-hub.china.huawei.com ([10.82.67.155]) with mapi id
	14.01.0323.003; Thu, 6 Sep 2012 14:29:16 +0800
From: Veerabrahmam vr <veerabrahmam.vr@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/4] qemuimagetest: basic function to check bash exists
Thread-Index: Ac2L+PBKLaVYZ2mITFeCLB5oqBmCSw==
Date: Thu, 6 Sep 2012 06:29:16 +0000
Message-ID: <C175418477740840BC00A33D88D2C4FA523E376C@szxeml523-mbs.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.96]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 06 Sep 2012 00:01:23 -0700
Cc: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Subject: [PATCH 1/4] qemuimagetest: basic function to check bash exists
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
X-List-Received-Date: Thu, 06 Sep 2012 06:30:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

 one test case to check  bash command availability on qemu target.

 Signed-off-by: veerabrahmam <veerabrahmamvr@huawei.com>
---
 scripts/qemuimage-tests/systemusage/bash |   53 ++++++++++++++++++++++++++=
++++
 scripts/qemuimage-tests/tools/bash.sh    |   17 +++++++++
 2 files changed, 70 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/systemusage/bash
 create mode 100644 scripts/qemuimage-tests/tools/bash.sh
diff --git a/scripts/qemuimage-tests/systemusage/bash b/scripts/qemuimage-t=
ests/systemusage/bash
new file mode 100755
index 0000000..d2108f3
--- /dev/null
+++ b/scripts/qemuimage-tests/systemusage/bash
@@ -0,0 +1,53 @@
+#!/bin/bash
+# on the target, check bash prompt is available or not
+# boot up the qemu target with `runqemu qemuxxx`,
+# then check  bash.
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
+# Check bash is working fine or not
+if [ $RET -eq 0 -a -f $TOOLS/bash.sh ]; then
+ # Copy bash.sh into target
+ Test_Target_Pre ${TARGET_IPADDR} $TOOLS/bash.sh
+ if [ $? -eq 0 ]; then
+  # Run bash.sh to check if bash command available or not on the qemuxxx t=
arget
+  Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/bash.sh"
+  RET=3D$?
+ else
+  RET=3D1
+ fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+ Test_Info "bash Test PASS"
+ Test_Kill_Qemu
+ Test_Print_Result "bash" 0
+ exit 0
+else
+ Test_Info "bash Test FAIL, Pls. check above bash"
+ Test_Kill_Qemu
+ Test_Print_Result "bash" 1
+ exit 1
+fi
diff --git a/scripts/qemuimage-tests/tools/bash.sh b/scripts/qemuimage-test=
s/tools/bash.sh
new file mode 100644
index 0000000..f2cd89d
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/bash.sh
@@ -0,0 +1,17 @@
+#!/bin/sh
+# bash test script running in qemu=20
+#
+# Author: veera <veerabrahmamvr@huawei.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+which bash
+if [ $? -eq 0 ]; then
+ echo "QEMU: bash is exist in the target by default"
+ exit 0=20
+else
+ echo "QEMU: No bash command in the qemu target"
+ exit 1
+fi
--=20
1.7.7=

