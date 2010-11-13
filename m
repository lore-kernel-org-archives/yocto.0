Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15CEE4C80BD8
	for <yocto@yoctoproject.org>; Sat, 13 Nov 2010 08:52:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Nov 2010 06:52:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,191,1288594800"; d="scan'208";a="348330922"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 13 Nov 2010 06:52:05 -0800
Message-Id: <cover.1289659279.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 13 Nov 2010 22:41:19 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/3] upgrade recipes cracklib,sqlite3
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
X-List-Received-Date: Sat, 13 Nov 2010 14:52:07 -0000

also with distro tracking field update

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/update-11-13
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/update-11-13

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (3):
  cracklib: upgrade from 2.8.16 to 2.8.18
  sqlite: upgrade from 3.6.23 to 3.7.3
  distro tracking: update the info for upgrade recpies

 .../conf/distro/include/distro_tracking_fields.inc |   42 ++++++++++----------
 .../{cracklib_2.8.16.bb => cracklib_2.8.18.bb}     |    0
 .../{sqlite3_3.6.23.1.bb => sqlite3_3.7.3.bb}      |    2 +-
 3 files changed, 22 insertions(+), 22 deletions(-)
 rename meta/recipes-extended/cracklib/{cracklib_2.8.16.bb => cracklib_2.8.18.bb} (100%)
 rename meta/recipes-support/sqlite/{sqlite3_3.6.23.1.bb => sqlite3_3.7.3.bb} (67%)


