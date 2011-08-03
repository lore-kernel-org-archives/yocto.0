Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E919D4C80FED
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 12:27:48 -0500 (CDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Aug 2011 10:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; 
   d="scan'208";a="3824323"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Aug 2011 10:27:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 12:27:35 -0500
Message-Id: <567c3b6436b4cb9551c23845c15ab544542b5083.1312391788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <2c1fbdd048c0934baf8dc739d68de906fa417544.1312391788.git.tom.zanussi@intel.com>
References: <2c1fbdd048c0934baf8dc739d68de906fa417544.1312391788.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312391788.git.tom.zanussi@intel.com>
References: <cover.1312391788.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] meta-crownbay: remove obsolete dir
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
X-List-Received-Date: Wed, 03 Aug 2011 17:27:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

remove recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin, since it's
no longer used.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 0 files changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
deleted file mode 100644
index e69de29..0000000
-- 
1.7.0.4


