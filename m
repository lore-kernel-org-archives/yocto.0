Return-Path: <Paul.Gortmaker@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39FF5E00AF4; Fri,  7 Apr 2017 11:59:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB516E00A96
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 11:59:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v37Ixfku026180
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 7 Apr 2017 11:59:41 -0700
Received: from yow-cube1.wrs.com (128.224.56.98) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 7 Apr 2017 11:59:40 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Apr 2017 14:59:22 -0400
Message-ID: <1491591562-14385-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] README: document 64 bit r-pi3 variant for MACHINE
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
X-List-Received-Date: Fri, 07 Apr 2017 18:59:45 -0000
Content-Type: text/plain

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 README | 1 +
 1 file changed, 1 insertion(+)

diff --git a/README b/README
index 9fdd5eb523df..19c38c3a085a 100644
--- a/README
+++ b/README
@@ -80,6 +80,7 @@ c. Set MACHINE in local.conf to one of the supported boards:
     - raspberrypi0
     - raspberrypi2
     - raspberrypi3
+    - raspberrypi3-64 (64 bit kernel & userspace)
     - raspberrypi-cm (dummy alias for raspberrypi)
     - raspberrypi-cm3 (dummy alias for raspberrypi2)
 d. bitbake rpi-hwup-image
-- 
2.7.4


