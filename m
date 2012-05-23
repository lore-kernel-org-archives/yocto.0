Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5F9E01402
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2012 12:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143883450"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2012 12:52:56 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:46 -0500
Message-Id: <6746f4417a227d4084f151a94fd0ff826a2c9cbb.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 19/20] meta-chiefriver: use lms
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
X-List-Received-Date: Wed, 23 May 2012 19:52:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Chiefriver needs lms support for AMT, add it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-chiefriver/conf/machine/chiefriver.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index a78e4fd..4a35913 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -16,4 +16,4 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 VA_FEATURES ?= "gst-va-intel va-intel"
 
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES} lms"
-- 
1.7.0.4


