Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F03AE0123F
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969984"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:19 +0000
Message-Id: <9d58aef10d75fe5168cc0c561c480c751266d54b.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 5/5] classes: remove qt3e.bbclass
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:26 -0000

We can't make use of this class since we don't have qt3-embedded, so
remove it.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 classes/qt3e.bbclass |   11 -----------
 1 files changed, 0 insertions(+), 11 deletions(-)
 delete mode 100644 classes/qt3e.bbclass

diff --git a/classes/qt3e.bbclass b/classes/qt3e.bbclass
deleted file mode 100644
index d3d4a14..0000000
--- a/classes/qt3e.bbclass
+++ /dev/null
@@ -1,11 +0,0 @@
-#
-# override variables set by qmake_base to compile Qt/X11 apps
-#
-export QTDIR="${STAGING_DIR_HOST}/qte3"
-export QTEDIR="${STAGING_DIR_HOST}/qte3"
-export OE_QMAKE_UIC="${STAGING_BINDIR_NATIVE}/uic3"
-export OE_QMAKE_MOC="${STAGING_BINDIR_NATIVE}/moc3"
-export OE_QMAKE_CXXFLAGS="${CXXFLAGS} "
-export OE_QMAKE_INCDIR_QT="${STAGING_INCDIR}/qte3/include"
-export OE_QMAKE_LIBDIR_QT="${STAGING_LIBDIR}/qte3/lib"
-export OE_QMAKE_LIBS_QT="qte"
-- 
1.7.5.4


