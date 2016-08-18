Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EF1DE00D84; Thu, 18 Aug 2016 09:28:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73F8DE00D69
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 09:28:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7IGS1at025081
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Aug 2016 09:28:01 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Thu, 18 Aug 2016 09:28:01 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 18 Aug 2016 09:28:01 -0700
Message-ID: <1471537681-6174-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-mingw][PATCH 1/1] i686-mingw32.conf: add provider for libc-initial
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
X-List-Received-Date: Thu, 18 Aug 2016 16:28:07 -0000
Content-Type: text/plain

Make the preferred provider nativesdk-mingw-w64-runtime.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 conf/machine-sdk/i686-mingw32.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index 0bdedaa..db08d84 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -4,6 +4,7 @@ SDK_OS = "mingw32"
 GCCTHREADS_mingw32 = "win32"
 
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
-- 
1.7.9.5


