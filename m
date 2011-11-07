Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EE84E01356
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:56:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Nov 2011 07:56:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="71405895"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2011 07:56:20 -0800
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:56:51 -0600
Message-Id: <cover.1320637311.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4][KERNEL] some more bsp cleanups
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Nov 2011 15:56:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This just finishes up the previous set of meta-intel cleanups.  All
machines were build- and run-tested.

Please pull into linux-yocto-3.0 and linux-yocto-dev.

The following changes since commit 4095bb597a7bcd647856aa35b5fb8637ed7ff975:
  Tom Zanussi (1):
        meta/common-pc-64: remove igb

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/bsp-cleanup3
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/bsp-cleanup3

Tom Zanussi (4):
  meta/fishriver: use power/intel feature
  meta/fri2: use power/intel feature
  meta/jasperforest: use power/intel feature
  meta/fishriver: enable hpet

 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    2 ++
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    1 +
 3 files changed, 4 insertions(+), 0 deletions(-)


