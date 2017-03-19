Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DBD4E00AC0; Sun, 19 Mar 2017 10:58:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F4AE00A81
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:58:47 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id EAE481006ED;
	Mon, 20 Mar 2017 02:50:04 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:48:30 +0800
Message-Id: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: ayaka <ayaka@soulik.info>
Subject: [meta-rockchip] [PATCH 0/7] Update kernel recipes and machine configure
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
X-List-Received-Date: Sun, 19 Mar 2017 17:58:50 -0000

Those patches came from Rockchip, Jacob developed them.
But he forget to clear up it. I just make them into order.

ayaka (7):
  README: correct the FPU information for RK3288
  recipes-kernel: linux-rockchip: introduce rockchip 3.10 kernel
  recipes-kernel: linux-rockchip: Add new recipe for 4.4
  conf/machine: rk3288: Add some machine files
  conf/machine: add rk3399 support
  conf/machine: add support for rk3036
  conf/machine: add support for rv1108

 README                                             |  2 +-
 conf/machine/evb-rk3288.conf                       | 10 ++++
 conf/machine/evb-rv1108.conf                       | 10 ++++
 conf/machine/excavator-rk3399.conf                 | 10 ++++
 conf/machine/fennec-rk3288.conf                    | 10 ++++
 conf/machine/firefly-rk3288.conf                   |  1 +
 conf/machine/include/rk3036.inc                    | 20 ++++++++
 conf/machine/include/rk3288.inc                    |  4 ++
 conf/machine/include/rk3399.inc                    | 18 +++++++
 conf/machine/include/rv1108.inc                    | 12 +++++
 conf/machine/include/tune-cortexa53.inc            | 57 ++++++++++++++++++++++
 conf/machine/kylin-rk3036.conf                     | 10 ++++
 conf/machine/tinker-rk3288.conf                    | 13 +++++
 .../0001-fix-yocto-build-error.patch               | 35 +++++++++++++
 recipes-kernel/linux/linux-rockchip_3.10.bb        | 20 ++++++++
 recipes-kernel/linux/linux-rockchip_4.4.bb         | 20 ++++++++
 16 files changed, 251 insertions(+), 1 deletion(-)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/evb-rv1108.conf
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/include/rk3036.inc
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/include/rv1108.inc
 create mode 100644 conf/machine/include/tune-cortexa53.inc
 create mode 100644 conf/machine/kylin-rk3036.conf
 create mode 100644 conf/machine/tinker-rk3288.conf
 create mode 100644 recipes-kernel/linux/linux-rockchip/0001-fix-yocto-build-error.patch
 create mode 100644 recipes-kernel/linux/linux-rockchip_3.10.bb
 create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb

-- 
2.7.4


