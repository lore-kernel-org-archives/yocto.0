Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F8F4E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 12:51:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Dec 2011 12:51:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45727179"
Received: from unknown (HELO envy.home) ([10.255.12.30])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Dec 2011 12:51:37 -0800
Message-ID: <4EE274E8.4000605@linux.intel.com>
Date: Fri, 09 Dec 2011 12:51:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Zanussi, Tom" <tom.zanussi@intel.com>, Saul Wold <sgw@linux.intel.com>
X-Enigmail-Version: 1.3.3
Subject: [PATCH] n450: drop ROOTLESS_X as it breaks X
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
X-List-Received-Date: Fri, 09 Dec 2011 20:51:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Fixes [YOCTO #1797]

Building with ROOTLESS_X results in X failing start with
the following error:

i915 0000:00:02.0: VGA-1: EDID block 0 invalid.
(EE) AIGLX error: dlopen of /usr/lib/dri/i915_dri.so failed
(/usr/lib/dri/i915_dri)
(EE) AIGLX: reverting to software rendering
(EE) AIGLX error: dlopen of /usr/lib/dri/swrast_dri.so failed
(/usr/lib/dri/swrast)
(EE) GLX: could not load software renderer

The n450 BSP is the only BSP in meta-intel using ROOTLESS_X. Dropping
it restores functionality and brings it inline with the rest of the BSPs.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/meta-n450/conf/machine/n450.conf
b/meta-n450/conf/machine/n450.conf
index 7210da8..3e6a541 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -16,5 +16,3 @@ SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"

 MACHINE_EXTRA_RRECOMMENDS += "n450-audio"
-
-ROOTLESS_X = "1"
-- 
1.7.5.4
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

