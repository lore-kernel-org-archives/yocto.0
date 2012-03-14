Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82513E0044D
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 01:27:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Mar 2012 01:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77313180"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.62])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Mar 2012 01:27:30 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Mar 2012 16:27:12 +0800
Message-Id: <cover.1331713200.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] perfer older version of lttng-ust in poky distro
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
X-List-Received-Date: Wed, 14 Mar 2012 08:27:31 -0000

Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of 
lttng2-ust in poky distro. This fixed yocto bug #2062. 

The lttng2 is very different in terms of architecture and usage model, compared 
to lttng. The eclipse upstream lttng plugin won't be able to support lttng2 until 
the eclipse Juno release(Jun 27th, 2012).

The following changes since commit 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2:
  Richard Purdie (1):
        dates: Fix unpackaged files warning

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib llu/bug2062
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug2062

Lianhao Lu (1):
  poky.conf: Prefer lttng-ust instead of lttng2-ust.

 meta-yocto/conf/distro/poky.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


