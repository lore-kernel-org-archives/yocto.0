Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 565114C80ACB
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:47:05 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 13:47:05 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 27 May 2011 13:47:04 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:46:11 -0500
Message-Id: <603e71a1badfdaac8b49913f9e60f2b0e8712287.1306514719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306514719.git.tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3][KERNEL] Remove extra struct page member from the buffer info structure
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
X-List-Received-Date: Fri, 27 May 2011 20:47:05 -0000

From: Greg Rose

declaration.

commit b1d670f10e8078485884f0cf7e384d890909aeaa upstream

Reported-by: Andi Kleen
Signed-off-by: Greg Rose
Tested-by: Emil Tantilov
Signed-off-by: Jeff Kirsher
Integrated-by: Tom Zanussi
---
 drivers/net/igbvf/igbvf.h |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/net/igbvf/igbvf.h b/drivers/net/igbvf/igbvf.h
index debeee2..f7ae284 100644
--- a/drivers/net/igbvf/igbvf.h
+++ b/drivers/net/igbvf/igbvf.h
@@ -126,7 +126,6 @@ struct igbvf_buffer {
 			unsigned int page_offset;
 		};
 	};
-	struct page *page;
 };
 
 union igbvf_desc {
-- 
1.7.0.4


