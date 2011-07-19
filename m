Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08D874C80A86
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:14 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J5LDbl028538
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:21:14 -0500
From: Kumar Gala <galak@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jul 2011 00:21:08 -0500
Message-Id: <1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
X-Mailer: git-send-email 1.5.6.5
In-Reply-To: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
Subject: [PATCH 1/5] gcc: Add gcc configure for PowerPC e500v2/SPE embedded floating point ABI
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
X-List-Received-Date: Tue, 19 Jul 2011 05:21:15 -0000

The e500v2 core utilizes a unique floating point programming model / ABI.
We utilize TARGET_FPU = "spe" to distinguish this choice.  When building
the toolchain for this ABI we need configure gcc with --enable-e500_double.

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
---
 meta/recipes-devtools/gcc/gcc-4.6.inc    |    2 +-
 meta/recipes-devtools/gcc/gcc-common.inc |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devtools/gcc/gcc-4.6.inc
index 56064b5..b719155 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
@@ -1,6 +1,6 @@
 require gcc-common.inc
 
-PR = "r8"
+PR = "r9"
 
 # Third digit in PV should be incremented after a minor release
 # happens from this branch on gcc e.g. currently its 4.6.0
diff --git a/meta/recipes-devtools/gcc/gcc-common.inc b/meta/recipes-devtools/gcc/gcc-common.inc
index 7bf036c..409ad01 100644
--- a/meta/recipes-devtools/gcc/gcc-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-common.inc
@@ -12,6 +12,8 @@ FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/gcc-${PV}"
 def get_gcc_fpu_setting(bb, d):
     if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
         return "--with-float=soft"
+    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
+        return "--enable-e500_double"
     return ""
 
 def get_gcc_mips_plt_setting(bb, d):
-- 
1.7.3.4


