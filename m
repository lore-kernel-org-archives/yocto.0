Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40454E00DE1; Thu, 20 Jun 2019 04:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5188E00BE9
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 04:19:18 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:56c])
	by kozue.soulik.info (Postfix) with ESMTPA id 8DBC0100B70;
	Thu, 20 Jun 2019 20:20:47 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 19:19:02 +0800
Message-Id: <20190620111911.4736-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Cc: ayaka <ayaka@soulik.info>
Subject: [meta-rockchip] [PATCH v3 0/9] add new SoCs support
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
X-List-Received-Date: Thu, 20 Jun 2019 11:19:19 -0000
Content-Transfer-Encoding: 8bit

Changelog
v2 Removing the settings applied for vendor kernel
v2 Adding some SoCs which are supported by the upstream kernel
v3 Adding new chip RK1808

Randy 'ayaka' Li (8):
  conf/machine: add support for rk3399
  conf/machine: add support for rk3328
  conf/machine: add support for rv1108
  conf/machine: add support for rk3036
  conf/machine: add support for rk312x
  conf/machine: add support for rk3326
  conf/machine: add support for rk3368
  conf/machine: add support for rk3308

Randy Li (1):
  conf/machine: add support for rk1808

 conf/machine/evb-rk3328.conf       | 11 +++++++++++
 conf/machine/evb-rv1108.conf       | 10 ++++++++++
 conf/machine/excavator-rk3399.conf | 12 ++++++++++++
 conf/machine/firefly-rk3399.conf   | 14 ++++++++++++++
 conf/machine/include/rk1808.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3036.inc    | 16 ++++++++++++++++
 conf/machine/include/rk312x.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3308.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3326.inc    | 18 ++++++++++++++++++
 conf/machine/include/rk3328.inc    | 18 ++++++++++++++++++
 conf/machine/include/rk3368.inc    | 17 +++++++++++++++++
 conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
 conf/machine/include/rv1108.inc    | 16 ++++++++++++++++
 conf/machine/kylin-rk3036.conf     | 12 ++++++++++++
 14 files changed, 212 insertions(+)
 create mode 100644 conf/machine/evb-rk3328.conf
 create mode 100644 conf/machine/evb-rv1108.conf
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/firefly-rk3399.conf
 create mode 100644 conf/machine/include/rk1808.inc
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
2.21.0


