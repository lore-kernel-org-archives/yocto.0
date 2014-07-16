Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B99AE0076A; Wed, 16 Jul 2014 12:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D07E00547
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 12:32:36 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.14.5/8.14.5) with ESMTP id
	s6GIwKgv025049; Wed, 16 Jul 2014 13:58:20 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6)
	with ESMTP id 2014071613582058-448926 ;
	Wed, 16 Jul 2014 13:58:20 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org
Date: Wed, 16 Jul 2014 13:58:03 -0500
Message-Id: <1405537085-9453-2-git-send-email-rich.tollerton@ni.com>
X-Mailer: git-send-email 2.0.1
In-Reply-To: <1405537085-9453-1-git-send-email-rich.tollerton@ni.com>
References: <1405537085-9453-1-git-send-email-rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 07/16/2014 01:58:20 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 07/16/2014 01:58:20 PM,
	Serialize complete at 07/16/2014 01:58:20 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-16_07:2014-07-16, 2014-07-16,
	1970-01-01 signatures=0
Cc: ben.shelton@ni.com, ken.sharp@ni.com
Subject: [meta-mingw][RESEND][PATCH 1/3] common-mingw: force ac_cv_func_mmap_fixed_mapped=no
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
X-List-Received-Date: Wed, 16 Jul 2014 19:32:39 -0000

The expat mingw build breaks because ix86-common defines
ac_cv_func_mmap_fixed_mapped=yes, causing the build to think that
mmap(), mman.h actually exist. Fix this by always forcing the variable
to "no", which configure would have concluded without such interference.

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 meta/site/common-mingw | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 meta/site/common-mingw

diff --git a/meta/site/common-mingw b/meta/site/common-mingw
new file mode 100644
index 0000000..f337c36
--- /dev/null
+++ b/meta/site/common-mingw
@@ -0,0 +1,2 @@
+# expat
+ac_cv_func_mmap_fixed_mapped=no
-- 
2.0.1


