Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F445E009ED; Thu, 16 Jul 2015 10:22:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28EEEE009EC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:12 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMApt027088; Thu, 16 Jul 2015 12:22:10 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612221024-1313665 ;
	Thu, 16 Jul 2015 12:22:10 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:07 -0500
Message-Id: <4a8395a93d123034c76bdb98305c437dcf55ea13.1437067054.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 1/3] fsharp_3.1.2.4.bb: add
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:14 -0000

There are several build issues in 3.1.1.1 that appear to be fixed in
3.1.2.4, so rather than try to fix the old version, add the new one.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/fsharp/fsharp_3.1.2.4.bb | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 recipes-mono/fsharp/fsharp_3.1.2.4.bb

diff --git a/recipes-mono/fsharp/fsharp_3.1.2.4.bb b/recipes-mono/fsharp/fsharp_3.1.2.4.bb
new file mode 100644
index 0000000..6e21d72
--- /dev/null
+++ b/recipes-mono/fsharp/fsharp_3.1.2.4.bb
@@ -0,0 +1,7 @@
+require fsharp.inc
+
+inherit pkgconfig
+
+SRC_URI[md5sum] = "6b86979034d15efb1d5e167129ae7a9e"
+SRC_URI[sha256sum] = "cf3b5ea00fd13b9d35f5a4ffec6fbd8cecc2c4039d09a79fb0e3f7fa48da9429"
+
-- 
2.4.4


