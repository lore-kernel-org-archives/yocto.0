Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4DDE012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:15:14 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Feb 2013 03:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,699,1355126400"; d="scan'208";a="204384908"
Received: from sorvi.fi.intel.com ([10.237.72.58])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Feb 2013 03:15:12 -0800
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Feb 2013 13:15:10 +0200
Message-Id: <1361358910-32135-1-git-send-email-jukka.rissanen@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH] meta: Fix error print
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
X-List-Received-Date: Wed, 20 Feb 2013 11:15:14 -0000

Instead of printing
ERROR: %s does not appear in package list, please add it package-systemd
print
ERROR: package-systemd does not appear in package list, please add it
instead.

Signed-off-by: Jukka Rissanen <jukka.rissanen@linux.intel.com>
---
 meta/classes/systemd.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/systemd.bbclass b/meta/classes/systemd.bbclass
index 00865ed..564cd72 100644
--- a/meta/classes/systemd.bbclass
+++ b/meta/classes/systemd.bbclass
@@ -53,7 +53,7 @@ python systemd_populate_packages() {
     def systemd_check_package(pkg_systemd):
         packages = d.getVar('PACKAGES', True)
         if not pkg_systemd in packages.split():
-            bb.error('%s does not appear in package list, please add it', " " + pkg_systemd)
+            bb.error('%s does not appear in package list, please add it' % pkg_systemd)
 
 
     # Add a runtime dependency on systemd to pkg
-- 
1.7.11.4


