Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F53E0048B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:33:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2011 12:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,364,1309762800"; d="scan'208";a="38911055"
Received: from unknown (HELO localhost) ([10.255.14.198])
	by fmsmga002.fm.intel.com with ESMTP; 12 Aug 2011 12:33:13 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 12 Aug 2011 14:33:08 -0500
Message-Id: <cover.1313169409.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH][KERNEL] meta/crownbay: use hpet
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
X-List-Received-Date: Fri, 12 Aug 2011 19:33:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This enables hpet for crownbay.

Please pull into linux-yocto-3.0/meta.

Thanks,

Tom

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/crownbay-updates-linux-yocto-3.0
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/crownbay-updates-linux-yocto-3.0

Tom Zanussi (1):
  meta/crownbay: enable hpet

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)


