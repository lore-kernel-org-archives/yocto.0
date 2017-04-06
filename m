Return-Path: <Rob.Woolley@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D23FE00AAA; Thu,  6 Apr 2017 11:44:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05082E00A71
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 11:44:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v36IiRhv023927
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 6 Apr 2017 11:44:27 -0700
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 6 Apr 2017 11:44:25 -0700
From: Rob Woolley <rob.woolley@windriver.com>
To: <andrei@gherzan.ro>, <yocto@yoctoproject.org>
Date: Thu, 6 Apr 2017 11:44:20 -0700
Message-ID: <20170406184420.55160-4-rob.woolley@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170406184420.55160-1-rob.woolley@windriver.com>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 3/3] pitft: Add documentation for pitft35r in README
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
X-List-Received-Date: Thu, 06 Apr 2017 18:44:29 -0000
Content-Type: text/plain

The support for the PiTFT 3.5 inch resistive touchscreen is optional.
It may be enabled by adding the following line in local.conf:

    MACHINE_FEATURES += "pitft pitft35r"

Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
---
 README | 1 +
 1 file changed, 1 insertion(+)

diff --git a/README b/README
index 9fdd5eb..e44475c 100644
--- a/README
+++ b/README
@@ -241,6 +241,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
 List of currently supported models:
     - pitft22
     - pitft28r
+    - pitft35r
 
 3.O. Misc. display
 ==================
-- 
2.11.0


