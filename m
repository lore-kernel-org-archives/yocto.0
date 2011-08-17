Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE47E011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:50:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Aug 2011 09:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; 
   d="scan'208";a="8190341"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Aug 2011 09:50:06 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:50:05 -0500
Message-Id: <cover.1313598858.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][KERNEL] meta-/fri2: add EMGD support
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
X-List-Received-Date: Wed, 17 Aug 2011 16:50:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset makes fri2 use emgd.  Please pull into
linux-yocto-3.0/meta.

Thanks,

Tom

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/meta-fri2-emgd-linux-yocto-3.0
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/meta-fri2-emgd-linux-yocto-3.0

Tom Zanussi (2):
  bsp/fri2: merge emgd branch
  bsp/fri2: use EMGD feature

 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


