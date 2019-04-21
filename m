Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F3CE00C43; Sun, 21 Apr 2019 09:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFDD5E00B81
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 09:03:10 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 236F5100C32;
	Mon, 22 Apr 2019 00:54:04 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2019 23:53:34 +0800
Message-Id: <20190421155339.6332-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [meta-rockchip] [PATCH 0/5] add new SoCs support
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
X-List-Received-Date: Sun, 21 Apr 2019 16:03:13 -0000
Content-Transfer-Encoding: 8bit

After the FOSDEM, my patches for ARMv8 cortex tuning
are finally merged. So I think it is complete the
lose piece at meta-rockchip.

Since the big-litte is not supported by OE now,
I make all the chips' configure to use the big core
tuning.

Randy 'ayaka' Li (5):
  conf/machine: rk3288: Add some machine files
  conf/machine: add rk3399 support
  conf/machine: add support for rk3328
  conf/machine: add support for rk3036
  conf/machine: add support for rv1108

 conf/machine/evb-rk3288.conf       | 10 ++++++++++
 conf/machine/evb-rk3328.conf       | 12 ++++++++++++
 conf/machine/evb-rv1108.conf       | 10 ++++++++++
 conf/machine/excavator-rk3399.conf | 10 ++++++++++
 conf/machine/fennec-rk3288.conf    | 10 ++++++++++
 conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
 conf/machine/include/rk3036.inc    | 19 +++++++++++++++++++
 conf/machine/include/rk3288.inc    |  5 +++++
 conf/machine/include/rk3328.inc    | 18 ++++++++++++++++++
 conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
 conf/machine/include/rv1108.inc    | 12 ++++++++++++
 conf/machine/kylin-rk3036.conf     | 12 ++++++++++++
 conf/machine/tinker-rk3288.conf    |  2 ++
 13 files changed, 152 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/evb-rk3328.conf
 create mode 100644 conf/machine/evb-rv1108.conf
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/firefly-rk3399.conf
 create mode 100644 conf/machine/include/rk3036.inc
 create mode 100644 conf/machine/include/rk3328.inc
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/include/rv1108.inc
 create mode 100644 conf/machine/kylin-rk3036.conf

-- 
2.20.1


