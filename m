Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 310C5E0141C
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 13:17:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Sep 2012 13:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,428,1344236400"; d="scan'208";a="193455181"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by orsmga001.jf.intel.com with ESMTP; 15 Sep 2012 13:17:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 15 Sep 2012 15:17:07 -0500
Message-Id: <574d10a3a2040ff685b74f9d4034f045d0191e5b.1347739624.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <2231d3800e94e39a6cc77473c6654cb221e7e55b.1347739624.git.tom.zanussi@intel.com>
References: <2231d3800e94e39a6cc77473c6654cb221e7e55b.1347739624.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1347739624.git.tom.zanussi@intel.com>
References: <cover.1347739624.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] meta-intel: move emgd-driver-bin_1.14 to xorg-driver/
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
X-List-Received-Date: Sat, 15 Sep 2012 20:17:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd-driver-bin should be in common/recipes-graphics/xorg-driver
rather than common/recipes-graphics/xorg-xserver so move it there.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../{xorg-xserver => xorg-driver}/emgd-driver-bin_1.14.bb                 | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename common/recipes-graphics/{xorg-xserver => xorg-driver}/emgd-driver-bin_1.14.bb (100%)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
rename to common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
-- 
1.7.11.4


