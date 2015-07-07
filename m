Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C43FE00957; Tue,  7 Jul 2015 13:17:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3282DE006C6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:17:39 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t67KHYaU003927; Tue, 7 Jul 2015 15:17:35 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015070715173486-736966 ;
	Tue, 7 Jul 2015 15:17:34 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: chmorgan@gmail.com
Date: Tue, 7 Jul 2015 15:17:02 -0500
Message-Id: <1436300222-15947-1-git-send-email-rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
References: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/07/2015 03:17:34 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/07/2015 03:17:35 PM,
	Serialize complete at 07/07/2015 03:17:35 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-07_07:, , signatures=0
Cc: yocto@yoctoproject.org
Subject: [PATCH] mono-4.xx.inc: disable parallel make
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
X-List-Received-Date: Tue, 07 Jul 2015 20:17:43 -0000

A race was observed during `make install` of mono-native under
PARALLEL_MAKE=-j6:

/usr/bin/install: cannot change permissions of
build/tmp-glibc/work/x86_64-linux/mono-native/4.0.2.4-r0/image/
build/tmp-glibc/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/
.NETFramework/v4.5/RedistList/FrameworkList.xml: No such file or
directory

This is definitely a race, because FrameworkList.xml was present once
the failed build completed.

The present mono build doesn't appear to build much of anything in
parallel in the first place, and I would guess that this issue applies
equally to the mono and mono-native builds. So the correct place for the
workaround ought to be in the shared .inc file.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono/mono-4.xx.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 2d7f65d..973593a 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -68,3 +68,6 @@ FILES_${PN}-dbg 			+= " ${datadir}/mono-2.0/mono/cil/cil-opcodes.xml ${libdir}/m
 FILES_${PN}-staticdev 			+= " ${libdir}/*.a"
 
 RDEPENDS_${PN} =+ "bash" 
+
+# Workaround for observed race in `make install`
+PARALLEL_MAKE=""
-- 
2.4.4


