Return-Path: <joe.slater@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7449AE00747
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 09:51:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r85Gpbii013552
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Sep 2013 09:51:37 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Thu, 5 Sep 2013 09:51:37 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>
Date: Thu, 5 Sep 2013 09:51:36 -0700
Message-ID: <1378399896-28502-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [PATCH 1/1] tar: add acl dependency information
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
X-List-Received-Date: Thu, 05 Sep 2013 16:51:41 -0000
Content-Type: text/plain

If acl is a distro feature, we want to depend
on it.  Note that without the xattrs patch, tar
cannot deal with acl information.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 recipes-extended/tar/tar_1.26.bbappend |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/recipes-extended/tar/tar_1.26.bbappend b/recipes-extended/tar/tar_1.26.bbappend
index 4b971c5..972a7b8 100644
--- a/recipes-extended/tar/tar_1.26.bbappend
+++ b/recipes-extended/tar/tar_1.26.bbappend
@@ -1,7 +1,15 @@
-PR .= ".2"
+PR .= ".selinux3"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += "file://tar-1.24-xattrs.patch"
 
 inherit enable-selinux
+
+
+PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+
+# configure has no acl enable/disable options!
+#
+PACKAGECONFIG[acl] = ",,acl,"
+
-- 
1.7.3.4


