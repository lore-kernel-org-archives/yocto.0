Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30FA6E0164A
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2013 16:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747483"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:18 +0100
Message-Id: <ff6c31fb2786c2c984fddcf92dc57430fcf73e2b.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 5/6] orc: remove
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:01 -0000

No longer needed. The recipe is currently maintained in meta-oe.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/orc/orc.inc      | 23 -----------------------
 recipes-multimedia/orc/orc_0.4.5.bb |  7 -------
 2 files changed, 30 deletions(-)
 delete mode 100644 recipes-multimedia/orc/orc.inc
 delete mode 100644 recipes-multimedia/orc/orc_0.4.5.bb

diff --git a/recipes-multimedia/orc/orc.inc b/recipes-multimedia/orc/orc.inc
deleted file mode 100644
index 971be62..0000000
--- a/recipes-multimedia/orc/orc.inc
+++ /dev/null
@@ -1,23 +0,0 @@
-DESCRIPTION = "orc - The Oil Runtime Compiler"
-HOMEPAGE = "http://code.entropywave.com/projects/orc/"
-LICENSE = "BSD-2-Clause & BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://COPYING;md5=1400bd9d09e8af56b9ec982b3d85797e"
-
-SRC_URI = "http://code.entropywave.com/download/orc/orc-${PV}.tar.gz;name=orc"
-
-inherit autotools pkgconfig
-
-BBCLASSEXTEND = "native"
-
-PACKAGES =+ "orc-examples"
-FILES_orc-examples = "${libdir}/orc/*"
-FILES_${PN} = "${bindir}/*"
-
-python populate_packages_prepend () {
-    libdir = bb.data.expand('${libdir}', d)
-    do_split_packages(d, libdir, '^lib(.*)\.so\.*', 'lib%s', 'ORC %s library', extra_depends='', allow_links=True)
-}
-
-do_compile_prepend_virtclass-native () {
-	sed -i -e 's#/tmp#.#g' ${S}/orc/orccodemem.c
-}
diff --git a/recipes-multimedia/orc/orc_0.4.5.bb b/recipes-multimedia/orc/orc_0.4.5.bb
deleted file mode 100644
index cf77efb..0000000
--- a/recipes-multimedia/orc/orc_0.4.5.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require orc.inc
-
-PR = "r2"
-
-SRC_URI[orc.md5sum] = "e26e59428b13ec251916f34bea96eee5"
-SRC_URI[orc.sha256sum] = "4e04953643cd8e67f8d9796da9547a606954e3944e42e7ce5a099440fd8e729e"
-
-- 
1.8.1.2


