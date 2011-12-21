Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC07E00748
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:03:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2011 01:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49315743"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 01:03:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:48 -0800
Message-Id: <6501c1e4f33650fc4e22e62a124c49473e32d72f.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
Subject: [PATCH 2/9] ncurses: Allow override of ENABLE_WIDEC
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
X-List-Received-Date: Wed, 21 Dec 2011 09:03:58 -0000

Set ENABLE_WIDEC with ?= instead of = to allow for the external override
by distro definitions.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-core/ncurses/ncurses.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/ncurses/ncurses.inc b/meta/recipes-core/ncurses/ncurses.inc
index 98f45a4..583dad7 100644
--- a/meta/recipes-core/ncurses/ncurses.inc
+++ b/meta/recipes-core/ncurses/ncurses.inc
@@ -19,7 +19,7 @@ CONFIG_SITE =+ "${WORKDIR}/config.cache"
 # Whether to enable separate widec libraries; must be 'true' or 'false'
 #
 # TODO: remove this variable when widec is supported in every setup?
-ENABLE_WIDEC = "true"
+ENABLE_WIDEC ?= "true"
 
 # _GNU_SOURCE is required for widec stuff and is detected automatically
 # for target objects.  But it must be set manually for native and sdk
-- 
1.7.6.4


