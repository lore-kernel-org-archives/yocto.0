Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC594E00C41; Fri, 26 May 2017 01:46:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1623BE00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4Q8kNfI032368
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:23 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 26 May 2017 01:46:23 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 16:46:14 +0800
Message-ID: <3379e561421045f6c32190d489e39d191c177d37.1495787965.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495787965.git.jackie.huang@windriver.com>
References: <cover.1495787965.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 4/5] openais: fix corosync not quit
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
X-List-Received-Date: Fri, 26 May 2017 08:46:27 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

On some targets, "/etc/init.d/openais stop" can not make
corosync quit since corosync does not respond to signal TERM.

Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../files/openais-fix-corosync-not-quit.patch      | 53 ++++++++++++++++++++++
 .../recipes-cgl/openais/openais_1.1.4.bb           |  1 +
 2 files changed, 54 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch
new file mode 100644
index 0000000..f3f7279
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch
@@ -0,0 +1,53 @@
+commit e26a778dc3726666f6c15838c16efaca2e98abd6
+Author: yanjun.zhu <yanjun.zhu@windriver.com>
+Date:   Wed Mar 13 10:10:03 2013 +0800
+
+    openais: fix corosync not quit
+
+    In fsl-p5040, "/etc/init.d/openais stop" can not make corosync quit since corosync
+    does not respond to signal TERM.
+
+    Upstream-Status: Pending
+
+    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
+
+diff -urpN a/init/generic.in b/init/generic.in
+--- a/init/generic.in
++++ b/init/generic.in
+@@ -39,18 +39,6 @@ failure()
+ 	echo -ne "[FAILED]\r"
+ }
+ 
+-status()
+-{
+-	pid=$(pidof $1 2>/dev/null)
+-	rtrn=$?
+-	if [ $rtrn -ne 0 ]; then
+-		echo "$1 is stopped"
+-	else
+-		echo "$1 ($proc with pid $pid) is running..."
+-	fi
+-	return $rtrn
+-}
+-
+ # rpm based distros
+ if [ -d @SYSCONFDIR@/sysconfig ]; then
+ 	[ -f @INITDDIR@/functions ] && . @INITDDIR@/functions
+@@ -98,16 +86,10 @@ stop()
+ 	! status $proc > /dev/null 2>&1 && return
+ 
+ 	echo -n "Signaling $desc ($prog) to terminate: "
+-	kill -TERM $(pidof $proc) > /dev/null 2>&1
++	echo -n "Please stop corosync using /etc/init.d/corosync-daemon stop"
+ 	success
+ 	echo
+ 
+-	echo -n "Waiting for $prog services to unload:"
+-	while status $proc > /dev/null 2>&1; do
+-		sleep 1
+-		echo -n "."
+-	done
+-
+ 	rm -f $LOCK_FILE
+ 	rm -f @LOCALSTATEDIR@/run/$prog.pid
+ 	success
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
index d54b22f..9cc750a 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -11,6 +11,7 @@ SRC_URI = " \
     file://openais-fix-bash.patch \
     file://openais-fix-init-script.patch \
     file://openais-saTmrTimerReschedule-test-error.patch \
+    file://openais-fix-corosync-not-quit.patch \
     file://openais.service \
     "
 
-- 
2.11.0


