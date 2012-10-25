Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87AAFE0032E
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2012 10:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824622"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:36 -0700
Message-Id: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 1/7] MAINTAINERS: correct pathname
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The commmon directory has more stuff than just recipes-core.
All this need to be maintained together as part of the meta-intel layer.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 MAINTAINERS |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index d63ed31..eac592b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -42,7 +42,7 @@ F:	meta-chiefriver/
 
 COMMON
 M:	Nitin A Kamble<nitin.a.kamble@intel.com>
-F:	common/recipes-core/
+F:	common/
 
 CROWNBAY
 M:	Nitin A Kamble<nitin.a.kamble@intel.com>
-- 
1.7.3.4


