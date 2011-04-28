Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 719EB4C804D4
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 00:45:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2011 22:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,278,1301900400"; d="scan'208";a="915442354"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 22:45:14 -0700
Message-Id: <cover.1303968733.git.liping.ke@intel.com>
Old-Date: Thu, 28 Apr 2011 13:32:13 +0800
Date: Thu, 28 Apr 2011 13:35:53 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] Resend:[Image-Creator]Make bitbake server type configurable (xmlrpc, none)
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
X-List-Received-Date: Thu, 28 Apr 2011 05:45:15 -0000

From: Liping Ke <liping.ke@intel.com>

Add -t options in bitbake for configuring server type.

Signed-off-by: Liping Ke <liping.ke@intel.com>


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/server_type
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/server_type

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  Make bitbake server type configurable (xmlrpc, none)

 bitbake/bin/bitbake |   22 +++++++++++++++++-----
 1 files changed, 17 insertions(+), 5 deletions(-)


