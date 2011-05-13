Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34A904C810D8
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:01:36 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 May 2011 19:01:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="642069842"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 19:01:35 -0700
Message-Id: <cover.1305250702.git.liping.ke@intel.com>
Old-Date: Fri, 13 May 2011 09:38:22 +0800
Date: Fri, 13 May 2011  9:50:27 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Fri, 13 May 2011 02:01:36 -0000

From: Liping Ke <liping.ke@intel.com>

Below four patches are for putting extra requested fields inito different
cache files instead of using only on bb_cache.dat. Now image creator need
extra three fields. And in the future, there might be more similar requests.
For each extra requestor, we will save the requested fields data into a
separate cache files so that those who don't need it will not be impacted
with larger fields and large data files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/cache_impl
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache_impl

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (4):
  This patch introduce new param bitbake_mode into Cache.py.
  This patch splits Cache Data Retrieve method from Data Fields.
  This patch introduces Extra required fields for image creator.
  This patch implements independent cache for Extra Cache Fields
    Request

 bitbake/lib/bb/cache.py       |  161 ++++++++++++++++++++++++++++++++---------
 bitbake/lib/bb/cooker.py      |   55 ++++++++++----
 bitbake/lib/bb/extra_cache.py |   29 ++++++++
 3 files changed, 196 insertions(+), 49 deletions(-)
 create mode 100644 bitbake/lib/bb/extra_cache.py


