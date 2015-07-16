Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FFE0E00A1A; Wed, 15 Jul 2015 18:29:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA04E00978
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 18:29:29 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6G1TRG4003983; Wed, 15 Jul 2015 20:29:27 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071520292706-1263331 ;
	Wed, 15 Jul 2015 20:29:27 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Wed, 15 Jul 2015 20:29:24 -0500
Message-Id: <521dd5d50420b42a4321fc0d9a141ca8be3da54a.1437009521.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 3/3] libgdiplus: add jpeg, tiff, giflib, libexif dependencies
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

These dependencies were found in package QA.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/libgdiplus/libgdiplus_2.10.8.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
index 8901451..fecf7dc 100644
--- a/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
+++ b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
@@ -14,7 +14,7 @@ SRC_URI = "https://github.com/mono/libgdiplus/archive/${PV}.tar.gz \
 
 inherit autotools pkgconfig
 
-DEPENDS =+ "cairo freetype fontconfig libxft libpng"
+DEPENDS =+ "cairo freetype fontconfig libxft libpng jpeg tiff giflib libexif"
 
 SRC_URI[md5sum] = "6fd45bbb9843f5a8851b5f44e2a5dd04"
 SRC_URI[sha256sum] = "45c533dc72af0a24d1d3a8097873f5fe1670107fe7e6d08fb71ae586c87a0f1d"
-- 
2.4.4


