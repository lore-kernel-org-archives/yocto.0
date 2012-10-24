Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6FDE0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:57:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 13:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="237817655"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2012 13:26:51 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Wed, 24 Oct 2012 13:25:47 -0700
Message-Id: <1d3856156110f722e46f1960851d1ed67e2f30f0.1351110208.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1351110208.git.nitin.a.kamble@intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
Subject: [PATCH v2 1/6] MAINTAINERS: correct pathname
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
X-List-Received-Date: Wed, 24 Oct 2012 20:57:06 -0000

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


