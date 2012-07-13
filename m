Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B13E0027E
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 16:18:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2012 16:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="171649730"
Received: from wrk.jf.intel.com ([10.7.202.60])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2012 16:18:04 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Jul 2012 16:19:02 -0700
Message-Id: <1342221542-17995-2-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1342221542-17995-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342221542-17995-1-git-send-email-kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 2/2] kernel: enable nfsd when using the 3.2 kernel
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
X-List-Received-Date: Fri, 13 Jul 2012 23:18:04 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-kernel/linux/linux-yocto_3.2.bbappend |    3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.2.bbappend b/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..70bed3b
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://nfs.cfg"
-- 
1.7.9.5


