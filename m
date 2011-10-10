Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E54E0134D
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:44:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Oct 2011 20:44:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,514,1312182000"; d="scan'208";a="60509084"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by azsmga001.ch.intel.com with ESMTP; 09 Oct 2011 20:44:36 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:44:24 -0500
Message-Id: <cover.1318217996.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/8] meta-intel: bsp cleanup, v4
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
X-List-Received-Date: Mon, 10 Oct 2011 03:44:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes an emenlow splash screen bug, and adds missing splash
screens for several other BSPs.  It also adds missing smp support
for fishriver.

Fixes [YOCTO #464].

The following changes since commit b2a88d588518d0b841b68af53294418633d1f04d:
  Tom Zanussi (1):
        meta-sugarbay: update README.sources

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/bsp-cleanup-v4
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/bsp-cleanup-v4

Tom Zanussi (8):
  crownbay-noemgd: set boot vga mode
  crownbay: set boot vga mode
  emenlow: set boot vga mode
  jasperforest: set boot vga mode
  fishriver: set boot vga mode
  meta-fishriver: add missing SMP/SCHED_SMT support
  fri2: set boot vga mode
  fri2-noemgd: set boot vga mode

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
 meta-crownbay/conf/machine/crownbay.conf           |    2 ++
 meta-emenlow/conf/machine/emenlow.conf             |    2 ++
 meta-fishriver/conf/machine/fishriver.conf         |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 meta-fri2/conf/machine/fri2-noemgd.conf            |    2 ++
 meta-fri2/conf/machine/fri2.conf                   |    2 ++
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 ++
 8 files changed, 16 insertions(+), 0 deletions(-)


