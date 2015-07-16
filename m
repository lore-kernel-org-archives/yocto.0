Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9490E009F3; Thu, 16 Jul 2015 10:22:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A5A7E009DF
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:12 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMApu027088; Thu, 16 Jul 2015 12:22:10 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612221045-1313666 ;
	Thu, 16 Jul 2015 12:22:10 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:08 -0500
Message-Id: <2536c727ca86405f0db986922233f5f00e8bce1e.1437067054.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437067054.git.rich.tollerton@ni.com>
References: <cover.1437067054.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:22:10 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:22:10 PM,
	Serialize complete at 07/16/2015 12:22:10 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 2/3] fsharp: disable build separation
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:13 -0000

The fsharp build isn't compatible with separate build dirs.

[fsharp #438] -- https://github.com/fsharp/fsharp/issues/438

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/fsharp/fsharp.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mono/fsharp/fsharp.inc b/recipes-mono/fsharp/fsharp.inc
index d217ec5..acb17ce 100644
--- a/recipes-mono/fsharp/fsharp.inc
+++ b/recipes-mono/fsharp/fsharp.inc
@@ -5,7 +5,7 @@ DEPENDS = "mono"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "files://LICENSE;md5=512efb9375da0bd2fee9e2b9352c08af"
 
-inherit autotools
+inherit autotools-brokensep
 
 # For some reason the URL template changes from version to version,
 # therefore use some variables for the directory and extension
-- 
2.4.4


