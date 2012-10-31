Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94AEDE006C1
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 14:27:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Oct 2012 14:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,688,1344236400"; d="scan'208";a="213682757"
Received: from unknown (HELO localhost) ([10.255.14.154])
	by orsmga001.jf.intel.com with ESMTP; 31 Oct 2012 14:27:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 31 Oct 2012 16:27:52 -0500
Message-Id: <e253b22ed89294e3ee1059d18fa0eab487ad9a01.1351718664.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1351718664.git.tom.zanussi@intel.com>
References: <cover.1351718664.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: update MAINTAINERS file with more explicit patch submission instructions
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
X-List-Received-Date: Wed, 31 Oct 2012 21:27:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add some extra instructions to make it easier for users to submit
patches in a more uniform and useful way.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 MAINTAINERS | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index eac592b..a2231d0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2,7 +2,14 @@ This file contains a list of BSP maintainers for the BSPs contained in
 the meta-intel repository.
 
 Please submit any patches against meta-intel BSPs to the Yocto mailing
-list (yocto@yoctoproject.org).
+list (yocto@yoctoproject.org) and preface them with [meta-intel] in
+the Subject: line of your e-mail(s).  The latter makes it obvious that
+your patches are intended for inclusion into meta-intel and also makes
+it easier for maintainers to notice patches intended for meta-intel
+amongst all the other traffic on the Yocto mailing list.  Also, if
+your patches are available via a public git repository, please also
+include a URL to the repo and branch containing your patches as that
+makes it easier for maintainers to grab and test your patches.
 
 If you have problems with or questions about a particular BSP, feel
 free to contact the maintainer directly (cc:ing the Yocto mailing list
-- 
1.7.11.4


