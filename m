Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC4DBE0120C
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 11:36:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Aug 2011 11:36:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43410086"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.14.203])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 11:36:10 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 11:36:07 -0700
Message-Id: <99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1314124511.git.sgw@linux.intel.com>
References: <cover.1314124511.git.sgw@linux.intel.com>
In-Reply-To: <cover.1314124511.git.sgw@linux.intel.com>
References: <cover.1314124511.git.sgw@linux.intel.com>
Subject: [PATCH 1/1] beagleboard.conf: set DEFAULT_TUNE to cortexa8
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
X-List-Received-Date: Tue, 23 Aug 2011 18:36:10 -0000

    [YOCTO #1381]

    lttng-ust generates an ICE when building for armv7, so change it to armv5
    | vfprintf.c:956:1: error: unrecognizable insn:
    | (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]) 0)
    |         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 [ nextarg ])
    |                         (const_int 8 [0x8]))
    |                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_569+0 S1
    A32]))) vfprintf.c:555 -1
    |      (nil))
    | vfprintf.c:956:1: internal compiler error: in extract_insn, at recog.c:2109

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 0b3cebc..9ed8c59 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -18,6 +18,8 @@ MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
+DEFAULT_TUNE = "cortexa8"
+
 include conf/machine/include/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.bz2 jffs2"
-- 
1.7.6


