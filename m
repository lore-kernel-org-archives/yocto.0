Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC785E01238
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Aug 2011 09:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="39346675"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2011 09:51:22 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:09 -0500
Message-Id: <a2fb3f783d18db51b70cf54a71c22c5872698efd.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598804.git.tom.zanussi@intel.com>
References: <cover.1313598804.git.tom.zanussi@intel.com>
Subject: [PATCH 08/12] meta-intel: move emgd-driver-bin_1.8 to common
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:19 -0000

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


