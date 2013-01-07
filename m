Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 491E8E0145F
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:06:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 13:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="243146065"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 13:05:55 -0800
Message-Id: <6c7948d9ca339caa6647b7e3f20ab82508f0793a.1357591796.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
References: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1357591796.git.kevin.strasser@linux.intel.com>
References: <cover.1357591796.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 4/4] schroedinger: specify the version of MPL in use
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
X-List-Received-Date: Mon, 07 Jan 2013 21:06:57 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-multimedia/schroedinger/schroedinger.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/schroedinger/schroedinger.inc b/recipes-multimedia/schroedinger/schroedinger.inc
index 4853616..7e84eed 100644
--- a/recipes-multimedia/schroedinger/schroedinger.inc
+++ b/recipes-multimedia/schroedinger/schroedinger.inc
@@ -1,5 +1,5 @@
 HOMEPAGE = "http://schrodinger.sourceforge.net/"
-LICENSE = "MPL GPLv2 LGPLv2 MIT"
+LICENSE = "MPL-1.1 GPLv2 LGPLv2 MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d91a46405fc074b88c963cc4f2a0aae9 \
                     file://COPYING.GPL;md5=e181e3b7c66f5f96921d813c1074f833 \
                     file://COPYING.LGPL;md5=38c893e21baec4cd75ad800ba9e2410a \
-- 
1.7.9.5


