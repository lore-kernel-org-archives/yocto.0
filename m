Return-Path: <Bjoern.Stenberg@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2BDE0E0027F
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 07:20:06 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.298.4;
	Thu, 23 Aug 2012 16:20:05 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4331)	id 6F1FE286783;
	Thu, 23 Aug 2012 16:20:05 +0200 (CEST)
From: =?UTF-8?q?Bj=C3=B6rn=20Stenberg?= <bjst@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 23 Aug 2012 16:20:01 +0200
Message-ID: <1345731602-47313-3-git-send-email-bjst@enea.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1345731602-47313-1-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: bjst@enea.com does not designate
	permitted sender hosts)
Subject: [PATCH 2/3] New recipe: ptest-runner
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
X-List-Received-Date: Thu, 23 Aug 2012 14:20:07 -0000
Content-Type: text/plain

This package contains the top-level script that seeks out and starts all
package tests.

---
 .../ptest-runner/files/ptest-runner                |   16 +++++++++++++++
 .../ptest-runner/ptest-runner_1.0.bb               |   21 ++++++++++++++++++++
 2 files changed, 37 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-support/ptest-runner/files/ptest-runner
 create mode 100644 meta/recipes-support/ptest-runner/ptest-runner_1.0.bb

diff --git a/meta/recipes-support/ptest-runner/files/ptest-runner b/meta/recipes-support/ptest-runner/files/ptest-runner
new file mode 100644
index 0000000..0aa7970
--- /dev/null
+++ b/meta/recipes-support/ptest-runner/files/ptest-runner
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+echo "START: $0"
+cd /usr/lib
+for x in *
+do
+    if [ -d "/usr/lib/$x/ptest" ]; then
+	date "+%Y-%m-%dT%H:%M"
+        echo "BEGIN: $x"
+        cd /usr/lib/$x/ptest
+        ./run-ptest
+        echo "END: $x"
+	date "+%Y-%m-%dT%H:%M"
+    fi
+done
+echo "STOP: $0"
diff --git a/meta/recipes-support/ptest-runner/ptest-runner_1.0.bb b/meta/recipes-support/ptest-runner/ptest-runner_1.0.bb
new file mode 100644
index 0000000..63598b3
--- /dev/null
+++ b/meta/recipes-support/ptest-runner/ptest-runner_1.0.bb
@@ -0,0 +1,21 @@
+SRC_URI += "file://ptest-runner"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+INHIBIT_DEFAULT_DEPS = "1"
+
+do_install () {
+    mkdir -p ${D}${bindir}
+    install -m 0755 ${WORKDIR}/ptest-runner ${D}${bindir}
+}
+
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_build[noexec] = "1"
-- 
1.7.5.4


