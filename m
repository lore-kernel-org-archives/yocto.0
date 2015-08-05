Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D976CE00A73; Wed,  5 Aug 2015 15:55:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66D7E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 15:55:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 05 Aug 2015 15:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,620,1432623600"; d="scan'208";a="778632411"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga002.jf.intel.com with ESMTP; 05 Aug 2015 15:55:13 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Aug 2015 15:51:16 -0700
Message-Id: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-mingw][PATCH 0/6] mingw patches to build meta-toolchain
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
X-List-Received-Date: Wed, 05 Aug 2015 22:55:17 -0000

Several recipes have been updated, so the corresponding .bbappend files became stale.
The attached patches correspond to various updated recipes.

I tested the patches with meta-mingw layer and:

SDKMACHINE="i686-mingw32"
bitbake meta-toolchain


Juro Bystricky (6):
  binutils-cross-canadian: upgrade to version 2.25
  gdb-cross-canadian_7.8.1: updated to gdb-cross-canadian_7.9.1
  nativesdk-libtool_2.4.2: updated nativesdk-libtool_2.4.6
  libmpc_1.0.2: updated to libmpc_1.0.3
  mpfr_3.1.2: updated to mpfr_3.1.3
  gettext_0.19.4.bbappend: support for mingw

 recipes-core/gettext/gettext_0.19.4.bbappend                    | 2 ++
 recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend | 5 -----
 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend | 5 +++++
 recipes-devtools/gdb/gdb-cross-canadian_7.8.1.bbappend          | 5 -----
 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend          | 5 +++++
 recipes-devtools/libtool/nativesdk-libtool_2.4.2.bbappend       | 1 -
 recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend       | 1 +
 recipes-support/libmpc/libmpc_1.0.3.bbappend                    | 1 +
 recipes-support/mpc/libmpc_1.0.2.bbappend                       | 1 -
 recipes-support/mpfr/mpfr_3.1.2.bbappend                        | 1 -
 recipes-support/mpfr/mpfr_3.1.3.bbappend                        | 1 +
 11 files changed, 15 insertions(+), 13 deletions(-)
 create mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
 delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.8.1.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
 delete mode 100644 recipes-devtools/libtool/nativesdk-libtool_2.4.2.bbappend
 create mode 100644 recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend
 create mode 100644 recipes-support/libmpc/libmpc_1.0.3.bbappend
 delete mode 100644 recipes-support/mpc/libmpc_1.0.2.bbappend
 delete mode 100644 recipes-support/mpfr/mpfr_3.1.2.bbappend
 create mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend

-- 
1.9.1


