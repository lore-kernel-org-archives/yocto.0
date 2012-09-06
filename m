Return-Path: <veerabrahmam.vr@huawei.com>
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8343E002AC
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 23:31:56 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml201-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AOP09137; Thu, 06 Sep 2012 14:31:54 +0800 (CST)
Received: from SZXEML426-HUB.china.huawei.com (10.72.61.34) by
	szxeml201-edg.china.huawei.com (172.24.2.39) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Thu, 6 Sep 2012 14:31:47 +0800
Received: from SZXEML523-MBS.china.huawei.com ([169.254.6.74]) by
	szxeml426-hub.china.huawei.com ([10.72.61.34]) with mapi id
	14.01.0323.003; Thu, 6 Sep 2012 14:31:46 +0800
From: Veerabrahmam vr <veerabrahmam.vr@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 2/4] qemuimagetest: add basic function to check enough
	disk space
Thread-Index: Ac2L+UoDA9SgLkloSBOQrfEslMqe3g==
Date: Thu, 6 Sep 2012 06:31:46 +0000
Message-ID: <C175418477740840BC00A33D88D2C4FA523E3776@szxeml523-mbs.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.96]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 06 Sep 2012 00:01:23 -0700
Cc: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Subject: [PATCH 2/4] qemuimagetest: add basic function to check enough disk space
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
X-List-Received-Date: Thu, 06 Sep 2012 06:31:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

one test case to check disk space availability.

Signed-off-by: veerabrahmam <veerabrahmamvr@huawei.com>
---
 scripts/qemuimage-tests/systemusage/df |   54 ++++++++++++++++++++++++++++=
++++
 scripts/qemuimage-tests/tools/df.sh    |   25 +++++++++++++++
 2 files changed, 79 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/systemusage/df
 create mode 100644 scripts/qemuimage-tests/tools/df.sh
diff --git a/scripts/qemuimage-tests/systemusage/df b/scripts/qemuimage-tes=
ts/systemusage/df
new file mode 100755
index 0000000..ef84ec0
--- /dev/null
+++ b/scripts/qemuimage-tests/systemusage/df
@@ -0,0 +1,54 @@
+#!/bin/bash
+# df -h check test case for function test
+# boot up the qemu target with `runqemu qemuxxx`,
+# then check if df space is fine or not target.
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
+#If qemu network is up, check ssh service in qemu
+if [ $? -eq 0 ];then
+ Test_Info "Begin to Test SSH Service in Qemu"
+ Test_SSH_UP ${TARGET_IPADDR} ${TIMEOUT}
+ RET=3D$?
+else
+ RET=3D1
+fi
+
+# Check if disk spcae  space is enough or not(using df command)
+if [ $RET -eq 0 -a -f $TOOLS/df.sh ]; then
+ # Copy df.sh into target
+ Test_Target_Pre ${TARGET_IPADDR} $TOOLS/df.sh
+ if [ $? -eq 0 ]; then
+  # Run df.sh to check if df space is fine or not on the qemuxxx target
+  Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/df.sh"
+  RET=3D$?
+ else
+  RET=3D1
+ fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+ Test_Info "df Test PASS"
+ Test_Kill_Qemu
+ Test_Print_Result "df" 0
+ exit 0
+else
+ Test_Info "df Test FAIL, Pls. check above df"
+ Test_Kill_Qemu
+ Test_Print_Result "df" 1
+ exit 1
+fi
diff --git a/scripts/qemuimage-tests/tools/df.sh b/scripts/qemuimage-tests/=
tools/df.sh
new file mode 100644
index 0000000..d420503
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/df.sh
@@ -0,0 +1,25 @@
+#!/bin/bash
+# df test script to check enough disk space for qemu target
+#
+# Author: veera <veerabrahmamvr@huawei.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#taking the size of the each partition
+array_list=3D(`df -P | tr -s " " | cut -d " " -f4`)
+#Total size of the array
+array_size=3D`echo ${#array_list[@]}`
+loop_val=3D1
+#while loop to check the size of partitions are less than 5MB
+while [ $loop_val -lt  $array_size ]
+do=20
+ #taking each value from the array to check the size=20
+ value=3D`echo ${array_list[$loop_val]}`
+ if [[ $value -gt 5120 ]];then
+  loop_val=3D`expr $loop_val + 1`
+ else
+  echo "QEMU: df : disk space is not enough"
+  exit 1
+ fi=20
+done
+exit 0
--=20
1.7.7=

