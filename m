Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC98E0143C
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 15:31:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Jun 2012 15:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109856768"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Jun 2012 15:31:14 -0700
From: nitin.a.kamble@intel.com
To: Openembedded-core@lists.openembedded.org,
	yocto@yoctoproject.org
Date: Fri,  8 Jun 2012 15:23:30 -0700
Message-Id: <01b0f43cacd0beed93aebd108730bfe420ab2397.1339194124.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1339194124.git.nitin.a.kamble@intel.com>
References: <cover.1339194124.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] eglibc: remove runtime dependency of perl from eglibc-mtrace
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
X-List-Received-Date: Fri, 08 Jun 2012 22:31:14 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

perl needs eglibc to build. The presence of runtime dependency of
perl for eglibc-mtrace caused bitbake to build perl before eglibc,
which causes build failure of perl with poky-tiny distro

  This fixes bug: [YOCTO #2523]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-core/eglibc/eglibc-package.inc |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc-package.inc b/meta/recipes-core/eglibc/eglibc-package.inc
index ce37155..423729a 100644
--- a/meta/recipes-core/eglibc/eglibc-package.inc
+++ b/meta/recipes-core/eglibc/eglibc-package.inc
@@ -55,7 +55,6 @@ FILES_${PN}-dbg += "${libexecdir}/*/.debug ${libdir}/audit/.debug"
 FILES_catchsegv${PKGSUFFIX} = "${bindir}/catchsegv"
 RDEPENDS_catchsegv${PKGSUFFIX} = "libsegfault"
 RDEPENDS_${PN}-utils += "bash"
-RDEPENDS_${PN}-mtrace += "perl"
 FILES_${PN}-pcprofile = "${base_libdir}/libpcprofile.so"
 FILES_eglibc-thread-db${PKGSUFFIX} = "${base_libdir}/libthread_db.so.* ${base_libdir}/libthread_db-*.so"
 RPROVIDES_${PN}-dev += "libc-dev"
-- 
1.7.3.4


