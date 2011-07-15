Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 807244C80FAD
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 23:56:58 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6F4uutm026106
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 23:56:56 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 23:56:56 -0500
Message-Id: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
Subject: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
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
X-List-Received-Date: Fri, 15 Jul 2011 04:56:59 -0000

The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
floating point.

'SPE' floating point is what exists on the e500v2 core.

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 meta-yocto/conf/machine/mpc8315e-rdb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index 095d113..3f946a0 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -2,7 +2,7 @@
 #@DESCRIPTION: Machine configuration for running 
 
 TARGET_ARCH = "powerpc"
-TARGET_FPU = "spe"
+TARGET_FPU = "hard"
 
 require conf/machine/include/tune-ppc603e.inc
 
-- 
1.7.3.4


