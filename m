Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBB80E00950; Tue, 23 Apr 2019 06:25:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B04E0033D
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:24 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id B4A2D101FC5;
	Tue, 23 Apr 2019 22:25:38 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:04 +0800
Message-Id: <20190423132514.21996-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [meta-rockchip] [PATCH v2 00/10] add new SoCs supports
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
X-List-Received-Date: Tue, 23 Apr 2019 13:25:25 -0000
Content-Transfer-Encoding: 8bit

Although the upstream kernel may work with the most of chips
I sent in the previous time, but there would be broken
clock tree there, making everyhing not work or perform
badly.

I am not sure about the status of u-boot master branch,
usually u-boot-rockchip would work better if we don't use
the SPL/TPL from u-boot but vendor. Especially for those
ARMv8 platform.

I also add some SoCs are not merged into upstream kernel
yet, so I don't offer a machine files for them.

Changelog:
v2 Removing the settings applied for vendor kernel
v2 Adding some SoCs which are supported by the upstream kernel

Randy 'ayaka' Li (9):
  conf/machine: add support for rk3399
  conf/machine: add support for rk3328
  conf/machine: add support for rv1108
  conf/machine: add support for rk3036
  conf/machine: add support for rk312x
  conf/machine: add support for rk3326
  conf/machine: add support for rk3368
  conf/machine: add support for rk3308
  conf/machine: rk3288: adding some machine files

ayaka (1):
  conf: use rockchip kernel 4.4 for firefly release

 conf/machine/evb-rk3288.conf       | 10 ++++++++++
 conf/machine/evb-rk3328.conf       | 11 +++++++++++
 conf/machine/evb-rv1108.conf       | 10 ++++++++++
 conf/machine/excavator-rk3399.conf | 12 ++++++++++++
 conf/machine/fennec-rk3288.conf    | 10 ++++++++++
 conf/machine/firefly-rk3288.conf   |  2 ++
 conf/machine/firefly-rk3399.conf   | 14 ++++++++++++++
 conf/machine/include/rk3036.inc    | 16 ++++++++++++++++
 conf/machine/include/rk312x.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3308.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3326.inc    | 18 ++++++++++++++++++
 conf/machine/include/rk3328.inc    | 18 ++++++++++++++++++
 conf/machine/include/rk3368.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
 conf/machine/include/rv1108.inc    | 16 ++++++++++++++++
 conf/machine/kylin-rk3036.conf     | 12 ++++++++++++
 16 files changed, 217 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/evb-rk3328.conf
 create mode 100644 conf/machine/evb-rv1108.conf
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/firefly-rk3399.conf
 create mode 100644 conf/machine/include/rk3036.inc
 create mode 100644 conf/machine/include/rk312x.inc
 create mode 100644 conf/machine/include/rk3308.inc
 create mode 100644 conf/machine/include/rk3326.inc
 create mode 100644 conf/machine/include/rk3328.inc
 create mode 100644 conf/machine/include/rk3368.inc
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/include/rv1108.inc
 create mode 100644 conf/machine/kylin-rk3036.conf

-- 
2.20.1


