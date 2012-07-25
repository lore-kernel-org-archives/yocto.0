Return-Path: <raj.khem@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C15E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 00:31:31 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so426537ggn.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 00:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=QWcl3ThtDVUfp7+Bea3eqGRAS7TTMOJvBUGlGV8YXi4=;
	b=QfKwcNBHutKZqys5IxYcCbjN2W/KXovehlpa46CwWulkHXIjkIKC639tnA3VfOQTs4
	h3bzQZ28/1l3sz73cEc6qZlhcnrF21oF4oYDHKD4kKzuUjDnBc5aIeUyJFk325Gq6swd
	lHwv+zMiCVkROxVVkwJ4D60j0z/u/2CfLS4wcV6Z6O1pyB5SjnkVpfz+qUWUVCruMXCj
	gpb6vFSNsiJTszllwGZB2U9EwNlzKlTRrSrs+g1KADA9aYq0DDMZUdLlCkGafDxfuK9P
	bXRsBDWBgCUSkSQOv5niJoduuXxPXuOq7NjlIJjsYq4HQ2Cu/MUhdutnBr9IlFrpBtOW
	zy4Q==
Received: by 10.66.87.2 with SMTP id t2mr10654720paz.22.1343201490697;
	Wed, 25 Jul 2012 00:31:30 -0700 (PDT)
Received: from kraj-lnx.juniper.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id
	op10sm13829557pbc.75.2012.07.25.00.31.28
	(version=SSLv3 cipher=OTHER); Wed, 25 Jul 2012 00:31:29 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Jul 2012 00:31:18 -0700
Message-Id: <1343201478-14259-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][PATCH] gnu-efi_3.0m.bb: Fix tabs with spaces in python snippet
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
X-List-Received-Date: Wed, 25 Jul 2012 07:31:32 -0000

This shuts up new bitbake otherwise it warns about this
always

Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
1.7.5.4


