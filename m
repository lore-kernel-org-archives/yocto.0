Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EAE3E00B76; Mon, 22 May 2017 08:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10B0EE00B0B
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 08:17:32 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 4766E26B39F
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Mon, 22 May 2017 17:17:13 +0200
Message-Id: <20170522151716.4792-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Mon, 22 May 2017 15:17:35 -0000

This set of patches add a new u-boot-common file for 2017.05, so
it can be shared between u-boot-rockchip and a u-boot recipe for
mainline. Then, it add a bbappend to bump u-boot to the last
v2017.05.

Romain Perier (3):
  u-boot: Add u-boot-common_2017.05.inc
  u-boot-rockchip: Use u-boot-common_2017.05.inc
  u-boot: Add bbappend for u-boot mainline

 recipes-bsp/u-boot/u-boot-common_2017.05.inc | 14 ++++++++++++++
 recipes-bsp/u-boot/u-boot-rockchip_git.bb    |  2 +-
 recipes-bsp/u-boot/u-boot_%.bbappend         |  5 +++++
 3 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot/u-boot-common_2017.05.inc
 create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend

-- 
1.8.3.1


