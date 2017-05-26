Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 511EFE00C30; Fri, 26 May 2017 01:46:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E1BE00B01
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4Q8kKYf001368
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:20 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 26 May 2017 01:46:20 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 16:46:12 +0800
Message-ID: <8adce7a7fc6511c694901b7c8a8bb03dc6c0eced.1495787965.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495787965.git.jackie.huang@windriver.com>
References: <cover.1495787965.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/5] openais: correct the use of proc name in init script
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
X-List-Received-Date: Fri, 26 May 2017 08:46:25 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

openais actually runs on top of corosync. The init
script was checking for the pid of "openais"
rather than checking for corosync's pid.

Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../openais/files/openais-fix-init-script.patch    | 42 ++++++++++++++++++++++
 .../recipes-cgl/openais/openais_1.1.4.bb           |  1 +
 2 files changed, 43 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch
new file mode 100644
index 0000000..69fddd5
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch
@@ -0,0 +1,42 @@
+commit 367f4ab0b67266e07ffedcae2df74f2576ea2aeb
+Author: Aws Ismail <aws.ismail@windriver.com>
+Date:   Thu Jan 24 12:36:48 2013 -0500
+
+    openais: correct the use of proc name in init script
+    
+    openais actually runs on top of corosync. The init
+    script was checking for the pid of "openais"
+    rather than checking for corosync's pid.
+    
+    Upstream-Status: Pending
+
+    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/init/generic.in b/init/generic.in
+index ac63a5f..e8efbb3 100644
+--- a/init/generic.in
++++ b/init/generic.in
+@@ -46,7 +46,7 @@ status()
+ 	if [ $rtrn -ne 0 ]; then
+ 		echo "$1 is stopped"
+ 	else
+-		echo "$1 (pid $pid) is running..."
++		echo "$1 ($proc with pid $pid) is running..."
+ 	fi
+ 	return $rtrn
+ }
+@@ -130,12 +130,12 @@ restart|reload|force-reload)
+ 	restart
+ ;;
+ condrestart|try-restart)
+-	if status $prog > /dev/null 2>&1; then
++	if status $proc > /dev/null 2>&1; then
+ 		restart
+ 	fi
+ ;;
+ status)
+-	status $prog
++	status $proc
+ 	rtrn=$?
+ ;;
+ stop)
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
index 23da0a2..0693ddb 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -9,6 +9,7 @@ SRC_URI = " \
     file://fix-lcrso-linkage.patch \
     file://build-cleanup-configure-ac.patch \
     file://openais-fix-bash.patch \
+    file://openais-fix-init-script.patch \
     file://openais.service \
     "
 
-- 
2.11.0


