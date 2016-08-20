Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 341C9E00E23; Sat, 20 Aug 2016 11:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Sat, 20 Aug 2016 11:06:12 PDT
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC6CE00DFF
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:06:12 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,551,1464678000"; 
   d="scan'208";a="101802"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 20 Aug 2016 11:05:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 11:03:54 -0700
Message-Id: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-mingw][PATCH 0/7] Updates for krogoth/master
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
X-List-Received-Date: Sat, 20 Aug 2016 18:06:14 -0000

Krogoth recipes fail to cross-compile for Windows using meta-mingw layer.
In particular, the following should/used to work (jethro with meta-mingw layer):

SDKMACHINE="i686-mingw32"
MACHINE="qemux86"
TCLIBC="baremetal"
bitbake gcc-cross-canadian-i586

SDKMACHINE="i686-mingw32"
MACHINE="qemux86"
bitbake meta-toolchain

This patchset updates meta-mingw layer so the above work for krogoth as well.
There is no "krogoth" branch for meta-mingw, these patches should go there once the
branch exists.
FWIW, I tested these patches with the current poky master as well, and succeed in cross-compiling
of the most common recipes (for both SDKMACHINE=i686-mingw32 and SDKMACHINE=x86_64-mingw32)
such as:
    bitbake gcc-cross-canadian-i586
    bitbake gdb-cross-canadian-i586
    bitbake meta-toolchain
    bitbake core-image-minimal -c populate_sdk

[YOCTO#10143]



Juro Bystricky (7):
  *-mingw32.conf: Upgrade for krogoth
  gettext_0.19.4.bbappend: Update for later versions
  binutils-cross-canadian_2.25%.bbappend: Work with all 2.2* versions
  gcc-runtime: Drop libitm for mingw32 runtime
  gmp_6.0.0.bbappend: Removed
  mpfr_3.1.3.bbappend: Work with all 3.1.% versions
  gdb-cross-canadian_7.9.1: Work with all 7.% versions

 conf/machine-sdk/i686-mingw32.conf                               | 7 ++++++-
 conf/machine-sdk/x86_64-mingw32.conf                             | 7 ++++++-
 recipes-core/gettext/gettext_0.19.%.bbappend                     | 6 ++++++
 recipes-core/gettext/gettext_0.19.4.bbappend                     | 2 --
 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend  | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 -----
 recipes-devtools/gcc/gcc-runtime_%.bbappend                      | 1 +
 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend             | 7 +++++++
 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend           | 5 -----
 recipes-support/gmp/gmp_6.0.0.bbappend                           | 3 ---
 recipes-support/mpfr/mpfr_3.1.%.bbappend                         | 1 +
 recipes-support/mpfr/mpfr_3.1.3.bbappend                         | 1 -
 12 files changed, 32 insertions(+), 18 deletions(-)
 create mode 100644 recipes-core/gettext/gettext_0.19.%.bbappend
 delete mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
 delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
 delete mode 100644 recipes-support/gmp/gmp_6.0.0.bbappend
 create mode 100644 recipes-support/mpfr/mpfr_3.1.%.bbappend
 delete mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend

-- 
2.7.4


