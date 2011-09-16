Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 259A8E004DD
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 18:41:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Sep 2011 18:41:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,391,1312182000"; d="scan'208";a="17685169"
Received: from unknown (HELO [10.255.14.162]) ([10.255.14.162])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Sep 2011 18:41:21 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 15 Sep 2011 20:41:06 -0500
Message-ID: <1316137266.2384.75.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-yocto/beagleboard-audio: add PN to RDEPENDS
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
X-List-Received-Date: Fri, 16 Sep 2011 01:41:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

RDEPENDS is package-specific, so add ${PN} to it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../beagleboard-audio/beagleboard-audio.bb         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
index ee85715..c026547 100644
--- a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
+++ b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
@@ -8,7 +8,7 @@ PR = "r4"
 
 inherit update-rc.d
 
-RDEPENDS = "alsa-utils-amixer"
+RDEPENDS_${PN} = "alsa-utils-amixer"
 
 SRC_URI = "file://beagleboard-audio"
 
-- 
1.7.0.4




