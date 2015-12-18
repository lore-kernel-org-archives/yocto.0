Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 957C4E00C2B; Fri, 18 Dec 2015 13:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67C59E00BD2
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 13:01:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tBIL1ACG003349
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 18 Dec 2015 13:01:11 -0800
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Fri, 18 Dec 2015 13:01:09 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <ross.burton@intel.com>
Date: Fri, 18 Dec 2015 16:01:06 -0500
Message-ID: <cover.1450472132.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/3] yocto/meta-yocto-bsp: remove 3.14 and 3.19 references
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
X-List-Received-Date: Fri, 18 Dec 2015 21:01:18 -0000
Content-Type: text/plain

Hi all,

As a follow up to a series I sent to the oe-core list, this series removes
references to the 3.14 and 3.19 kernel's that are being dropped. Hopefully
this is them all, but you never know ...

Since the preferred version was already 4.1 for the reference BSPs, I expect
minimal runtime fallout from this switch.

Bruce

The following changes since commit 019f38adf3086bba356b7d6175aafec2eaf4388a:

  linux-yocto: remove 3.14 and 3.19 recipes (2015-12-18 15:32:50 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (3):
  yocto-bsp: remove 3.14 and 3.19 bbappends
  poky-lsb/poky-tiny: update preferred kernel to 4.1
  meta-yocto-bsp: remove 3.14 and 3.19 bbappends

 .../linux/linux-yocto-rt_3.14.bbappend             | 11 ----
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 20 -------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 20 -------
 meta-yocto/conf/distro/poky-lsb.conf               |  2 +-
 meta-yocto/conf/distro/poky-tiny.conf              |  2 +-
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 62 ----------------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 62 ----------------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 62 ----------------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 61 ---------------------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 61 ---------------------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 40 files changed, 2 insertions(+), 1339 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend

-- 
2.1.0


