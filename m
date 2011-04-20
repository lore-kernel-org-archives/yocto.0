Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8A4D4C804D4
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2011 11:40:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 09:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="736107592"
Received: from unknown (HELO helios) ([10.255.13.37])
	by orsmga001.jf.intel.com with SMTP; 20 Apr 2011 09:39:58 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 20 Apr 2011 17:39:56 +0100
Message-Id: <cover.1303316817.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 20 Apr 2011 17:26:57 +0100
Date: Wed, 20 Apr 2011 17:39:56 +0100
To: yocto@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] [meta-intel] add iPXE
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
X-List-Received-Date: Wed, 20 Apr 2011 16:40:42 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Add iPXE to help with NFS root setup on Intel-based machines [1].

Note that this pulls from an arbitrary (but tested) git SRCREV due to there
not being a recent enough release version at the moment.

[1] http://wiki.pokylinux.org/wiki/Poky_NFS_Root

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/meta-intel-ipxe
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/meta-intel-ipxe

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  ipxe: add iPXE from git

 common/recipes-bsp/ipxe/files/chainload.ipxe |    5 +++
 common/recipes-bsp/ipxe/ipxe_git.bb          |   38 ++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-bsp/ipxe/files/chainload.ipxe
 create mode 100644 common/recipes-bsp/ipxe/ipxe_git.bb

-- 
1.7.4.4


