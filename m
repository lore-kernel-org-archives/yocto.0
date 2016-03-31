Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29B17E00C89; Thu, 31 Mar 2016 14:26:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEFAAE00C7E
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 14:26:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 31 Mar 2016 14:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,424,1455004800"; d="scan'208";a="945594778"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.90])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2016 14:26:20 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: opkg-devel@googlegroups.co,
	yocto@yoctoproject.org
Date: Thu, 31 Mar 2016 15:27:01 -0600
Message-Id: <1459459621-21610-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH][opkg-utils] opkg-build: Exit when fail to list files.
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
X-List-Received-Date: Thu, 31 Mar 2016 21:26:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

We have an issue when ls segfaults in some cases [1] so it's
better to detect the failure at this level instead of continue
the build process.

[YOCTO #8926]

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=8926#c0

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 opkg-build | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/opkg-build b/opkg-build
index 98008b6..a9ccad2 100755
--- a/opkg-build
+++ b/opkg-build
@@ -53,6 +53,10 @@ pkg_appears_sane() {
 		echo "*** Warning: The following files have names ending in '~'.
 You probably want to remove them: " >&2
 		ls -ld $tilde_files
+		if [ $? -ne 0 ]; then
+			echo "*** Error: Fail to list files have names ending in '~'."
+			exit 1
+		fi
 		echo >&2
 	    else
 		echo "*** Removing the following files: $tilde_files"
@@ -66,6 +70,10 @@ You probably want to remove them: " >&2
 		echo "*** Warning: The following files have a UID greater than 99.
 You probably want to chown these to a system user: " >&2
 		ls -ld $large_uid_files
+		if [ $? -ne 0 ]; then
+			echo "*** Error: Fail to list files have a UID greater than 99."
+			exit 1
+		fi
 		echo >&2
 	fi
 	    
-- 
2.1.4


