Return-Path: <chengwei.yang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2525E00869
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2014 18:19:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2014 18:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,864,1389772800"; d="scan'208";a="484955892"
Received: from chengwei-ubuntu.bj.intel.com ([10.238.155.119])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2014 18:19:15 -0800
From: Chengwei Yang <chengwei.yang@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Feb 2014 10:18:46 +0800
Message-Id: <1392689926-4212-1-git-send-email-chengwei.yang@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Ref-manual: fix typo for XDG_RUNTIME_DIR variable value
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
X-List-Received-Date: Tue, 18 Feb 2014 02:19:17 -0000

Signed-off-by: Chengwei Yang <chengwei.yang@intel.com>
---
 documentation/ref-manual/technical-details.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 51b9148..106bb2c 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -1005,7 +1005,7 @@
                     <literallayout class='monospaced'>
      mkdir -p /tmp/$USER-weston
      chmod 0700 /tmp/$USER-weston
-     export XDG_RUNTIME_DIR=/tmp/$USER=weston
+     export XDG_RUNTIME_DIR=/tmp/$USER-weston
                     </literallayout></para></listitem>
                 <listitem><para>Launch Weston in the shell:
                     <literallayout class='monospaced'>
-- 
1.7.9.5


