Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25EAFE00DEC; Fri,  3 Jun 2016 14:51:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1339E00BE7
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 14:51:21 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u53LpKiL017976; Fri, 3 Jun 2016 16:51:20 -0500
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016060316511991-493781 ;
	Fri, 3 Jun 2016 16:51:19 -0500 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org
Date: Fri, 3 Jun 2016 16:51:18 -0500
Message-Id: <1464990678-28527-1-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 06/03/2016 04:51:20 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 06/03/2016 04:51:20 PM,
	Serialize complete at 06/03/2016 04:51:20 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-06-03_11:, , signatures=0
Subject: [opkg-utils PATCH] arfile.py: remove dependency on python-future
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
X-List-Received-Date: Fri, 03 Jun 2016 21:51:23 -0000

Python-future provides a python2 compatible object class (provides next
method). Since method is not used, remove dependency.

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 arfile.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arfile.py b/arfile.py
index 4bab526..1c42bc7 100644
--- a/arfile.py
+++ b/arfile.py
@@ -7,7 +7,6 @@ of GNU General Public License v2 or later.
 """
 from __future__ import absolute_import
 from __future__ import print_function
-from builtins import object
 import sys
 import os
 import tarfile 
-- 
1.9.1


