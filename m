Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 321C3E0050E
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 18:41:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2011 18:41:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,391,1312182000"; d="scan'208";a="54265092"
Received: from unknown (HELO [10.255.14.162]) ([10.255.14.162])
	by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2011 18:41:23 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 15 Sep 2011 20:41:09 -0500
Message-ID: <1316137269.2384.76.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-intel/n450-audio: add PN to RDEPENDS
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
X-List-Received-Date: Fri, 16 Sep 2011 01:41:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

RDEPENDS is package-specific, so add ${PN} to it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
index 27904e3..106ca46 100644
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
@@ -8,7 +8,7 @@ PR = "r4"
 
 inherit update-rc.d
 
-RDEPENDS = "alsa-utils-amixer"
+RDEPENDS_${PN} = "alsa-utils-amixer"
 
 SRC_URI = "file://n450-audio"
 
-- 
1.7.0.4




