Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F39CE00AAA; Mon, 30 Nov 2015 07:31:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD2C3E008C8
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 07:31:35 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tAUFVUwt001545
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 07:31:30 -0800
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 30 Nov 2015 07:31:29 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 30 Nov 2015 09:31:26 -0600
Message-ID: <1448897488-118603-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH 0/8] [meta-mingw] [jethro/master] Update to YP 2.0
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
X-List-Received-Date: Mon, 30 Nov 2015 15:31:37 -0000
Content-Type: text/plain

The first 6 of the patches referenced in this summary have previous been 
sent to the Yocto Project mailing list. I will only be sending patches 7 
and 8 as they are new.

They entire patch set can be inspected at:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw

or git fetched from:

git://git.yoctoproject.org/poky-contrib mgh/meta-mingw

I would recommend they all be merged to master and jethro branches of 
the meta-mingw tree.

Mark Hatle (5):
  nativesdk-gcc: Add mingw32 named libraries to files list
  meta-environment: Update environment files to batch files
  toolchain-scripts-mingw32: Use short paths (8.3)
  toolchain-scripts-mingw32.bbclass: Update to match YP 2.0 release
  gcc-cross-canadian: Workaround LTO failure

Peter Seebach (3):
  gcc-runtime: Drop libgomp for mingw32 runtime
  binutils*.bbappend: Work with all 2.25 versions
  gcc*.bbappend: Work with 5.2.

 classes/toolchain-scripts-mingw32.bbclass          | 94 ++++++++++++++++++++++
 recipes-core/meta/meta-environment.bbappend        |  4 +
 .../binutils-cross-canadian_2.25%.bbappend         |  5 ++
 .../binutils/binutils-cross-canadian_2.25.bbappend |  5 --
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend |  6 ++
 .../gcc/gcc-cross-canadian_4.9.bbappend            |  6 --
 .../gcc/gcc-crosssdk-initial_%.bbappend            |  1 +
 .../gcc/gcc-crosssdk-initial_4.9.bbappend          |  1 -
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend       |  1 +
 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend     |  1 -
 recipes-devtools/gcc/gcc-runtime_%.bbappend        |  8 ++
 recipes-devtools/gcc/gcc-runtime_4.9.bbappend      |  8 --
 recipes-devtools/gcc/gcc_%.bbappend                |  6 ++
 recipes-devtools/gcc/libgcc_%.bbappend             |  2 +
 recipes-devtools/gcc/libgcc_4.9.bbappend           |  2 -
 15 files changed, 127 insertions(+), 23 deletions(-)
 create mode 100644 classes/toolchain-scripts-mingw32.bbclass
 create mode 100644 recipes-core/meta/meta-environment.bbappend
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-runtime_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-runtime_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc_%.bbappend
 create mode 100644 recipes-devtools/gcc/libgcc_%.bbappend
 delete mode 100644 recipes-devtools/gcc/libgcc_4.9.bbappend

-- 
1.9.3


