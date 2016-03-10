Return-Path: <helio.castro@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DADE00CA9; Thu, 10 Mar 2016 06:10:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 159 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Mar 2016 06:10:00 PST
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE471E00C91
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:10:00 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:40633
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Helio.Castro@bmw-carit.de>)
	id 1ae1FG-00079u-2K
	for yocto@yoctoproject.org; Thu, 10 Mar 2016 15:07:18 +0100
Received: from localhost (172.20.20.223) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Thu, 10 Mar 2016 15:07:18 +0100
X-CTCH-RefID: str=0001.0A0C0203.56E17F96.026C, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: <helio.castro@bmw-carit.de>
To: <yocto@yoctoproject.org>
Date: Thu, 10 Mar 2016 15:07:04 +0100
Message-ID: <1457618824-40656-1-git-send-email-helio.castro@bmw-carit.de>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
X-Originating-IP: [172.20.20.223]
Subject: [PATCH][oe-core] gcc: Fix the license on GNU OpenMP
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
X-List-Received-Date: Thu, 10 Mar 2016 14:10:07 -0000
Content-Type: text/plain

From: Helio Chissini de Castro <helio.castro@bmw-carit.de>

Poky jethro has libgomp ( GNU OpenMP ) license marked as GPL-3.0,
where's in fact the correct is GPL-3.0 with GCC Library Runtime Exception

Signed-off-by: Helio Chissini de Castro <helio.castro@bmw-carit.de>
---
 meta/recipes-devtools/gcc/gcc-runtime.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-runtime.inc b/meta/recipes-devtools/gcc/gcc-runtime.inc
index 690d780..b2856d3 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-runtime.inc
@@ -119,9 +119,9 @@ LICENSE_libatomic = "GPL-3.0-with-GCC-exception"
 LICENSE_libatomic-dev = "GPL-3.0-with-GCC-exception"
 LICENSE_libatomic-staticdev = "GPL-3.0-with-GCC-exception"
 
-LICENSE_libgomp = "GPLv3"
-LICENSE_libgomp-dev = "GPLv3"
-LICENSE_libgomp-staticdev = "GPLv3"
+LICENSE_libgomp = "GPL-3.0-with-GCC-exception"
+LICENSE_libgomp-dev = "GPL-3.0-with-GCC-exception"
+LICENSE_libgomp-staticdev = "GPL-3.0-with-GCC-exception"
 
 # The base package doesn't exist, so we clear the recommends.
 RRECOMMENDS_${PN}-dbg = ""
-- 
2.5.0


