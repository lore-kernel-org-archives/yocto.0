Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 655A6E013D9
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 02:56:17 -0700 (PDT)
Received: from mail-ea0-f200.google.com ([209.85.215.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 25 Oct 2012 02:56:16 -0700
Received: by mail-ea0-f200.google.com with SMTP id i11so1036930eaa.11
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 02:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=k4xxFFlbKeRD5eKHYFUzNfJh4ydfC2M5j9hmxRB8tCU=;
	b=Dff/jX9zib21gDs5bUr5qx4p68qSEjogwtZLN/femOfws4MFHHRZQi+0XF3+vs7IbG
	XygFC+O9zpkZDnYgZTm8jSRlhRr5zW7YpvWT6003WWpZUCPk2wwyjJERWApJoZ7TNncc
	+RKxr2XuPlAn8fRvOBJOfMCrtLVornrQSlANeQedLDNRl3u2bo+Pfe6sxTxscIi21c9o
	IzlxnXkOYSKUVAw3J5SHLUtEm8LK0KRtQbIHNTSakrT7DrQXtRQ5zmfy98c1fdjhCtuG
	EEYAXy228vbM3cOTeKbzCqW5tQ5aNyOX6S0QsHsO5r0PeDpyob9G5X3NG4q2z70Toj7o
	+MNQ==
Received: by 10.180.80.104 with SMTP id q8mr12587432wix.6.1351158974267;
	Thu, 25 Oct 2012 02:56:14 -0700 (PDT)
Received: by 10.180.80.104 with SMTP id q8mr12587402wix.6.1351158974050;
	Thu, 25 Oct 2012 02:56:14 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cu1sm9129250wib.6.2012.10.25.02.56.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 25 Oct 2012 02:56:12 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Oct 2012 10:55:04 +0100
Message-Id: <1351158904-5759-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQkcMK4WUwQ4OxQliV1hlk9pBORCbuFr8fPjhR7T6uFWyar4tQ3LzoSfaceB4KqoVi+Ot1bwsirBH8Vj2IesCPZr42on9rTd00L14g92dGyyyyHLygIWApS9//YBmlg5RhskP/oacRrguvhQMRAsWsdfod6AYA==
Subject: [PATCH] gnu-efi: add missing sha256 checksum
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
X-List-Received-Date: Thu, 25 Oct 2012 09:56:17 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
index a0d5823..f8015f2 100644
--- a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
+++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
@@ -13,6 +13,7 @@ SRC_URI = "http://downloads.sourceforge.net/gnu-efi/gnu-efi_3.0m.orig.tar.gz \
 	   file://parallel-make.patch \
           "
 SRC_URI[md5sum] = "d0a21125aee56c0c7291ad260e916cb3"
+SRC_URI[sha256sum] = "b7fb638f5ec8faa6edebe54beb90957f01ccccf70a2a948d1b58b834c8d7f86d"
 
 S = "${WORKDIR}/gnu-efi-3.0"
 
-- 
1.7.10


