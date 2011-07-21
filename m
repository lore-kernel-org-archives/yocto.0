Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 886734C8009D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 09:04:52 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6LE4ouj002945
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 09:04:51 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2011 09:04:50 -0500
Message-Id: <1311257090-31643-1-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
Subject: [PATCH] .gitignore: Update build ignores to have wildcard
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
X-List-Received-Date: Thu, 21 Jul 2011 14:04:52 -0000

ignore not just build/* but any build*/* cases.

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 .gitignore |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index b13086d..d44e729 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,11 +1,11 @@
 *.pyc
 *.pyo
-build/conf/local.conf
-build/conf/bblayers.conf
-build/downloads
-build/tmp/
-build/sstate-cache
-build/pyshtables.py
+build*/conf/local.conf
+build*/conf/bblayers.conf
+build*/downloads
+build*/tmp/
+build*/sstate-cache
+build*/pyshtables.py
 pstage/
 scripts/oe-git-proxy-socks
 sources/
-- 
1.7.3.4


