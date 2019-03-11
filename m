Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEDF1E00C93; Sun, 10 Mar 2019 22:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ABFCE006D8
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2019 22:53:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x2B5r5fj013183
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2019 22:53:21 -0700
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.439.0;
	Sun, 10 Mar 2019 22:53:08 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 11 Mar 2019 01:52:00 -0400
Message-ID: <20190311055200.12720-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] meson-selinux.bbclass: add for meson build system
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
X-List-Received-Date: Mon, 11 Mar 2019 05:53:32 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Add meson-selinux.bbclass for meson build system. It used
'-Dselinux=true/false' to enable/disable 'selinux' rather than
--enable-selinux or --with-selinux.

Inherit meson-selinux for glib-2.0 to fix configure failure.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 classes/meson-selinux.bbclass             | 4 ++++
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)
 create mode 100644 classes/meson-selinux.bbclass

diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbclass
new file mode 100644
index 0000000..77a763a
--- /dev/null
+++ b/classes/meson-selinux.bbclass
@@ -0,0 +1,4 @@
+inherit selinux
+
+PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux,"
diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 74e22b3..e5d2f6f 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-selinux', '', d)}
-- 
2.20.0


