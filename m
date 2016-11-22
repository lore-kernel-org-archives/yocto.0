Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A837E00CD5; Tue, 22 Nov 2016 11:32:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 376D6E00546
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:41 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448012"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:43 -0800
Message-Id: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 0/6][rmc] Major refactoring works
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
X-List-Received-Date: Tue, 22 Nov 2016 19:32:45 -0000

This patch series is based on a previous patch
"rmc: Fix include path and type definitions" submitted
on Nov 15. It includes some large key enhancements inside rmc:

() Simplify two libs into one for each context, Linux or EFI

() Provide APIs for clients. They can use either single API
to perform a query or use two APIs to perform mulitple queries
for a better runtime performance.

() Remove dependency to gnu-efi in EFI build

() No need to tell EFI arch in rmc build anymore

() Remove the obsolete data type and usage for kernel cmdline

() Misc. fixes in Makefiles and source code.

etc...

Jianxun Zhang (6):
  consolidate RSMP and RMCL libraries into one
  refactoring work (APIs, build dependency, ... etc)
  use internal definitions for types in project
  use RMC_CFLAGS for internal compiler options.
  remove kernel command line usage and blob type
  documentation update

 Makefile                        |  41 ++--
 Makefile.efi                    |  61 ++----
 README                          |  40 ++--
 inc/rmc_api.h                   | 158 +++++++++++++
 inc/rmc_types.h                 |  37 +++-
 inc/rmc_util.h                  |  10 +-
 inc/rmcl.h                      |  59 +++--
 inc/rsmp.h                      |  58 ++---
 src/lib/api.c                   | 327 +++++++++++++++++++++++++++
 src/lib/common/RULES            |   4 +
 src/{rmcl => lib/common}/rmcl.c |  74 +++----
 src/{rsmp => lib/common}/rsmp.c |  26 +--
 src/lib/efi_api.c               |  92 ++++++++
 src/lib/rmc_efi.h               |  71 ++++++
 src/rmc.c                       | 475 ++++++----------------------------------
 src/util/util.c                 |  20 +-
 16 files changed, 929 insertions(+), 624 deletions(-)
 create mode 100644 inc/rmc_api.h
 create mode 100644 src/lib/api.c
 create mode 100644 src/lib/common/RULES
 rename src/{rmcl => lib/common}/rmcl.c (74%)
 rename src/{rsmp => lib/common}/rsmp.c (65%)
 create mode 100644 src/lib/efi_api.c
 create mode 100644 src/lib/rmc_efi.h

-- 
2.7.4


