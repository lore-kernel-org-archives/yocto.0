Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97440E00A1A; Thu, 16 Jul 2015 10:22:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27506E009FD
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:22 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMLFP025046; Thu, 16 Jul 2015 12:22:21 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612222067-1321621 ;
	Thu, 16 Jul 2015 12:22:20 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:19 -0500
Message-Id: <312abbfde28aa049e48ca23a8f863c8814503c65.1437067107.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437067107.git.rich.tollerton@ni.com>
References: <cover.1437067107.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:22:20 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:22:20 PM,
	Serialize complete at 07/16/2015 12:22:20 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 3/4] mono-xsp_3.0.11.bb: add
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:24 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono-xsp/mono-xsp_3.0.11.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-mono/mono-xsp/mono-xsp_3.0.11.bb

diff --git a/recipes-mono/mono-xsp/mono-xsp_3.0.11.bb b/recipes-mono/mono-xsp/mono-xsp_3.0.11.bb
new file mode 100644
index 0000000..196ca32
--- /dev/null
+++ b/recipes-mono/mono-xsp/mono-xsp_3.0.11.bb
@@ -0,0 +1,5 @@
+require mono-xsp-3.x.inc
+
+SRC_URI[md5sum] = "6a694d5e87ebe57e532ec80a16b6966d"
+SRC_URI[sha256sum] = "290e302a03396c5cff7eb53dae008e9f79dd00aca15ad1e62865907220483baa"
+
-- 
2.4.4


