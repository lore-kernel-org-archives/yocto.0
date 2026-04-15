Return-Path: <Haitao.Liu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15B1AF531E9
	for <webhook@archiver.kernel.org>; Wed, 15 Apr 2026 09:06:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14608.1776243983470171702
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2026 02:06:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=FCBINO2w;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8565fa3143=haitao.liu@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63F4tXnv2686374
	for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 02:06:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=PPS06212021; bh=Tg8vJzE09PPGiOl4fNbC
	D22G0Q3oXY9KYD75TSqYZ/A=; b=FCBINO2wjCKSyGngcc7cXj0WFYanDKcS+BP2
	xXKW4a1nyzvsdJv2WrDNLncuOR4L4rkTrHQt0FkMyqWYZB87VBFs4awuH41McHaM
	5T+eo+ZoE8OqVObucWW+dzcg04gCA4tbdGAoHA2bIAHyb76Nctb5IZgzQOGTBXCC
	bBnB8O8ho/1sR/mz3LEMx64mD3G8tdaFwAzSa1TgHdu7kbK9YN88Ych7nC7dncRe
	V4SvUAsSkUdIdZoDJKxBSHyloiGAtNLQnsZh16LM/xkbglY+clPF/1wldt4kjDxa
	spPwpDyB495kl+LyHR81XObj41f/L2Gk1q2oEZ7SxTiQnXxpuQ==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [128.224.246.36])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4dh87msshn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 02:06:22 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Wed, 15 Apr 2026 02:06:21 -0700
Received: from pek-lpd-susbld.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Wed, 15 Apr 2026 02:06:21 -0700
From: Haitao Liu <haitao.liu@windriver.com>
To: <kai.kang@windriver.com>, <yocto@lists.yoctoproject.org>
Subject: [yocto][meta-anaconda][PATCH 1/2] anaconda: fix duplicate RDEPENDS entry and remove orphaned patches
Date: Wed, 15 Apr 2026 17:06:19 +0800
Message-ID: <20260415090620.2450794-1-haitao.liu@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDA4MiBTYWx0ZWRfXx0pJlr688OpH
 CzBxBZga9lURc6xfDDE/8hfrNKwLE9mn2zvVPv8/ojsvikJH1iYZE1B5JB+mhy9qYmQdjahvLMj
 KtD3x0gZ2tS8f9xVjzP5FKA2g9reZXBYt2aFurZCdGgtGYJMWK/pKdI6kHk4uVCmONtMtwIRDvR
 pwZaGz/5O5wj1R6wj5BY/WImpKWOSi41U0+bHpWRD68NJ4/p7XzWd6/SgJnOrlEEXOOiG5MqRGL
 LGtR5ziwz0fdbbHTinnakiHVU+13DlWHijxKUiLPCW7F/+sPNqAF8ue+ZJtEXH+qlnYIYFjXLyG
 SQbEye7TksE124sYNWwXncLev7aC8EIrE94iZ/uxb5ILE5ws3s7Jr92xJJZKaw4jmglxIhntuVf
 bVAEtxYvcywIQEhJNUb0PC4yJwzIggA+9ML1CXpGLtbyYd6bI0Hl0AMTBQSo+csK8J0mmSXcJLK
 s15+q6h7mAQk5+AEMKw==
X-Proofpoint-ORIG-GUID: n9nIRaKn6fdrmCztHRGECzxwSWCZtxgq
X-Authority-Analysis: v=2.4 cv=GupyPE1C c=1 sm=1 tr=0 ts=69df550e cx=c_pps
 a=AbJuCvi4Y3V6hpbCNWx0WA==:117 a=AbJuCvi4Y3V6hpbCNWx0WA==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22
 a=iKiJcTA2PjBS6x5JeXcw:22 a=t7CeM3EgAAAA:8 a=WP5zsaevAAAA:8 a=20KFwNOVAAAA:8
 a=1CZt0XEYP282iw0mMMgA:9 a=FdTzh2GWekK77mhwV6Dw:22 a=t8Kx07QrZZTALmIZmm-o:22
X-Proofpoint-GUID: n9nIRaKn6fdrmCztHRGECzxwSWCZtxgq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-14_04,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 adultscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604150082
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2026 09:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66417

Remove the duplicate `python3-crypt-r` entry in RDEPENDS:${PN} in
python3-anaconda_42.27.11.bb. The duplication appears to be a
copy-paste error and may be masking a missing dependency.

Also remove the following unreferenced patch files from the
files/ directory, as they are not listed in SRC_URI:

   - 0029-support-user-account-creation.patch
   - 0035-set-keyboard-xlayouts-with-us-by-default.patch
   - 0043-fix-hang-while-installed-system-reboot.patch

Signed-off-by: Haitao Liu <haitao.liu@windriver.com>
---
 .../0029-support-user-account-creation.patch  | 82 -------------------
 ...keyboard-xlayouts-with-us-by-default.patch | 50 -----------
 ...x-hang-while-installed-system-reboot.patch | 31 -------
 .../anaconda/python3-anaconda_42.27.11.bb     |  1 -
 4 files changed, 164 deletions(-)
 delete mode 100644 recipes-installer/anaconda/files/0029-support-user-account-creation.patch
 delete mode 100644 recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
 delete mode 100644 recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch

diff --git a/recipes-installer/anaconda/files/0029-support-user-account-creation.patch b/recipes-installer/anaconda/files/0029-support-user-account-creation.patch
deleted file mode 100644
index 937c51e..0000000
--- a/recipes-installer/anaconda/files/0029-support-user-account-creation.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-From b93bf80525624fd7038b370f35ace90a3b3bdb1b Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Tue, 24 Jul 2018 15:05:25 +0800
-Subject: [PATCH] support user account creation
-
-- Do not support user accout advanced setting
-
-- Add main for debugging test
-
-Upstream-Status: Inappropriate [oe specific]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- pyanaconda/ui/gui/spokes/user.py |  7 +------
- pyanaconda/users.py              | 15 +++++++++++++++
- 2 files changed, 16 insertions(+), 6 deletions(-)
-
-diff --git a/pyanaconda/ui/gui/spokes/user.py b/pyanaconda/ui/gui/spokes/user.py
-index 2398810..9d7de2a 100644
---- a/pyanaconda/ui/gui/spokes/user.py
-+++ b/pyanaconda/ui/gui/spokes/user.py
-@@ -267,6 +267,7 @@ class UserSpoke(FirstbootSpokeMixIn, NormalSpoke, GUISpokeInputCheckHandler):
-         self._password_required_checkbox = self.builder.get_object("password_required_checkbox")
-         # advanced user configration dialog button
-         self._advanced_button = self.builder.get_object("advanced_button")
-+        self._advanced_button.set_sensitive(False)
-         # password checking status bar & label
-         self._password_bar = self.builder.get_object("password_bar")
-         self._password_label = self.builder.get_object("password_label")
-@@ -500,12 +501,6 @@ class UserSpoke(FirstbootSpokeMixIn, NormalSpoke, GUISpokeInputCheckHandler):
-         """Called by Gtk on all username changes."""
-         new_username = editable.get_text()
- 
--        # Disable the advanced user dialog button when no username is set
--        if editable.get_text():
--            self._advanced_button.set_sensitive(True)
--        else:
--            self._advanced_button.set_sensitive(False)
--
-         # update the username in checker
-         self.checker.username = new_username
- 
-diff --git a/pyanaconda/users.py b/pyanaconda/users.py
-index 3db06dd..edf3469 100644
---- a/pyanaconda/users.py
-+++ b/pyanaconda/users.py
-@@ -28,6 +28,8 @@ from pyanaconda.errors import errorHandler, PasswordCryptError, ERROR_RAISE
- from pyanaconda.core.regexes import GROUPLIST_FANCY_PARSE, NAME_VALID, PORTABLE_FS_CHARS, GROUPLIST_SIMPLE_VALID
- import crypt
- from pyanaconda.core.i18n import _
-+from pyanaconda.core import constants
-+
- import re
- 
- from pyanaconda.anaconda_loggers import get_module_logger
-@@ -200,6 +202,7 @@ class Users(object):
-                           homedir will be interpreted relative to this. Defaults
-                           to util.getSysroot().
-         """
-+        log.info("kwargs %s" % kwargs)
-         root = kwargs.get("root", util.getSysroot())
- 
-         if self._getgrnam(group_name, root):
-@@ -431,3 +434,15 @@ class Users(object):
-         if not authfile_existed:
-             os.chown(authfile, int(uid), int(gid))
-             util.execWithRedirect("restorecon", ["-r", sshdir])
-+
-+# For testing
-+if __name__ == "__main__":
-+    from pyanaconda import anaconda_logging
-+    anaconda_logging.init()
-+    anaconda_logging.logger.setupVirtio(constants.VIRTIO_PORT)
-+
-+    from pyanaconda.anaconda_loggers import get_anaconda_root_logger
-+    log = get_anaconda_root_logger()
-+
-+    users = Users()
-+    users.createUser("test", password="123456", shell="/bin/bash", groups=["wheel"])
--- 
-2.7.4
-
diff --git a/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch b/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
deleted file mode 100644
index 46b9993..0000000
--- a/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-From 8d69d02b27190c90dc5fd6dcf37420c221ec5660 Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Tue, 24 Jul 2018 17:02:45 +0800
-Subject: [PATCH 35/65] set keyboard xlayouts with 'us' by default
-
-Previously only graphic set keyboard xlayouts with 'us' by default,
-and text mode did not have the setting and it caused 100% cpu when
-loadkey invoked. The hung of loadkey also caused reboot failed.
-
-The setting in default ks works on both of graphic and text.
-
-Revert the following fix:
----------
-commit ec53ff6e4a7a06d190925a482371031a2f48509d
-Author: Martin Kolman <mkolman@redhat.com>
-Date:   Thu Jan 19 18:37:29 2017 +0100
-
-    Use correct default password quality value
----------
-
-Upstream-Status: Inappropriate [oe specific]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- data/interactive-defaults.ks | 12 +-----------
- 1 file changed, 1 insertion(+), 11 deletions(-)
-
-diff --git a/data/interactive-defaults.ks b/data/interactive-defaults.ks
-index a906c8c..a2f0555 100644
---- a/data/interactive-defaults.ks
-+++ b/data/interactive-defaults.ks
-@@ -1,14 +1,4 @@
- # Kickstart defaults file for an interative install.
- # This is not loaded if a kickstart file is provided on the command line.
- firstboot --enable
--
--%anaconda
--# Default password policies
--pwpolicy root --notstrict --minlen=6 --minquality=1 --nochanges --notempty
--pwpolicy user --notstrict --minlen=6 --minquality=1 --nochanges --emptyok
--pwpolicy luks --notstrict --minlen=6 --minquality=1 --nochanges --notempty
--# NOTE: This applies only to *fully* interactive installations, partial kickstart
--#       installations use defaults specified in pyanaconda/pwpolicy.py.
--#       Automated kickstart installs simply ignore the password policy as the policy
--#       only applies to the UI, not for passwords specified in kickstart.
--%end
-+keyboard --xlayouts='us'
--- 
-2.7.4
-
diff --git a/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch b/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch
deleted file mode 100644
index 64d2c07..0000000
--- a/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From fabbb3751d64f56a01fca1981d0c0ff45fbd228c Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Wed, 25 Jul 2018 10:29:23 +0800
-Subject: [PATCH 43/65] fix hang while installed system reboot
-
-The lvm2 installed to target system, and it disabled by
-default which caused target system reboot hang.
-
-Enable service lvm2-monitor.service could fix the issue.
-
-Upstream-Status: Inappropriate [oe specific]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- data/interactive-defaults.ks | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/data/interactive-defaults.ks b/data/interactive-defaults.ks
-index a2f0555..0deb059 100644
---- a/data/interactive-defaults.ks
-+++ b/data/interactive-defaults.ks
-@@ -2,3 +2,6 @@
- # This is not loaded if a kickstart file is provided on the command line.
- firstboot --enable
- keyboard --xlayouts='us'
-+
-+# Fix hang while installed system reboot
-+services --enabled lvm2-monitor.service
--- 
-2.7.4
-
diff --git a/recipes-installer/anaconda/python3-anaconda_42.27.11.bb b/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
index aa4f93a..1e6751a 100755
--- a/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
+++ b/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
@@ -158,7 +158,6 @@ RDEPENDS:${PN} = "bash \
                   python3-core \
                   python3-coverage \
                   python3-crypt-r \
-                  python3-crypt-r \
                   python3-dasbus \
                   python3-dbus-next \
                   python3-iso639 \
-- 
2.34.1


