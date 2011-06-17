Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2FA04C8009D
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 23:43:06 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5H4h2Ii014986;
	Thu, 16 Jun 2011 21:43:03 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 17 Jun 2011 00:41:13 -0400
Message-Id: <586ed674313caf51924ef0fc4c61d2c504ef3871.1308285199.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1308285199.git.bruce.ashfield@windriver.com>
References: <cover.1308285199.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1308285199.git.bruce.ashfield@windriver.com>
References: <cover.1308285199.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto/meta-yocto: update SRCREVs for utrace merge
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
X-List-Received-Date: Fri, 17 Jun 2011 04:43:07 -0000

Updating the SRCREVs to account for the merge of utrace to support
systemtap.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index 84e31e9..502ae76 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
-SRCREV_machine_atom-pc = "1ccece1d42a598fef0f5f9666c9c81315302c129"
-SRCREV_machine_routerstationpro = "8b5f5129292bb218435ac9ffa1fb9943bdc7d456"
-SRCREV_machine_mpc8315e-rdb = "dcf359635969abdbdd15f60b702ab17ed6174892"
-SRCREV_machine_beagleboard = "9cb5c3fb1634e541cacceeb8c8cabe88afa5b080"
+SRCREV_machine_emenlow = "16ee3992a267124d425533275ebba4e6b7ae50a2"
+SRCREV_machine_atom-pc = "77c90b3cd111a160d845400b4180d436e4b554df"
+SRCREV_machine_routerstationpro = "014b17dffa3447350ad8c7bf847e4aedfc0c3196"
+SRCREV_machine_mpc8315e-rdb = "c0d1bf23f865fdd07839c2002ca85a4913f0e111"
+SRCREV_machine_beagleboard = "bd97d3f257387a3659b5c2761b0d5323b65203c7"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.0.4


