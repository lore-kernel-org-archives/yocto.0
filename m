Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C69E0123F
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:00:53 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2012 16:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="102328390"
Received: from unknown (HELO localhost) ([10.255.13.231])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2012 16:00:53 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Tue, 24 Jan 2012 18:00:06 -0600
Message-Id: <1608d7dda9f522d9459fc7ed79836c5f730b5c6f.1327449325.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
References: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1327449325.git.tom.zanussi@intel.com>
References: <cover.1327449325.git.tom.zanussi@intel.com>
Subject: [PATCH 4/6] meta-crownbay: remove PREFERRED_VERSION for emgd-driver-bin
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
X-List-Received-Date: Wed, 25 Jan 2012 00:00:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

crownbay specifies a preferred version of 1.8 for emgd, but there's
really no reason to do that at this point - it should be able to use
the new 1.10 version.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 1bf3bdd..15bfd52 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -14,7 +14,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 APPEND += "video=vesafb vga=0x318"
 
-- 
1.7.0.4


