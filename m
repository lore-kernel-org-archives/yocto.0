Return-Path: <joe.slater@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ABDFE00282
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 10:44:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r86Hi5H0019276
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 6 Sep 2013 10:44:05 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Fri, 6 Sep 2013 10:44:04 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 6 Sep 2013 10:44:04 -0700
Message-ID: <1378489444-22731-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux][PATCH 1/1] openssh: add PACKAGECONFIG data regarding audit
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
X-List-Received-Date: Fri, 06 Sep 2013 17:44:08 -0000
Content-Type: text/plain

Define audit related parameters, but do not enable
audit support by default.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 .../openssh/openssh_6.2p2.bbappend                 |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/recipes-connectivity/openssh/openssh_6.2p2.bbappend b/recipes-connectivity/openssh/openssh_6.2p2.bbappend
index 43d459c..1e919b1 100644
--- a/recipes-connectivity/openssh/openssh_6.2p2.bbappend
+++ b/recipes-connectivity/openssh/openssh_6.2p2.bbappend
@@ -1,5 +1,13 @@
-PR .= ".4"
+PR .= ".selinux4"
 
 inherit with-selinux
 
 FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
+
+# There is no distro feature just for audit.  If we want it,
+# uncomment the following.
+#
+#PACKAGECONFIG += "${@target_selinux(d, 'audit')}"
+
+PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
+
-- 
1.7.3.4


