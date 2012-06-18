Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 306CFE00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:52:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2012 13:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="155047022"
Received: from unknown (HELO localhost) ([10.255.12.59])
	by orsmga001.jf.intel.com with ESMTP; 18 Jun 2012 13:52:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 18 Jun 2012 15:52:37 -0500
Message-Id: <cover.1340052437.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] yocto-bsp: template fixes
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
X-List-Received-Date: Mon, 18 Jun 2012 20:52:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates some Yocto BSP templates to fix some recent metadata changes
that caused the problems seen in YOCTO #2559.

Please pull into poky/master.

The following changes since commit 4ff6160d909e2a39e357c8a51f37d803dab64d5d:
  Richard Purdie (1):
        methodpool: Improve method already seen error message

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bugfix-2559
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bugfix-2559

Tom Zanussi (2):
  yocto-bsp: update yocto-bsp machine.conf template
  yocto-bsp: update yocto-bsp xorg.conf templates

 .../arch/qemu/conf/machine/{{=machine}}.conf       |    7 +++++--
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |    8 ++++++++
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 --
 3 files changed, 13 insertions(+), 4 deletions(-)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"


