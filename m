Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12B18E009F0; Thu, 16 Jul 2015 10:22:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F11E009ED
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:12 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHMApv027088; Thu, 16 Jul 2015 12:22:10 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612221045-1313667 ;
	Thu, 16 Jul 2015 12:22:10 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:22:09 -0500
Message-Id: <dc0bb61d776f3da67c5515520d8d05d94cf743ce.1437067054.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 3/3] fsharp.inc: refactor FILES_*
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

fsharp was failing the 'debug-deps' QA test, i.e. fsharp depended on
fsharp-dbg because fsharp's file list included files that properly
belong to fsharp-dbg. Fix this by being more explicit about the types of
files that ship in fsharp vs fsharp-dbg.

Generalize file patterns as appropriate to make file lists more concise
and robust; i.e. replace mono/4.0/*, mono/2.0/* with mono/*/*.

Move .xml (machine-readable assembly docs), .rsp, .Targets, etc. into
fsharp-dev.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/fsharp/fsharp.inc | 52 +++++++++++++-----------------------------
 1 file changed, 16 insertions(+), 36 deletions(-)

diff --git a/recipes-mono/fsharp/fsharp.inc b/recipes-mono/fsharp/fsharp.inc
index acb17ce..25c41b6 100644
--- a/recipes-mono/fsharp/fsharp.inc
+++ b/recipes-mono/fsharp/fsharp.inc
@@ -12,45 +12,25 @@ inherit autotools-brokensep
 SRC_URI = "https://github.com/fsharp/fsharp/archive/${PV}.tar.gz"
 
 FILES_${PN} += "\
-  ${libdir}/mono/* \  
-  ${libdir}/mono/4.0/* \
-  ${libdir}/mono/2.0/* \
-  ${libdir}/mono/xbuild/Microsoft/VisualStudio/* \
-  ${libdir}/mono/Microsoft F#/v4.0/* \
-  ${libdir}/mono/Microsoft SDKs/F#/3.0/* \
-  ${libdir}/mono/Microsoft SDKs/F#/3.1/* \
-  ${libdir}/mono/gac/* \
-  ${libdir}/mono/gac/*/* \
-  ${libdir}/mono/gac/*/*/* \
-  ${libdir}/mono/monotouch/* \
-  ${libdir}/mono/monodroid/* \
+  ${libdir}/mono/*/*.exe \
+  ${libdir}/mono/*/*.dll \
+  ${libdir}/mono/*/*.config \
+  ${libdir}/mono/*/*.optdata \
+  ${libdir}/mono/*/*.sigdata \
+  ${libdir}/mono/gac/*/*/*.config \
+  ${libdir}/mono/gac/*/*/*.optdata \
+  ${libdir}/mono/gac/*/*/*.sigdata \
 "
 
 FILES_${PN}-dbg += "\
-  ${libdir}/mono/*.mdb \  
-  ${libdir}/mono/4.0/*.mdb \
-  ${libdir}/mono/4.0/*.optdata \
-  ${libdir}/mono/4.0/*.sigdatadata \
-  ${libdir}/mono/2.0/*.mdb \
-  ${libdir}/mono/2.0/*.optdata \
-  ${libdir}/mono/2.0/*.sigdata \
-  ${libdir}/mono/xbuild/Microsoft/VisualStudio/*.mdb \
-  ${libdir}/mono/Microsoft F#/v4.0/*.mdb \
-  ${libdir}/mono/Microsoft SDKs/F#/3.0/*.mdb \
-  ${libdir}/mono/Microsoft SDKs/F#/3.1/*.mdb \
-  ${libdir}/mono/gac/*.mdb \
-  ${libdir}/mono/gac/*/*.mdb \
   ${libdir}/mono/gac/*/*/*.mdb \
-  ${libdir}/mono/gac/*/*/*.xml \
-  ${libdir}/mono/gac/*/*/*.optdata \
-  ${libdir}/mono/gac/*/*/*.sigdata \
-  ${libdir}/mono/monotouch/*.mdb \
-  ${libdir}/mono/monotouch/*.xml \
-  ${libdir}/mono/monotouch/*.sigdata \
-  ${libdir}/mono/monotouch/*.optdata \
-  ${libdir}/mono/monodroid/*.mdb \
-  ${libdir}/mono/monodroid/*.xml \
-  ${libdir}/mono/monodroid/*.optdata \
-  ${libdir}/mono/monodroid/*.sigdata \
 "
 
+FILES_${PN}-dev = "\
+  ${libdir}/mono/xbuild/* \
+  ${libdir}/mono/xbuild-frameworks/* \
+  ${libdir}/mono/Microsoft* \
+  ${libdir}/mono/*/*.Targets \
+  ${libdir}/mono/*/*.xml \
+  ${libdir}/mono/gac/*/*/*.xml \
+"
-- 
2.4.4


