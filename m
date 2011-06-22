Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E699D4C8005F
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 16:39:58 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5MLdQb5005947;
	Wed, 22 Jun 2011 14:39:27 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 22 Jun 2011 17:37:17 -0400
Message-Id: <d85b181e9bd349f44990e36f4435f97fdd760166.1308778240.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1308778240.git.bruce.ashfield@windriver.com>
References: <cover.1308778240.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1308778240.git.bruce.ashfield@windriver.com>
References: <cover.1308778240.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update yocto/standard and beagleboard SRCREVs
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
X-List-Received-Date: Wed, 22 Jun 2011 21:39:59 -0000

As part of sync'ing the in-tree beagleboard support, the
following commit has been pushed to all branches, and hence
the SRCREV update:

  bb8e31f USB: ehci: remove structure packing from ehci_def

The beagleboard SRCREV update captures the 69 new patches
merged from meta-ti and other upstream sources.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index 502ae76..b12dcef 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "16ee3992a267124d425533275ebba4e6b7ae50a2"
-SRCREV_machine_atom-pc = "77c90b3cd111a160d845400b4180d436e4b554df"
-SRCREV_machine_routerstationpro = "014b17dffa3447350ad8c7bf847e4aedfc0c3196"
-SRCREV_machine_mpc8315e-rdb = "c0d1bf23f865fdd07839c2002ca85a4913f0e111"
-SRCREV_machine_beagleboard = "bd97d3f257387a3659b5c2761b0d5323b65203c7"
+SRCREV_machine_emenlow = "cc5662b9bec39205074c13f51ac4caba4af0afe7"
+SRCREV_machine_atom-pc = "687233649bbe0ec4ef26c2db4e369fecb1237f6f"
+SRCREV_machine_routerstationpro = "6214197a40b8fcb97dfad5b386d64384ce302b81"
+SRCREV_machine_mpc8315e-rdb = "e79b560f5bb709448d81e51609c0ce72253310fc"
+SRCREV_machine_beagleboard = "83544c00cd60f5842683d4b89a16a832271b599e"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.0.4


