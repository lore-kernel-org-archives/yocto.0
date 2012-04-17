Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D7FE0140A
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:29:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Apr 2012 20:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154485252"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2012 20:29:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:29:53 -0500
Message-Id: <40093e3d597f9cce55e3e842cf693e41adf88388.1334633179.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <76c20801e488ef27f951befeb722de31d1af8daa.1334633179.git.tom.zanussi@intel.com>
References: <76c20801e488ef27f951befeb722de31d1af8daa.1334633179.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1334633179.git.tom.zanussi@intel.com>
References: <cover.1334633179.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] dev-manual: remove kernel26 machine feature mention
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
X-List-Received-Date: Tue, 17 Apr 2012 03:29:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

kernel26 is now obsolete so remove mention of it from the docs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index a32085d..0de6a91 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1082,7 +1082,7 @@ so that there are some definite steps on how to do this.  I need more detail her
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PREFERRED_PROVIDER'>
                         PREFERRED_PROVIDER</ulink></filename>_virtual/kernel (see below)</para></listitem>
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE_FEATURES'>
-                        MACHINE_FEATURES</ulink></filename> (e.g. "kernel26 apm screen wifi")</para></listitem>
+                        MACHINE_FEATURES</ulink></filename> (e.g. "apm screen wifi")</para></listitem>
                 </itemizedlist>
             </para>
 
-- 
1.7.0.4


