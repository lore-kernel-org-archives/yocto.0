Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B86E0052B
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2012 10:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824640"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:42 -0700
Message-Id: <b724623f2f22fdb2643a57ea4939831f54bd94e4.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
References: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 7/7] crownbay: add more information in README
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Mention Little Bay & Shell Bay boards from the crownbay kit
in the readme.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/README |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 1f164f4..525b2e6 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -5,6 +5,8 @@ Please see the corresponding sections below for details.
 The Crown Bay platform consists of the Intel Atom E6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
+The crownbay kit consists of two boards, Shell Bay & Little Bay.
+
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
 
-- 
1.7.3.4


