Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C748E0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 14:22:21 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2012 14:22:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113856237"
Received: from unknown (HELO localhost) ([10.255.14.106])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2012 14:22:19 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Fri,  3 Feb 2012 16:21:58 -0600
Message-Id: <cover.1328307536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] fri2: use emgd-1.10
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
X-List-Received-Date: Fri, 03 Feb 2012 22:22:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into linux-yocto-3.0.

The following changes since commit 70e86dc937a40c0dc7c84549de0e86bb09f12da3:
  Bruce Ashfield (1):
        meta/rt: update rt patch cache

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/meta-fri2-emgd-1.10
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/meta-fri2-emgd-1.10

Tom Zanussi (1):
  fri2: use emgd-1.10

 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


