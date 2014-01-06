Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D73E1E00822
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 08:52:23 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2014 08:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,613,1384329600"; d="scan'208";a="454334483"
Received: from unknown (HELO localhost) ([10.255.12.17])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2014 08:52:23 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  6 Jan 2014 11:55:25 -0600
Message-Id: <99a6513793949f169e7efc7d1fcbff2fdfd82578.1389030821.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c05b1f112b9f2e7049e8b66694f7438e3c3442cb.1389030821.git.tom.zanussi@intel.com>
References: <c05b1f112b9f2e7049e8b66694f7438e3c3442cb.1389030821.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1389030821.git.tom.zanussi@intel.com>
References: <cover.1389030821.git.tom.zanussi@intel.com>
Subject: [PATCH 03/10] meta-crystalforest: Use the symlink to the actual image in README
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
 meta-crystalforest/README |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crystalforest/README b/meta-crystalforest/README
index c0841cf..67de39d 100644
--- a/meta-crystalforest/README
+++ b/meta-crystalforest/README
@@ -134,13 +134,13 @@ example:
 
 To boot the Gladden Platform:
 
-# dd if=core-image-sato-crystalforest-gladden-20120829033154.hddimg of=/dev/sdf
+# dd if=core-image-sato-crystalforest-gladden.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
 To boot the Server Platform:
 
-# dd if=core-image-sato-crystalforest-server-20120829044852.hddimg of=/dev/sdf
+# dd if=core-image-sato-crystalforest-server.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.9.5


