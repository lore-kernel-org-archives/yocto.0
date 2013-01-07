Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A99E01458
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:06:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="243146062"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 13:05:52 -0800
Message-Id: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1357591796.git.kevin.strasser@linux.intel.com>
References: <cover.1357591796.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 1/4] webmin: remove perl-module-warnings-register RDEPENDS
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

As of poky commit 51cbb5ae76a22d465e2f6c5ef923ec2682624e3b,
the module is included by default and an error is produced if
requested.

Fixes [YOCTO #3530]

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.590.bb |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/webmin/webmin_1.590.bb b/recipes-extended/webmin/webmin_1.590.bb
index a408092..c2d593a 100644
--- a/recipes-extended/webmin/webmin_1.590.bb
+++ b/recipes-extended/webmin/webmin_1.590.bb
@@ -5,11 +5,11 @@ LIC_FILES_CHKSUM = "file://LICENCE;md5=0373ac9f611e542ddebe1ec6394afc3c"
 
 # FIXME: some of this should be figured out automatically
 RDEPENDS_${PN} += "perl perl-module-socket perl-module-exporter perl-module-exporter-heavy perl-module-carp perl-module-strict"
-RDEPENDS_${PN} += "perl-module-warnings perl-module-warnings-register perl-module-xsloader perl-module-posix perl-module-autoloader"
+RDEPENDS_${PN} += "perl-module-warnings perl-module-xsloader perl-module-posix perl-module-autoloader"
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
 RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://setup.sh \
-- 
1.7.9.5


