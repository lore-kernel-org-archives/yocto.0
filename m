Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DAA6E00748
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2011 20:54:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Dec 2011 20:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="83291342"
Received: from unknown (HELO localhost) ([10.255.12.237])
	by orsmga001.jf.intel.com with ESMTP; 05 Dec 2011 20:54:02 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Dec 2011 22:53:58 -0600
Message-Id: <5fe5573deb1667a695c37dfb48b513eede94aa24.1323136480.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <90f802f1a71cc79a5cc23b0425a4ceaa8385c1e4.1323136480.git.tom.zanussi@intel.com>
References: <90f802f1a71cc79a5cc23b0425a4ceaa8385c1e4.1323136480.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1323136479.git.tom.zanussi@intel.com>
References: <cover.1323136479.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-crownbay: use gst-va-intel
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
X-List-Received-Date: Tue, 06 Dec 2011 04:54:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have crownbay use gst-va-intel so we can easily test and make use of
the video acceleration capabilities of this machine.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index a57cc1c..1bf3bdd 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -17,3 +17,5 @@ PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 APPEND += "video=vesafb vga=0x318"
+
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel"
-- 
1.7.0.4


