Return-Path: <Ovidiu.Panait@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6DE0E00AD5; Thu,  9 May 2019 05:55:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06822E00798
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 05:55:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x49CtNmU003797
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 May 2019 05:55:23 -0700 (PDT)
Received: from otp-opanait-l1.corp.ad.wrs.com (128.224.124.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Thu, 9 May 2019 05:55:22 -0700
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 May 2019 15:53:41 +0300
Message-ID: <20190509125341.11345-2-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509125341.11345-1-ovidiu.panait@windriver.com>
References: <20190509125341.11345-1-ovidiu.panait@windriver.com>
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH 2/2] anaconda_support_image: Add package-management to IMAGE_FEATURES
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
X-List-Received-Date: Thu, 09 May 2019 12:55:25 -0000
Content-Type: text/plain

Currently, if a target image does not contain the rpm database,
any rpm queries that anaconda executes will fail.

To fix this, add the rpm database to all images.

Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 classes/anaconda_support_image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/anaconda_support_image.bbclass b/classes/anaconda_support_image.bbclass
index 71a5d96..ce48616 100644
--- a/classes/anaconda_support_image.bbclass
+++ b/classes/anaconda_support_image.bbclass
@@ -1,5 +1,5 @@
 FEATURE_PACKAGES_anaconda-support = "packagegroup-anaconda-support"
-IMAGE_FEATURES_append = " anaconda-support"
+IMAGE_FEATURES_append = " anaconda-support package-management"
 
 # Generate filesystem images for image copy install
 IMAGE_FSTYPES += "ext4"
-- 
2.20.1


