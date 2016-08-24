Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F395EE00FEE; Tue, 23 Aug 2016 17:31:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 17:31:03 PDT
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3FCE00F13
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 17:31:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 23 Aug 2016 17:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,568,1464678000"; d="scan'208";a="1030287972"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2016 17:30:01 -0700
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 17:32:24 -0700
Message-Id: <1471998744-240257-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [RMC][PATCH] doc: update README file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2016 00:31:05 -0000

Update some sections with new information of workflow.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 README | 86 ++++++++++++++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 65 insertions(+), 21 deletions(-)

diff --git a/README b/README
index 371e7d1..94eac5a 100644
--- a/README
+++ b/README
@@ -1,20 +1,30 @@
 Runtime Machine Configuration (RMC)
 ================================================================================
 
+=====
+Introduction
+=====
 RMC project provides BSP and OEM a new way to deal with configuration at a board
-or product level on multiple hardware targets at runtime. It answers two
-questions in a centralized approach:
+or product level in a generic software stack at runtime. It answers two questions
+with a centralized approach:
 
-1) A unified way to identify a type of board in a software stack
+1) How to identify a type of board in a software stack
 
-Developers run RMC tool on a running board to obtain a fingerprint file from a
-running board. The fingerprint file is the identity of board 'type' in software.
+2) How to access to data associated to a type of board at runtime
 
-Fingerprint file so far is the only RMC-specific data exposed to outside. Any
-software calling RMC to get board-specific data doesn't need to carry finger-
-print. It is only used to map data and board type in a RMC database.
-
-2) Access to data associated to a type of board based on its identity at runtime
+With RMC, developer of a client software can have a generic implementation of
+logic and hardcoded configuration file names in source code. RMC magically
+returns data for the type of the running board at runtime. The final effect is a
+better isolation between a generic stack and quirks for different board types.
+
+=====
+How it works
+=====
+Developer runs RMC tool on a board to obtain a fingerprint file. A fingerprint
+is the software identity of a type of board. Fingerprint so far is the only RMC-
+specific data exposed to outside. Any software calling RMC to get board-specific
+data doesn't need to carry fingerprint. It is only used to map data and board
+type in a RMC database.
 
 With the same RMC tool, developers can generate a RMC record file which contains
 a signature computed from board's fingerprint and all data specific to the type
@@ -25,24 +35,29 @@ for different boards.
 
 At runtime, clients (software to call RMC) query files for the type of the
 running board with filenames. Once called, via RMC tool or APIs provided from
-RMC libraris, RMC collects fingerprint of the running board, computes its
-signature, seeks any possible records in RMC database file (provided by callers),
-to match the board it runs on with signatures, and then return the file blob
-to caller if there is a blob with same name specified by the caller.
+RMC libraries, RMC collects fingerprint of the running board, computes its
+signature, seeks any possible records in RMC database file to match the board it
+runs on with signatures, and then returns the file blob to its caller if there
+is a blob with the same _name_ specified by the caller.
 
 RMC tool (CLI) lives in Linux user space. RMC libraries provides APIs in C, so
 that any programs can link with RMC libraries and call these APIs to get data
 specific to a type of board at runtime. RMC libraries can also be linked in EFI
 context for bootloaders, as well as in Linux user space.
 
-Further refactor work is planned to simplify the integration
-between RMC and other software clients.
+=====
+Build:
+=====
+To build libraries and RMC tool for user space, run:
+ make
 
-With RMC, developer of a client software can have a generic implementation of
-logic and hardcoded configuration file names in source code. RMC magically
-returns data for the type of running board at runtime.
+To build 64-bit libraries for UEFI context, run:
+ RMC_EFI_ARCH=x86_64 make -f Makefile.efi
 
-To compile RMC, simply run "make" in top directory of rmc project.
+To build 32-bit libraries for UEFI context, run:
+ RMC_EFI_ARCH=ia32 make -f Makefile.efi
+
+RMC_CFLAGS can be used to pass extra flags.
 
 To get usage of RMC tool, just compile the project and run "rmc" without any
 arguments. Examples are also provided in usage message, in a rough order of
@@ -51,7 +66,7 @@ recommended workflow.
 Refer to rmcl.h and rsmp.h for APIs. RMC tool itself uses these APIs, so it can
 be a good example (rmc.c).
 
-To integrate RMC into a build system (yocto, Android...):
+To integrate RMC into a build system (Yocto, Android...):
 On build host, compile RMC tool for host architecture and use it to generate RMC
 database files with all fingerprints and board-specific data checked in source
 tree. Build system is responsible to manage fingerprints and data. RMC database
@@ -61,5 +76,34 @@ For target, compile RMC tool and libraries again for target architecture. RMC
 tool, an executable, can be deployed to target for clients like scripts. RMC
 libraries are expected to be linked in programs.
 
+Further refactor work is planned to simplify the integration
+between RMC and other software clients.
+
+=====
+Requirements
+=====
 Board is required to have UEFI and SMBIOS compliant firmware. The efi driver in
 Linux kernel is also necessary.
+
+=====
+Patch submission & Maintenance
+=====
+1. Developers please submit patches to yocto@yoctoproject.org mailing list for
+review. We suggest developers to have "RMC" or "rmc" in mail subjects for
+visibility in this generic mailing list.
+
+2. Once there is no any open items from code review in a period, maintainer pulls
+the patches and run test in rmc project.
+
+3. Maintainer merges patch to branch "rmc-dev" that always holds changes passed
+review and internal test, otherwise informs submitter to re-work if test fails.
+
+4. Maintainer tests changes pending on "rmc-dev" branch with any build system
+integrated with RMC (e.g. a Yocto BSP).
+
+5. Maintainer merges the pending patches from "rmc-dev" to "master" branch that
+shall be always for good changes passed code review, internal test and system
+test.
+
+Maintainer:
+jianxun.zhang@linux.intel.com
-- 
2.7.4


