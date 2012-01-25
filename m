Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43E4CE00593
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:00:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2012 16:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="100205499"
Received: from unknown (HELO localhost) ([10.255.13.231])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2012 16:00:50 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Tue, 24 Jan 2012 18:00:05 -0600
Message-Id: <31e3e91395db00597808e237aa9e9ecea3a0100b.1327449325.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
References: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1327449325.git.tom.zanussi@intel.com>
References: <cover.1327449325.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-fri2: remove PREFERRED_VERSION for emgd-driver-bin
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
X-List-Received-Date: Wed, 25 Jan 2012 00:00:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

fri2 specifies a preferred version of 1.8 for emgd, but there's really
no reason to do that at this point - it should be able to use the new
1.10 version.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2.conf |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 9ae4287..c69aa40 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -17,7 +17,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
-- 
1.7.0.4


