Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F332E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2012 12:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156323120"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2012 12:52:35 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:35 -0500
Message-Id: <5921ca9a35c2113423ffaa55ba70bac4af166873.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 08/20] yasm: new recipe
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
X-List-Received-Date: Wed, 23 May 2012 19:52:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

x86 (SSE) assembler supporting NASM and GAS-syntaxes, needed by
ffmpeg.

Taken from oe-classic (git://git.openembedded.org/openembedded):

    commit 22f72e1751108cf5092332a952fcbadec5cd1a0d
    Author: Khem Raj <raj.khem@gmail.com>
    Date:   Tue Mar 22 12:21:50 2011 -0700

        yasm: Upgrade yasm_0.7.2.bb -> yasm_1.1.0.bb

        Signed-off-by: Khem Raj <raj.khem@gmail.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-support/yasm/yasm_1.1.0.bb |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-support/yasm/yasm_1.1.0.bb

diff --git a/common/recipes-support/yasm/yasm_1.1.0.bb b/common/recipes-support/yasm/yasm_1.1.0.bb
new file mode 100644
index 0000000..7c3fc86
--- /dev/null
+++ b/common/recipes-support/yasm/yasm_1.1.0.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "x86 (SSE) assembler supporting NASM and GAS-syntaxes"
+LICENSE = "BSD"
+HOMEPAGE = "http://www.tortall.net/projects/yasm/"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=26c9f3d11f88911950f9ff62189d3d4f"
+
+SRC_URI = "http://www.tortall.net/projects/yasm/releases/yasm-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "8392e5f2235c2c2a981e1a633f2698cb"
+SRC_URI[sha256sum] = "e5d56b582f3d0c30ed5c4fc221063e4175602307ea645520889458133671c232"
+
+S = "${WORKDIR}/yasm-${PV}"
+
+inherit autotools gettext
+
+BBCLASSEXTEND = "native"
-- 
1.7.0.4


