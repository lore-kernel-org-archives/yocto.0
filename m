Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D8984C80BD8
	for <yocto@yoctoproject.org>; Sat, 13 Nov 2010 20:08:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2010 18:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,193,1288594800"; d="scan'208";a="677264949"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga001.jf.intel.com with ESMTP; 13 Nov 2010 18:08:29 -0800
Message-Id: <cover.1289697877.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Sun, 14 Nov 2010 09:24:37 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/1] remove some invalid information from distro_tracking_fields.inc
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
X-List-Received-Date: Sun, 14 Nov 2010 02:08:30 -0000

Some packages were removed from the  world , but their information also exsit in the distro_tracking_fields.inc

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrotracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrotracking

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distro_tracking_fields.inc: remove some packages information from it

 .../conf/distro/include/distro_tracking_fields.inc |  591 --------------------
 1 files changed, 0 insertions(+), 591 deletions(-)


