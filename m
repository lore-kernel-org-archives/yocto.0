Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC343E00DE6; Wed, 12 Jun 2019 00:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDF7E00D00
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 00:53:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5C7rNiH002373
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Jun 2019 00:53:23 -0700 (PDT)
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 12 Jun 2019 00:53:22 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Wed, 12 Jun 2019 15:53:20 +0800
Message-ID: <1560326000-21130-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-selinux][PATCH] glib-2.0: fix configure error for meson build
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
X-List-Received-Date: Wed, 12 Jun 2019 07:53:25 -0000
Content-Type: text/plain

In glib 2.60.x, it turns selinux into a meson feature. We should use
'-Dselinux=enabled/disabled' rather than '-Dselinux=true/false' to
enable/disable the feature.

Add meso-enable-selinux.bbclass for this change and inherit it in
glib-2.0 bbappend to fix the configure error.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 classes/meson-enable-selinux.bbclass      | 4 ++++
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)
 create mode 100644 classes/meson-enable-selinux.bbclass

diff --git a/classes/meson-enable-selinux.bbclass b/classes/meson-enable-selinux.bbclass
new file mode 100644
index 0000000..91c2a2b
--- /dev/null
+++ b/classes/meson-enable-selinux.bbclass
@@ -0,0 +1,4 @@
+inherit selinux
+
+PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index e5d2f6f..39a0a3a 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-enable-selinux', '', d)}
-- 
2.7.4


