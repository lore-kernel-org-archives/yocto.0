Return-Path: <kevin.strasser@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A92CE0027D
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 10:20:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2012 10:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="163876936"
Received: from wrk.jf.intel.com ([10.7.202.78])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2012 10:20:26 -0700
From: Kevin Strasser <kevin.strasser@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jul 2012 10:21:30 -0700
Message-Id: <1341940890-6666-1-git-send-email-kevin.strasser@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Mailman-Approved-At: Tue, 10 Jul 2012 10:23:30 -0700
Cc: Kevin Strasser <kevin.strasser@intel.com>
Subject: [PATCH] meta-baryon: update proftpd SRC_URI
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
X-List-Received-Date: Tue, 10 Jul 2012 17:20:26 -0000

ftp.nl.uu.net is no longer hosting the proftpd package.

Signed-off-by: Kevin Strasser <kevin.strasser@intel.com>
---
 recipes-extended/proftpd/proftpd_1.3.3c.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/proftpd/proftpd_1.3.3c.bb b/recipes-extended/proftpd/proftpd_1.3.3c.bb
index dc1050e..8de80fc 100644
--- a/recipes-extended/proftpd/proftpd_1.3.3c.bb
+++ b/recipes-extended/proftpd/proftpd_1.3.3c.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fdedcde17b1ffd967d86c20fe0ac158a"
 
 PR = "r0"
 
-SRC_URI = "ftp://ftp.nl.uu.net/pub/unix/ftp/proftpd/ftp/distrib/source/${PN}-${PV}.tar.gz \
+SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
 	file://make.patch \
 	file://basic.conf.patch \
 	"
-- 
1.7.9.5


