Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49B1BE0121B;
	Fri,  8 Feb 2013 14:32:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2013 14:32:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="288629884"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.181])
	by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2013 14:32:15 -0800
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	rahul.saxena@intel.com, song.liu@intel.com, meta-intel@yoctoproject.org,
	yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:34:39 -0800
Message-Id: <28f4c63063a01a792ed8207ebd2141b29b6a91de.1360362497.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <af0b8607af65a3978a2d757ef981f42fcbf87acf.1360362497.git.kishore.k.bodke@intel.com>
References: <af0b8607af65a3978a2d757ef981f42fcbf87acf.1360362497.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1360362497.git.kishore.k.bodke@intel.com>
References: <cover.1360362497.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/2] [meta-intel] meta-intel: Update the MAINTAINERS list.
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
X-List-Received-Date: Fri, 08 Feb 2013 22:32:16 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Updating the MAINTAINERS list after removing
the Cedartrail BSP from meta-intel.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 MAINTAINERS |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1973136..bc33d4b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -36,10 +36,6 @@ Please keep this list in alphabetical order.
 Maintainers List (try to look for most precise areas first)
 
 		-----------------------------------
-CEDARTRAIL
-M:      Kishore Bodke <kishore.k.bodke@intel.com>
-F:      meta-cedartrail/
-
 CHIEFRIVER
 M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-chiefriver/
-- 
1.7.9.5


