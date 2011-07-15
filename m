Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B58884C80FE1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 00:27:01 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-217.ottawa.windriver.com [128.224.146.217])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6F5QvKL008920;
	Thu, 14 Jul 2011 22:26:58 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 15 Jul 2011 01:26:56 -0400
Message-Id: <a9d457e0c55b74e9093dd657e66d6d80e201e357.1310707201.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1310707201.git.bruce.ashfield@windriver.com>
References: <\>
 <cover.1310707201.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1310707201.git.bruce.ashfield@windriver.com>
References: <cover.1310707201.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update SRCREVS
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
X-List-Received-Date: Fri, 15 Jul 2011 05:27:02 -0000

Fixes bug [YOCTO #1161]
Fixes bug [YOCTO #773]

This streamlines the routerstation pro configuration to remove options
that are either unecessary or that are causing bugs.

Also added to all branches is:

  commit ffd73d6b2a9bfa0de5710b90a2237f4be66ae9a7
  Author: Yinghai Lu <yinghai@kernel.org>
  Date:   Thu Jul 14 15:27:44 2011 -0700

    mm: use alloc_bootmem_node_nopanic() on really needed path

    commit 8f389a99b652aab5b42297280bd94d95933ad12f upstream.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index b12dcef..ba25c3a 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "cc5662b9bec39205074c13f51ac4caba4af0afe7"
-SRCREV_machine_atom-pc = "687233649bbe0ec4ef26c2db4e369fecb1237f6f"
-SRCREV_machine_routerstationpro = "6214197a40b8fcb97dfad5b386d64384ce302b81"
-SRCREV_machine_mpc8315e-rdb = "e79b560f5bb709448d81e51609c0ce72253310fc"
-SRCREV_machine_beagleboard = "83544c00cd60f5842683d4b89a16a832271b599e"
+SRCREV_machine_emenlow = "398d5adac19cb411cd80753e177769f6a666a7e7"
+SRCREV_machine_atom-pc = "fce17f046d3756045e4dfb49221d1cf60fcae329"
+SRCREV_machine_routerstationpro = "8f84c1aec0907766ab6d6ac79fcc3b7b9ce79b70"
+SRCREV_machine_mpc8315e-rdb = "2c54835ac49cd8abaf294009a00ccc516daa31cd"
+SRCREV_machine_beagleboard = "3ddb22772862a8223640fa97580569924f51bddc"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.4.1


