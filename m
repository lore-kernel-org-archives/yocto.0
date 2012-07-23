Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BC3E004A1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:07:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 03:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172433696"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 03:07:20 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Mon, 23 Jul 2012 03:06:15 -0700
Message-Id: <74eabb03f090212912975b113d22a0e89a009f74.1343037893.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343037893.git.nitin.a.kamble@intel.com>
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
Subject: [PATCH 6/6] gnu-efi: fix whitespace usage
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
X-List-Received-Date: Tue, 24 Jul 2012 10:07:20 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

the use of tabs was causing bitbake warnings. TO avoid these warnings
converted tags into space which is also the recommended indenting for
python code.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
index 252d49a..a0d5823 100644
--- a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
+++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
@@ -17,11 +17,11 @@ SRC_URI[md5sum] = "d0a21125aee56c0c7291ad260e916cb3"
 S = "${WORKDIR}/gnu-efi-3.0"
 
 def gnu_efi_arch(d):
-	import re
-	tarch = d.getVar("TARGET_ARCH", True)
-	if re.match("i[3456789]86", tarch):
-		return "ia32"
-	return tarch
+    import re
+    tarch = d.getVar("TARGET_ARCH", True)
+    if re.match("i[3456789]86", tarch):
+        return "ia32"
+    return tarch
 
 EXTRA_OEMAKE = "'ARCH=${@gnu_efi_arch(d)}' 'CC=${CC}' 'AS=${AS}' 'LD=${LD}' 'AR=${AR}' \
                 'RANLIB=${RANLIB}' 'OBJCOPY=${OBJCOPY}' \
-- 
1.7.3.4


