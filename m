Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A77BE00C76; Fri, 20 Apr 2018 03:45:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2861E00843
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 03:45:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3KAjotG025676
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 03:45:50 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 20 Apr 2018 03:45:49 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 20 Apr 2018 06:45:29 -0400
Message-ID: <1524221129-220821-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH v2] systemd: create /var/lib/systemd/backlight in advance
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
X-List-Received-Date: Fri, 20 Apr 2018 10:45:52 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

v2 changes:
* Update patch for Yocto Compat - don't change layer's hash

============================================

The systemd-backlight@.service which called after selinux-init.service
will create /var/lib/systemd/backlight with incorrect security labels,
this causes the systemd-backlight service fails to start and stop.

Creating /var/lib/systemd/backlight in advance to make sure it could
always be relabelled by selinux-init while first booting.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/systemd/systemd_%.bbappend  | 2 +-
 recipes-core/systemd/systemd_selinux.inc | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/systemd/systemd_selinux.inc

diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-core/systemd/systemd_%.bbappend
index 5ac3adb..7719d3b 100644
--- a/recipes-core/systemd/systemd_%.bbappend
+++ b/recipes-core/systemd/systemd_%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
+require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/recipes-core/systemd/systemd_selinux.inc b/recipes-core/systemd/systemd_selinux.inc
new file mode 100644
index 0000000..b17e70a
--- /dev/null
+++ b/recipes-core/systemd/systemd_selinux.inc
@@ -0,0 +1,7 @@
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
+
+do_install_append() {
+	if ${@bb.utils.contains('PACKAGECONFIG', 'backlight', 'true', 'false', d)}; then
+		install -d ${D}${localstatedir}/lib/systemd/backlight
+	fi
+}
-- 
2.8.1


