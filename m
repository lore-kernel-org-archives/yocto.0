Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A756CE00B58; Wed, 24 Apr 2019 07:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EFA2E00AD5
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 07:59:28 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:f0e])
	by kozue.soulik.info (Postfix) with ESMTPA id 7E96B100D4C;
	Wed, 24 Apr 2019 23:59:44 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Wed, 24 Apr 2019 22:59:15 +0800
Message-Id: <20190424145918.26040-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [meta-rockchip] [PATCH 0/3] fixup u-boot compiling error
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
X-List-Received-Date: Wed, 24 Apr 2019 14:59:29 -0000
Content-Transfer-Encoding: 8bit

It would be better that Rockchip adds a new tag for the recently
u-boot release. Anyway, I just sent my recipes for building the
latest u-boot. You may not merge the last patch.

Randy 'ayaka' Li (2):
  recipes-bsp/u-boot: fixup build for gcc7
  recipes-bsp/u-boot: update build rules

Randy Li (1):
  recipes-bsp/u-boot: update to the latest version

 recipes-bsp/u-boot/u-boot-rockchip.inc        |  1 +
 .../u-boot/u-boot-rockchip/gcc7_fixup.patch   | 38 +++++++++++++++++++
 .../u-boot/u-boot-rockchip_20171218.bb        |  3 ++
 recipes-bsp/u-boot/u-boot-rockchip_git.bb     | 18 +++++++++
 4 files changed, 60 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

-- 
2.20.1


