Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D31E009F3; Wed, 15 Jul 2015 18:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D257E009A7
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 18:29:29 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6G1TRG3003983; Wed, 15 Jul 2015 20:29:27 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071520292686-1263330 ;
	Wed, 15 Jul 2015 20:29:26 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Wed, 15 Jul 2015 20:29:23 -0500
Message-Id: <30bcb51e628f974b9d48a38878f3a4a9989ac8da.1437009521.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437009521.git.rich.tollerton@ni.com>
References: <cover.1437009521.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/15/2015 08:29:27 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/15/2015 08:29:27 PM,
	Serialize complete at 07/15/2015 08:29:27 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-15_07:, , signatures=0
Subject: [meta-mono] [PATCH 2/3] gtk-sharp-dev: add perl dependency
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
X-List-Received-Date: Thu, 16 Jul 2015 01:29:39 -0000

This package has perl scripts; make sure they're runnable.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/gtk-sharp/gtk-sharp.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-mono/gtk-sharp/gtk-sharp.inc b/recipes-mono/gtk-sharp/gtk-sharp.inc
index fe2b285..45d12b2 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp.inc
+++ b/recipes-mono/gtk-sharp/gtk-sharp.inc
@@ -4,6 +4,7 @@ SECTION = "devel/mono"
 BUGTRACKER = "http://bugzilla.xamarin.com"
 RDEPENDS_${PN} = "mono"
 LICENSE = "LGPL-2.1"
+RDEPENDS_${PN}-dev += "perl"
 
 inherit autotools
 
-- 
2.4.4


