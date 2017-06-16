Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19F29E00A16; Fri, 16 Jun 2017 06:48:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0AA8E00992
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 06:47:58 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id ADF3426BAE8
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Fri, 16 Jun 2017 15:47:38 +0200
Message-Id: <20170616134740.25372-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 0/2] u-boot: various improvements
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
X-List-Received-Date: Fri, 16 Jun 2017 13:48:01 -0000

This first fixes a build issue regarding SPL_BINARY that is not copied
from the correct seach path. Then it backports an upstream fix for a
regression we have in u-boot 2017.05, that makes ethernet works again
on RK3288.

Romain Perier (2):
  u-boot: Copy ${SPL_BINARY} to the default search path
  u-boot: Backport upstream fix for gmac_rockchip

 ...3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch | 36 ++++++++++++++++++++++
 recipes-bsp/u-boot/u-boot_%.bbappend               | 14 +++++++++
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot/0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch
 create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend

-- 
1.8.3.1


