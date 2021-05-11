Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.8924.1620713351525409153
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 23:09:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.196, mailfrom: robert.joslyn@redrectangle.org)
X-Originating-IP: 173.197.191.182
Received: from localhost.localdomain (rrcs-173-197-191-182.west.biz.rr.com [173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E323DE0013;
	Tue, 11 May 2021 06:09:08 +0000 (UTC)
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
To: yocto@lists.yoctoproject.org
Cc: Robert Joslyn <robert.joslyn@redrectangle.org>
Subject: [meta-gplv2][PATCH] conf/distro: Restore btrfs-tools since it was relicensed
Date: Mon, 10 May 2021 23:08:39 -0700
Message-Id: <20210511060839.299840-1-robert.joslyn@redrectangle.org>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

libbtrfsutil was relicensed from LGPL-3.0+ to LGPL-2.1+, so it is no
longer necessary to remove btrfs-tools.

Signed-off-by: Robert Joslyn <robert.joslyn@redrectangle.org>
---
 conf/distro/include/disable-gplv3.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 3285543..bded378 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,4 +1,3 @@
 INCOMPATIBLE_LICENSE = '*GPLv3*'
 WARN_QA_remove = 'incompatible-license'
 RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
-RDEPENDS_${PN}-ptest_remove_pn-util-linux = "btrfs-tools"
-- 
2.26.3

