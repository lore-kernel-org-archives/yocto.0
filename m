Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378CDE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 12:44:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Sep 2012 12:43:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="199486812"
Received: from wrk.jf.intel.com ([10.7.202.88])
	by orsmga001.jf.intel.com with ESMTP; 28 Sep 2012 12:43:59 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Sep 2012 12:44:06 -0700
Message-Id: <036e0a003642b5dd99a9bb3b89efe7fa19462cb5.1348861287.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1348861287.git.kevin.strasser@linux.intel.com>
References: <cover.1348861287.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 1/1] nfs-utils: workaround for nfsd regression in the 3.4 kernel
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
X-List-Received-Date: Fri, 28 Sep 2012 19:44:00 -0000

The version of nfsd used in 3.4 kernels tries to upcall the
new reboot-recovery daemon and gets stuck if it is not found.
This causes client mounts to fail and prints the following
error message during boot:

"NFSD: starting 90-second grace period
NFSD: Unable to end grace period: -110"

If the directory "/var/lib/nfs/v4recovery" exists, nfsd will
revert back to the old method.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../nfs-utils/nfs-utils_1.2.3.bbappend             |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend

diff --git a/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
new file mode 100644
index 0000000..2c91a93
--- /dev/null
+++ b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
@@ -0,0 +1,8 @@
+PR = "r5"
+
+# Work around linux 3.4 nfsd regression
+do_install_prepend () {
+	install -d ${D}/var/lib/nfs/v4recovery
+}
+
+FILES_${PN} += "/var/lib/nfs/v4recovery"
-- 
1.7.9.5


