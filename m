Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F4EE0071B
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:31:51 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Jan 2012 11:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="91625308"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by azsmga001.ch.intel.com with ESMTP; 02 Jan 2012 11:31:50 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon,  2 Jan 2012 13:31:51 -0600
Message-Id: <cover.1325522900.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][KERNEL] meta/crownbay: use new yocto/emgd-1.10 feature branch
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
X-List-Received-Date: Mon, 02 Jan 2012 19:31:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset makes crownbay use the new yocto/emgd-1.10 feature branch.

Bruce, please don't merge this yet though - it depends on the new emgd-1.10
recipe, which in turn depends on some new LICENSE_FLAGS functionality being
merged.  Will let you know when all that's taken care of and it's safe to
pull this in.

Thanks,

Tom

The following changes since commit c979f1365b1eb74e882b2cbbc8407ec536ab6eb8:
  Bruce Ashfield (1):
        meta/routstationpro: refresh for 3.0 + rt support

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/linux-yocto-3.0-meta/emgd-1.10.v0
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/linux-yocto-3.0-meta/emgd-1.10.v0

Tom Zanussi (1):
  crownbay: use emgd-1.10

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


