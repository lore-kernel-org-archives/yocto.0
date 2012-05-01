Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A1FE01402
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:24:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 May 2012 15:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138899602"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 15:13:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:49 -0700
Message-Id: <0547e99509a97a445652702c5021030cac4911d9.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 5/7] sys940x: Add product URL to README
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
X-List-Received-Date: Tue, 01 May 2012 22:24:27 -0000

Add the Inforce Computing website product URL for the SYS940X reference plaform
to the sys940x bsp README.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/README |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-sys940x/README b/meta-sys940x/README
index e349008..b030faf 100644
--- a/meta-sys940x/README
+++ b/meta-sys940x/README
@@ -9,6 +9,9 @@ processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
 
+More details available on the product page:
+http://www.inforcecomputing.com/SYS940X_ECX.html
+
 
 Dependencies
 ============
-- 
1.7.7.6


