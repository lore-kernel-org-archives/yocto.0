Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36E18E00515
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2011 08:29:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 16 Sep 2011 08:29:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,394,1312182000"; d="scan'208";a="17842469"
Received: from unknown (HELO [10.255.14.162]) ([10.255.14.162])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Sep 2011 08:28:59 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 16 Sep 2011 10:28:40 -0500
Message-ID: <1316186920.2384.92.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-intel/n450-audio: add PN to RDEPENDS [v2 - add PR bump]
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
X-List-Received-Date: Fri, 16 Sep 2011 15:29:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

RDEPENDS is package-specific, so add ${PN} to it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
index 27904e3..2a270aa 100644
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
@@ -4,11 +4,11 @@ SECTION = "base"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
 
-PR = "r4"
+PR = "r5"
 
 inherit update-rc.d
 
-RDEPENDS = "alsa-utils-amixer"
+RDEPENDS_${PN} = "alsa-utils-amixer"
 
 SRC_URI = "file://n450-audio"
 
-- 
1.7.0.4




