Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8EA4E00DB6; Tue,  9 Feb 2016 18:40:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F436E00CBE
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1A2eAFi018567
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 9 Feb 2016 18:40:10 -0800
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:10 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:58 -0600
Message-ID: <1455072000-156056-8-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 7/9][master] *-mingw32.conf: Update the SDKMACHINE to include additional PREFERRED_PROVIDER
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:11 -0000
Content-Type: text/plain

nativesdk-${SDK_PREFIX}libc-initial is also needed to override some
glibc settings.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 conf/machine-sdk/i686-mingw32.conf   | 1 +
 conf/machine-sdk/x86_64-mingw32.conf | 1 +
 2 files changed, 2 insertions(+)

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
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index 5e80dfa..2cb1b1f 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -4,6 +4,7 @@ SDK_OS = "mingw32"
 GCCTHREADS_mingw32 = "win32"
 
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
-- 
2.5.0


