Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF03E00992; Fri, 28 Apr 2017 07:01:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07550E00953
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 07:01:36 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id ADB5E269D30
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Fri, 28 Apr 2017 16:01:21 +0200
Message-Id: <20170428140126.27654-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 0/5] u-boot-rockchip: various improvements
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
X-List-Received-Date: Fri, 28 Apr 2017 14:01:39 -0000

This set of patches adds variaous improvements to the u-boot-rockchip
recipe. It fix a build issue due to spl binary being copied from the
wrong task, it removes various already defined variables, defines a
version and adds support for the rock2 board.

Romain Perier (5):
  machine: add UBOOT_MACHINE definition
  u-boot-rockchip: copy spl binary from the good task
  u-boot-rockchip: use a correct version
  u-boot-rockchip: remove duplicated variables
  u-boot-rockchip: add rock2 to compatible machines

 conf/machine/rock2-square.conf            |  1 +
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 13 ++++++-------
 2 files changed, 7 insertions(+), 7 deletions(-)

-- 
1.8.3.1


