Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAD0E01691
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:02:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2013 14:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="402364567"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.12])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2013 15:02:34 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Fri,  1 Nov 2013 15:02:27 -0700
Message-Id: <1383343353-23232-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
Subject: [meta-measured][PATCH 1/7] trousers: Add libgcc as Runtime dependency
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Nov 2013 22:02:36 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-tpm/trousers/trousers_0.3.10.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-tpm/trousers/trousers_0.3.10.bb b/recipes-tpm/trousers/trousers_0.3.10.bb
index 33b2816..28594d2 100644
--- a/recipes-tpm/trousers/trousers_0.3.10.bb
+++ b/recipes-tpm/trousers/trousers_0.3.10.bb
@@ -71,6 +71,8 @@ FILES_${PN}-doc = " \
 	${mandir}/man8 \
 	"
 
+RDEPENDS_${PN} = "libgcc"
+
 inherit autotools useradd
 
 EXTRA_OECONF="--with-gui=none"
-- 
1.8.3.1


