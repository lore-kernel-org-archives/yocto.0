Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F618E00DA4; Thu, 25 Jan 2018 19:24:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D26E00CF1
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 19:24:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jan 2018 19:24:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,414,1511856000"; d="scan'208";a="169245719"
Received: from timo-fedora.jf.intel.com ([10.7.159.66])
	by orsmga004.jf.intel.com with ESMTP; 25 Jan 2018 19:24:33 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Jan 2018 19:33:02 -0800
Message-Id: <20180126033303.6842-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [eclipse-poky][oxygen][PATCH v2 1/2] setup.sh: install feature version which meets minimum version required
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
X-List-Received-Date: Fri, 26 Jan 2018 03:24:38 -0000

From: Chin Huat Ang <chin.huat.ang@intel.com>

When only minimum version is specified, install feature with version closest
to the minimum specified.

Signed-off-by: Chin Huat Ang <chin.huat.ang@intel.com>
Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 4b160ea16c4..024596bfb1e 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -228,8 +228,12 @@ update_feature_remote()
       done
   else
       #only has minimum version requirement
-      local max_remote_ver="`get_version $1 $2 'max'`"
-      [ "$max_remote_ver" \> "$3" ] || [ "$max_remote_ver" = "$3" ] && installIU=$max_remote_ver
+      for i in $all_versions; do
+        if [ "$i" \> "$3" ] || [ "$i" = "$3" ]; then
+          installIU=$i
+          break
+        fi
+      done
   fi
 
   [ "x$installIU" = "x" ] && err_exit 1 "Can NOT find candidates of $2 version($3, $4) at $1!"
-- 
2.13.6


