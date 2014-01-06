Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86416E00822
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 08:52:21 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2014 08:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,613,1384329600"; d="scan'208";a="454334418"
Received: from unknown (HELO localhost) ([10.255.12.17])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2014 08:52:19 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  6 Jan 2014 11:55:23 -0600
Message-Id: <c05b1f112b9f2e7049e8b66694f7438e3c3442cb.1389030821.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389030821.git.tom.zanussi@intel.com>
References: <cover.1389030821.git.tom.zanussi@intel.com>
Subject: [PATCH 01/10] meta-chiefriver: Use the symlink to the actual image in README
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
X-List-Received-Date: Mon, 06 Jan 2014 16:52:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Using the image symlink when dd'ing is more convenient for the user -
update the documentation to reflect that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-chiefriver/README |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 925abaa..f846be6 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -132,7 +132,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=core-image-sato-chiefriver-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-chiefriver.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.9.5


