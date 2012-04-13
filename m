Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B63C3E013F9
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 20:30:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Apr 2012 20:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="130388329"
Received: from unknown (HELO localhost) ([10.255.12.48])
	by azsmga001.ch.intel.com with ESMTP; 12 Apr 2012 20:30:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2012 22:28:21 -0500
Message-Id: <124bcafe63e57b8f11414d2e27d36c613480fcae.1334286512.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
References: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1334286512.git.tom.zanussi@intel.com>
References: <cover.1334286512.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] yocto-bsp: fix x86_64 tuning for qemu arch
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
X-List-Received-Date: Fri, 13 Apr 2012 03:30:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

While testing the fix for [YOCTO #2222] I noticed that the tuning for
the qemu x86_64 target was using the wrong tuning file - it should be
x86_64 instead of i586.  Change the template to match.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 61ba842..0e4ecad 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -20,7 +20,7 @@ PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
 {{ if qemuarch == "i386": }}
 require conf/machine/include/tune-i586.inc
 {{ if qemuarch == "x86_64": }}
-require conf/machine/include/tune-i586.inc
+require conf/machine/include/tune-x86_64.inc
 {{ if qemuarch == "arm": }}
 require conf/machine/include/tune-arm926ejs.inc
 {{ if qemuarch == "powerpc": }}
-- 
1.7.0.4


