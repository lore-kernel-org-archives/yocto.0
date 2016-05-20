Return-Path: <daicy.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20164E00EB1; Thu, 19 May 2016 18:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 May 2016 18:50:17 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A842CE00EA7
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 18:50:17 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; 
   d="scan'208";a="6724679"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 May 2016 09:49:05 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 8C5AC42B670A
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 09:49:04 +0800 (CST)
Received: from localhost.localdomain (10.167.226.24) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Fri, 20 May 2016 09:49:04 +0800
From: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Message-ID: <1456613609-11183-1-git-send-email-daicy.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.24]
X-yoursite-MailScanner-ID: 8C5AC42B670A.AFAAF
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: daicy.fnst@cn.fujitsu.com
Cc: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
Subject: [meta-qt4][PATCH] qt4-native: Warning Fix
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
Date: Fri, 20 May 2016 01:50:21 -0000
X-Original-Date: Sun, 28 Feb 2016 01:53:29 +0300
X-List-Received-Date: Fri, 20 May 2016 01:50:21 -0000
Content-Type: text/plain

The warning is as following:
    WARNING: File '...tmp/sysroots/x86_64-linux/usr/lib/libQtCore.so.4.8.7'
    from qt4-native was already stripped, this will prevent future debugging!
    WARNING: File '...tmp/sysroots/x86_64-linux/usr/lib/libQtGui.so.4.8.7'
    from qt4-native was already stripped, this will prevent future debugging!
    ......

Signed-off-by: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
---
 recipes-qt4/qt4/qt4-native_4.8.7.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-qt4/qt4/qt4-native_4.8.7.bb b/recipes-qt4/qt4/qt4-native_4.8.7.bb
index 494d663..f0e5caa 100644
--- a/recipes-qt4/qt4/qt4-native_4.8.7.bb
+++ b/recipes-qt4/qt4/qt4-native_4.8.7.bb
@@ -4,3 +4,4 @@ TOBUILD := "src/tools/bootstrap ${TOBUILD}"
 
 SRC_URI[md5sum] = "d990ee66bf7ab0c785589776f35ba6ad"
 SRC_URI[sha256sum] = "e2882295097e47fe089f8ac741a95fef47e0a73a3f3cdf21b56990638f626ea0"
+INHIBIT_SYSROOT_STRIP = "1"
-- 
1.8.4.2




