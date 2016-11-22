Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0EA7E00CD2; Tue, 22 Nov 2016 11:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E45C1E00CCD
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448019"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:49 -0800
Message-Id: <1479843349-195099-7-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 6/6][rmc] documentation update
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
X-List-Received-Date: Tue, 22 Nov 2016 19:32:46 -0000

Update README file to reflect some major changes in the project:

Introduce API and libraries

arch-agnostic EFI build

remove dependencies in EFI build

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 README | 40 +++++++++++++++++++++++++---------------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/README b/README
index 94eac5a..efd82f0 100644
--- a/README
+++ b/README
@@ -51,33 +51,30 @@ Build:
 To build libraries and RMC tool for user space, run:
  make
 
-To build 64-bit libraries for UEFI context, run:
- RMC_EFI_ARCH=x86_64 make -f Makefile.efi
+To build libraries for UEFI context, run:
+ make -f Makefile.efi
 
-To build 32-bit libraries for UEFI context, run:
- RMC_EFI_ARCH=ia32 make -f Makefile.efi
-
-RMC_CFLAGS can be used to pass extra flags.
+Installation:
+ make install
+ make -f Makefile.efi install
 
 To get usage of RMC tool, just compile the project and run "rmc" without any
 arguments. Examples are also provided in usage message, in a rough order of
 recommended workflow.
 
-Refer to rmcl.h and rsmp.h for APIs. RMC tool itself uses these APIs, so it can
-be a good example (rmc.c).
-
 To integrate RMC into a build system (Yocto, Android...):
 On build host, compile RMC tool for host architecture and use it to generate RMC
 database files with all fingerprints and board-specific data checked in source
 tree. Build system is responsible to manage fingerprints and data. RMC database
-files shall be available in live-boot or installer image.
+files shall be deployed in live-boot or installer image.
 
-For target, compile RMC tool and libraries again for target architecture. RMC
-tool, an executable, can be deployed to target for clients like scripts. RMC
-libraries are expected to be linked in programs.
+Compiled and deployed onto target, RMC tool, an executable "rmc", is for clients
+like scripts. RMC libraries and APIs are provided for client programs running in
+EFI context and Linux user space. API and documentation can be found in rmc_api.h.
+A single library, librmc.a in Linux or librmcefi.a in EFI, is provided to clients
+in each supported context.
 
-Further refactor work is planned to simplify the integration
-between RMC and other software clients.
+We could provide sample code using APIs and libraries in the future.
 
 =====
 Requirements
@@ -85,6 +82,19 @@ Requirements
 Board is required to have UEFI and SMBIOS compliant firmware. The efi driver in
 Linux kernel is also necessary.
 
+RMC so far is limited to 32 and 64 bit X86 architectures. Considering the
+specifications RMC is based on actually support other non-X86 platforms and no
+special requirements beyond what the specifications defined, rmc could support
+non-X86 EFI platforms with some minimal changes.
+
+The gcc compiler, standard header files and C libraries when compiled in Linux.
+The standard header files, standard C libraries, and an EFI implementation to
+provide low-level services (e.g. gnu-efi), are _not_ required by RMC in EFI
+build.
+
+This design is to keep the simplicity in rmc project and minimize the technical
+debt at client side integrating with RMC.
+
 =====
 Patch submission & Maintenance
 =====
-- 
2.7.4


