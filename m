Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15F62E0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:00:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 18:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="97249166"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2011 18:00:48 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:00:50 -0600
Message-Id: <cover.1322703767.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-yocto fixes for kernel updates
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
X-List-Received-Date: Thu, 01 Dec 2011 02:00:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds some changes to match Bruce Ashfield's
'linux-yocto: consolidated pull request' of a couple hours ago:

http://lists.linuxtogo.org/pipermail/openembedded-core/2011-December/013574.html

Changes were compile- and boot-tested with the crownbay, sugarbay, and
emenlow BSPs.

The following changes since commit d7cd934376ae1edaf7055ec635eb3c85fdbf58b3:
  Martin Jansa (1):
        squashfs-tools: fix PR, those should start with 'r'

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/zedd-kernel-sync
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/zedd-kernel-sync

Tom Zanussi (1):
  meta-yocto: remove 2.6.34 .bbappend

 .../linux/linux-yocto_2.6.34.bbappend              |   12 ------------
 1 files changed, 0 insertions(+), 12 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend


