Return-Path: <reinette.chatre@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7687E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 14:35:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 May 2012 14:35:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143019093"
Received: from unknown (HELO rchatre.jf.intel.com) ([10.7.198.60])
	by orsmga001.jf.intel.com with ESMTP; 21 May 2012 14:35:43 -0700
From: Reinette Chatre <reinette.chatre@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2012 14:35:11 -0700
Message-Id: <1337636111-16405-1-git-send-email-reinette.chatre@intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] bitbake.conf: ensure .la and SOLIBSDEV libraries end in -dev package
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
X-List-Received-Date: Mon, 21 May 2012 21:35:43 -0000

When libraries are installed in ${libdir}/${BPN} we need to ensure that
those libraries without version number end up in the -dev package. If not
the error "ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains
symlink .so: " is encountered.

A change like this is required since package named ${PN} is evaluated
before ${PN}-dev and FILES_${PN} currently contains ${libdir}/${BPN}/*.
A recipe author is thus not able to use FILES_${PN}-dev
to try and place the .la and .so libraries in the development package.

Signed-off-by: Reinette Chatre <reinette.chatre@intel.com>
---
 meta/conf/bitbake.conf |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 7073018..02bd309 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -261,7 +261,7 @@ FILES_${PN} = "${bindir}/* ${sbindir}/* ${libexecdir}/* ${libdir}/lib*${SOLIBS}
             ${sysconfdir} ${sharedstatedir} ${localstatedir} \
             ${base_bindir}/* ${base_sbindir}/* \
             ${base_libdir}/*${SOLIBS} \
-            ${datadir}/${BPN} ${libdir}/${BPN}/* \
+            ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBS} \
             ${datadir}/pixmaps ${datadir}/applications \
             ${datadir}/idl ${datadir}/omf ${datadir}/sounds \
             ${libdir}/bonobo/servers"
@@ -272,7 +272,8 @@ SECTION_${PN}-doc = "doc"
 
 FILES_${PN}-dev = "${includedir} ${libdir}/lib*${SOLIBSDEV} ${libdir}/*.la \
                 ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig \
-                ${datadir}/aclocal ${base_libdir}/*.o"
+                ${datadir}/aclocal ${base_libdir}/*.o \
+                ${libdir}/${BPN}/*${SOLIBSDEV} ${libdir}/${BPN}/*.la"
 SECTION_${PN}-dev = "devel"
 ALLOW_EMPTY_${PN}-dev = "1"
 RDEPENDS_${PN}-dev = "${PN} (= ${EXTENDPKGV})"
-- 
1.7.7.6


