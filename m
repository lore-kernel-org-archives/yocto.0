Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4269E0059D
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 14:58:21 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Nov 2011 14:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,490,1315206000"; d="scan'208";a="35593104"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Nov 2011 14:58:20 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 10 Nov 2011 16:59:45 -0600
Message-Id: <cover.1320965782.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: emenlow xorg fix
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
X-List-Received-Date: Thu, 10 Nov 2011 22:58:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a problem with emenlow introduced by a recent xorg change.

The following changes since commit 63253211b4ca30c3a5fa2b4dd9a393247217816e:
  Tom Zanussi (1):
        meta-romley: change references to sugarbay in linux-yocto-rt_3.0.bbappend

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emenlow-mesa-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emenlow-mesa-fix

Tom Zanussi (1):
  meta-emenlow: fix mesa-dri multiple-providers warning

 meta-emenlow/conf/machine/emenlow.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


