Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E25DE00A1E; Thu, 16 Jul 2015 10:22:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3311E009ED
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:22 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMKfJ027464; Thu, 16 Jul 2015 12:22:21 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612222066-1321620 ;
	Thu, 16 Jul 2015 12:22:20 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:18 -0500
Message-Id: <64683adf7cf9470d9487788b8488c01f83bdc18a.1437067107.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 2/4] mono-xsp-3.x.inc: updating SRC_URI and LIC_FILES_CHKSUM
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
 recipes-mono/mono-xsp/mono-xsp-3.x.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-mono/mono-xsp/mono-xsp-3.x.inc b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
index add1199..ffe0a28 100644
--- a/recipes-mono/mono-xsp/mono-xsp-3.x.inc
+++ b/recipes-mono/mono-xsp/mono-xsp-3.x.inc
@@ -3,11 +3,11 @@ SECTION = "devel/mono"
 DEPENDS = "mono"
 RDEPENDS_${PN} = "mono"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=84b17f6d63c3c28399d0f3786831d40c"
+LIC_FILES_CHKSUM = "file://COPYING;md5=9e1603e27acd337015fdfa7f7ff936c7"
 
 inherit autotools-brokensep
 
-SRC_URI = "http://download.mono-project.com/sources/xsp/xsp-${PV}.tar.bz2"
+SRC_URI = "https://github.com/mono/xsp/archive/${PV}.tar.gz"
 
 S = "${WORKDIR}/xsp-${PV}"
 
-- 
2.4.4


