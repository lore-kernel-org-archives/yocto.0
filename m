Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5035AE00D9E; Tue,  9 Feb 2016 18:40:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EACFFE00CBE
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:04 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2e3vI019887
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:03 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:02 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:51 -0600
Message-ID: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 0/9][master][jethro] Current set of patches that enable mingw support
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:08 -0000
Content-Type: text/plain

This is my current set of patches to enable working meta-mingw support.

It includes both master and jethro contents.

See git://git.yoctoproject.org/poky-contrib

mgh/meta-mingw-jethro -- for Jethro specific branch
mgh/meta-mingw -- for Master specific branch

Mark Hatle (9):
  nativesdk-gcc: Add mingw32 named libraries to files list
  meta-environment: Update environment files to batch files
  toolchain-scripts-mingw32: Use short paths (8.3)
  toolchain-scripts-mingw32.bbclass: Update to match YP 2.0 release
  binutils-cross-canadian: Fix LTO failure
  gettext,gmp: Resync to oe-core versions
  *-mingw32.conf: Update the SDKMACHINE to include additional
    PREFERRED_PROVIDER
  binutils/gdb: Sync with latest oe-core master version
  gdb-cross-canadian: Disable readline support on mingw

 classes/toolchain-scripts-mingw32.bbclass          | 94 ++++++++++++++++++++++
 conf/machine-sdk/i686-mingw32.conf                 |  1 +
 conf/machine-sdk/x86_64-mingw32.conf               |  1 +
 recipes-core/gettext/gettext_0.19.%.bbappend       |  2 +
 recipes-core/gettext/gettext_0.19.4.bbappend       |  2 -
 recipes-core/meta/meta-environment.bbappend        |  4 +
 .../binutils/binutils-cross-canadian_2.2%.bbappend |  5 ++
 .../binutils-cross-canadian_2.25%.bbappend         |  5 --
 recipes-devtools/gcc/gcc_%.bbappend                |  6 ++
 .../gdb/gdb-cross-canadian_7.%.bbappend            |  6 ++
 .../gdb/gdb-cross-canadian_7.9.1.bbappend          |  5 --
 recipes-support/gmp/gmp_6.0.0.bbappend             |  3 -
 recipes-support/gmp/gmp_6.1.0.bbappend             |  3 +
 13 files changed, 122 insertions(+), 15 deletions(-)
 create mode 100644 classes/toolchain-scripts-mingw32.bbclass
 create mode 100644 recipes-core/gettext/gettext_0.19.%.bbappend
 delete mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
 create mode 100644 recipes-core/meta/meta-environment.bbappend
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 create mode 100644 recipes-devtools/gcc/gcc_%.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
 delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
 delete mode 100644 recipes-support/gmp/gmp_6.0.0.bbappend
 create mode 100644 recipes-support/gmp/gmp_6.1.0.bbappend

-- 
2.5.0


