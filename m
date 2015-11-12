Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B121BE00C58; Thu, 12 Nov 2015 13:32:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8792BE00C54
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 13:31:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tACLVsbj010684
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 13:31:54 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 12 Nov 2015 13:31:53 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 12 Nov 2015 15:31:53 -0600
Message-ID: <1447363913-163256-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH 0/6] [meta-mingw] [jethro/master] Update to YP 2.0
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
X-List-Received-Date: Thu, 12 Nov 2015 21:32:02 -0000
Content-Type: text/plain

The patches referenced in the summary below have previous been sent to
the Yocto Project mailing list.  I have collected them together in the 
combination that works for me with Jethro and Master branches.

They can be inspected at:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw

or git fetched from:

git://git.yoctoproject.org/poky-contrib mgh/meta-mingw

I would recommend we take this and merge them to master, and branch off
for Jethro.


Mark Hatle (3):
  nativesdk-gcc: Add mingw32 named libraries to files list
  meta-environment: Update environment files to batch files
  toolchain-scripts-mingw32: Use short paths (8.3)

Peter Seebach (3):
  gcc-runtime: Drop libgomp for mingw32 runtime
  binutils*.bbappend: Work with all 2.25 versions
  gcc*.bbappend: Work with 5.2.

 classes/toolchain-scripts-mingw32.bbclass          | 88 ++++++++++++++++++++++
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
 15 files changed, 121 insertions(+), 23 deletions(-)
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


