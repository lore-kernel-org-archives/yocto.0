Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA2BFE00DED; Thu, 20 Jun 2019 04:14:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E7DE00B18
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 04:14:20 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:56c])
	by kozue.soulik.info (Postfix) with ESMTPA id B62EF100B70;
	Thu, 20 Jun 2019 20:15:48 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 19:14:07 +0800
Message-Id: <20190620111410.4573-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [meta-rockchip] [PATCH v2 0/3] fixup u-boot compiling error
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
X-List-Received-Date: Thu, 20 Jun 2019 11:14:20 -0000
Content-Transfer-Encoding: 8bit

From: Randy 'ayaka' Li <ayaka@soulik.info>

Changelog
v2:
Fixed unset SRCREV stopped building in the previous time
Fixed compiler warning in GCC 9 of new oe

Randy 'ayaka' Li (2):
  recipes-bsp/u-boot: fixup build for gcc7
  recipes-bsp/u-boot: update build rules

Randy Li (1):
  recipes-bsp/u-boot: update to the latest version

 recipes-bsp/u-boot/u-boot-rockchip.inc        | 12 ++++++
 .../u-boot/u-boot-rockchip/gcc7_fixup.patch   | 38 +++++++++++++++++++
 .../u-boot-rockchip/gcc9-no-Werror.patch      | 13 +++++++
 .../u-boot/u-boot-rockchip_20171218.bb        |  4 ++
 recipes-bsp/u-boot/u-boot-rockchip_git.bb     | 19 ++++++++++
 5 files changed, 86 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip/gcc7_fixup.patch
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip/gcc9-no-Werror.patch
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

-- 
2.21.0


