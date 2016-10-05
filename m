Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4C35E00CB4; Wed,  5 Oct 2016 15:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E21E00855
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 15:50:10 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,451,1473145200"; d="scan'208";a="16706237"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 05 Oct 2016 15:50:09 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Oct 2016 15:49:17 -0700
Message-Id: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH 0/3] meta-mingw patches for master
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
X-List-Received-Date: Wed, 05 Oct 2016 22:50:12 -0000

The current master deviated enough from krogoth that it needs new meta-mingw
patches (and a separate meta-mingw branch) in order to build (cross-compile)
anything.
Only the build itself was tested, not the actual functionality of the
resulting deployables. Nevertheless, correct functionality is predicated on
a successful build.

The patches were tested by building some common/likely mingw
targets for both SDKMACHINE=i686-mingw32 and SDKMACHINE=x86_64-mingw32:

    TCLIBC="baremetal"
    MACHINE ="qemux86"
    bitbake gcc-cross-canadian-i586

    TCLIBC="baremetal"
    MACHINE ="qemuarm"
    PACKAGE_CLASSES ="package_ipk"
    bitbake gcc-cross-canadian-arm

    MACHINE ="qemux86"
    bitbake gdb-cross-canadian-i586
   
    MACHINE ="qemux86"
    bitbake meta-toolchain

    MACHINE ="qemux86"
    SDKTAROPTS_append_mingw32 = " -h --hard-dereference"
    bitbake core-image-minimal -c populate_sdk

Presently all deployables may need to be manually re-packaged for deployment on
Windows as the packages are typically in *.tar.xz or .rpm format (possibly
containing symbolic links).

Juro Bystricky (3):
  mingw-64-runtime_3.1.bb: Adapt to SDK_ARCH -> SDK_SYS chanages for
    crosssdk
  gcc-crosssdk_%.bbappend: Do not configure with initfini-array enabled.
  gcc-crosssdk-initial_%.bbappend:Do not configure with initfini-array
    enabled

 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend            | 2 ++
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend                    | 3 +++
 recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb | 2 +-
 3 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.7.4


