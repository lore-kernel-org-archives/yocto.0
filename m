Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71FBEE00866
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 08:52:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2014 08:48:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,613,1384329600"; d="scan'208";a="434570985"
Received: from unknown (HELO localhost) ([10.255.12.17])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2014 08:52:47 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  6 Jan 2014 11:55:32 -0600
Message-Id: <11fc51c05f378b7fef2f5879e8e1f11d7046e85b.1389030821.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c05b1f112b9f2e7049e8b66694f7438e3c3442cb.1389030821.git.tom.zanussi@intel.com>
References: <c05b1f112b9f2e7049e8b66694f7438e3c3442cb.1389030821.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1389030821.git.tom.zanussi@intel.com>
References: <cover.1389030821.git.tom.zanussi@intel.com>
Subject: [PATCH 10/10] meta-sys940x: Use the symlink to the actual image in README
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
X-List-Received-Date: Mon, 06 Jan 2014 16:52:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Using the image symlink when dd'ing is more convenient for the user -
update the documentation to reflect that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sys940x/README |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-sys940x/README b/meta-sys940x/README
index f63d3c9..57f64f2 100644
--- a/meta-sys940x/README
+++ b/meta-sys940x/README
@@ -152,7 +152,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=core-image-sato-sys940x-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-sys940x.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.9.5


