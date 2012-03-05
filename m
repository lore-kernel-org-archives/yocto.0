Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67BF2E013BB
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 20:07:08 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-d3.ottawa.windriver.com [128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q254743U003038;
	Sun, 4 Mar 2012 20:07:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun,  4 Mar 2012 23:06:49 -0500
Message-Id: <30f97313c87306256448ff9eac8b187eb7b3e5ec.1330920120.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1330920120.git.bruce.ashfield@windriver.com>
References: <cover.1330920120.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1330920120.git.bruce.ashfield@windriver.com>
References: <cover.1330920120.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: v3.2.9, v3.0.23 + fixes and updates
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
X-List-Received-Date: Mon, 05 Mar 2012 04:07:08 -0000

This is an update of the linux-yocto 3.0 and 3.2 SRCREVs to bring
in the following updates:

   - v3.0.23 stable update
   - v3.2.9 stable update
   - 3.0/3.2: fri2 updates (pch + configuration changes) from Darren Hart
   - 3.0: pvr merge from Kishore Bodke
   - linux-yocto/rt: update to 3.0.23-rt38
   - linux-yocto/rt: update to 3.2.9-rt15

These have been built for all qemu targets, and built for the appropriate
hardware platforms.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index acdb85e..74aa294 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -22,4 +22,4 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "2f9d925f5681eaae7f341cc1270c739
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 KMACHINE_routerstationpro = "routerstationpro"
 KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
-SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "ac9de3df165099542c26a5c0a60cac4fb9965cb2"
+SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "855fb36f410e5ed1b42a2cb9d4f10c55e5a510c1"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 36dd8a3..2a9ad7b 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,10 +4,10 @@ KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
-SRCREV_machine_atom-pc ?= "9a49e496c5e01bf4265e6adcd98f9ab177041ed1"
-SRCREV_machine_routerstationpro ?= "3bce4d3144c0501efedb6de61599d81acc0946d6"
-SRCREV_machine_mpc8315e-rdb ?= "6ee43f85afcd4499b441ff8aa0a54a0706eabf00"
-SRCREV_machine_beagleboard ?= "368e38c673ffac8b37fc2a2d4c1e4a1e6f8abf19"
+SRCREV_machine_atom-pc ?= "b42d0d016af36d0bbbb619c424200d4b5bc9ba28"
+SRCREV_machine_routerstationpro ?= "f1bc894b09bd9b048df99e53fd6559c5d84e4871"
+SRCREV_machine_mpc8315e-rdb ?= "7ba6d6853b6e7cf00a742baeba1503c80fc05314"
+SRCREV_machine_beagleboard ?= "fccd4e4041454f16f1e7a25569ec530eaa1bf89e"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
index ea73105..589904f 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -8,10 +8,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/default/beagleboard"
 
-SRCREV_machine_atom-pc ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-SRCREV_machine_routerstationpro ?= "e015d29f374cd986e15f636b6b84b514d95d76ed"
-SRCREV_machine_mpc8315e-rdb ?= "2349967f408cc60db2b1c89fcefffc81428f9341"
-SRCREV_machine_beagleboard ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+SRCREV_machine_atom-pc ?= "f29531a41df15d74be5ad47d958e4117ca9e489e"
+SRCREV_machine_routerstationpro ?= "a6755fa847a9362470d31a6d71d08069ece749ff"
+SRCREV_machine_mpc8315e-rdb ?= "818339ef5a53e281e28fdcf10aca1183c4ff71e0"
+SRCREV_machine_beagleboard ?= "90e3138c5a2a390dd6ddf2ed84fe5a9756d43397"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.4.1


