Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF23DE01222
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2011 08:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="40340154"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2011 08:26:39 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:53 -0500
Message-Id: <d8763c881071afe7c52d4804b16ed83f47f5eea9.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 3/9] meta-crownbay: select emgd 1.8
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Change preferred version of emgd binaries to 1.8.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index b4ea4b4..28d2902 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -28,7 +28,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-video-vesa"
 
 PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.6"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4


