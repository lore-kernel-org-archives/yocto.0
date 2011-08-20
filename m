Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514E1E0120C
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2011 08:26:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="40340201"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2011 08:26:47 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:57 -0500
Message-Id: <6c41f304f572025e32588f17ce34c4365e7e17be.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 7/9] meta-intel: move emgd-driver-bin_1.8 to common
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd-driver-bin will be shared by multiple BSPs, crownbay and fri2 to
start with, so move them into /common.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename {meta-crownbay => common}/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb (100%)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
similarity index 100%
rename from meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
-- 
1.7.0.4


