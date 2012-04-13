Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8D6E013D9
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 20:30:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Apr 2012 20:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141193139"
Received: from unknown (HELO localhost) ([10.255.12.48])
	by fmsmga001.fm.intel.com with ESMTP; 12 Apr 2012 20:30:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2012 22:28:19 -0500
Message-Id: <a0357d249133a33fe38604ae86e9c04ddaae5a50.1334286512.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
References: <a57362e323e1f5a9efa2d8682bc4be14450a894b.1334286512.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1334286512.git.tom.zanussi@intel.com>
References: <cover.1334286512.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] yocto-bsp: fix qemuarch test for xserver-xf86-config.bbappend
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
X-List-Received-Date: Fri, 13 Apr 2012 03:30:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

While testing the fix for [YOCTO #2222] I noticed that the qemuarch
test was wrong - there is no 'x86' qemuarch, just 'i386'.  Change the
test to match.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" (100%)

diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
-- 
1.7.0.4


