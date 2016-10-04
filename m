Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4F2E0043B; Tue,  4 Oct 2016 08:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BBF9E002AC
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 08:46:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 04 Oct 2016 08:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,295,1473145200"; d="scan'208";a="886604573"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 04 Oct 2016 08:46:18 -0700
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2016 08:47:11 -0700
Message-Id: <20161004154711.28091-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.10.1
X-Mailman-Approved-At: Wed, 05 Oct 2016 07:44:52 -0700
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH] sdk-installer: Fix unclear SDK installer message
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
X-List-Received-Date: Tue, 04 Oct 2016 15:46:19 -0000

When the host and the SDK architectures are incompatible the SDK
installer outputs an incomplete error message "Error: Installation
machine not supported!". This commit adds a more verbose error
message e.g "Error: Incompatible SDK installer! Your host is i686
and this SDK was built for x86_64 hosts."

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 meta/files/toolchain-shar-extract.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/files/toolchain-shar-extract.sh b/meta/files/toolchain-shar-extract.sh
index 66c017f..9295ddc 100644
--- a/meta/files/toolchain-shar-extract.sh
+++ b/meta/files/toolchain-shar-extract.sh
@@ -28,7 +28,7 @@ fi
 if [ "$INST_ARCH" != "$SDK_ARCH" ]; then
 	# Allow for installation of ix86 SDK on x86_64 host
 	if [ "$INST_ARCH" != x86_64 -o "$SDK_ARCH" != ix86 ]; then
-		echo "Error: Installation machine not supported!"
+		echo "Error: Incompatible SDK installer! Your host is $INST_ARCH and this SDK was built for $SDK_ARCH hosts."
 		exit 1
 	fi
 fi
-- 
2.10.1


