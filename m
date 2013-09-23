Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD28BE0161F
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:07:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2013 06:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="399711512"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.20])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2013 06:07:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2013 14:07:03 +0100
Message-Id: <39866861a66d62aada6c0dae07521aedb6fe2d35.1379941403.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 4/4] samba: fix QA error due to volatiles presence
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
X-List-Received-Date: Mon, 23 Sep 2013 13:07:25 -0000

Adapted from a meta-oe change by Jonathan Liu <net147@gmail.com>.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-connectivity/samba/samba_3.6.8.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-connectivity/samba/samba_3.6.8.bb b/recipes-connectivity/samba/samba_3.6.8.bb
index 55bed1e..d2722a3 100644
--- a/recipes-connectivity/samba/samba_3.6.8.bb
+++ b/recipes-connectivity/samba/samba_3.6.8.bb
@@ -58,6 +58,12 @@ do_compile () {
 	base_do_compile
 }
 
+do_install_append() {
+	rmdir "${D}${localstatedir}/lock"
+	rmdir "${D}${localstatedir}/run"
+	rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
+}
+
 pkg_postinst_${PN} () {
 	if [ "x$D" != "x" ] ; then
 		exit 1
-- 
1.8.1.2


