Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB44E00E63; Fri, 27 May 2016 14:26:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04E85E00DD3
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 14:26:46 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u4RLQj8Z021706; Fri, 27 May 2016 16:26:45 -0500
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016052716264568-623896 ;
	Fri, 27 May 2016 16:26:45 -0500 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Date: Fri, 27 May 2016 16:26:43 -0500
Message-Id: <1464384403-1504-3-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1464384403-1504-1-git-send-email-alejandro.delcastillo@ni.com>
References: <1464384403-1504-1-git-send-email-alejandro.delcastillo@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize complete at 05/27/2016 04:26:45 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-05-27_12:, , signatures=0
Subject: [opkg-utils PATCH 2/2] opkg.py/write_packages_file: call __str__ instead of __repr__
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
X-List-Received-Date: Fri, 27 May 2016 21:26:49 -0000

Commit b9eec00a67f13ad9f9526caf591578b40d73a391 correctly renamed
__repr__to __str__. A call site in write_packages_file was missed.

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 opkg.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg.py b/opkg.py
index fe6b9e0..2acc469 100644
--- a/opkg.py
+++ b/opkg.py
@@ -533,7 +533,7 @@ class Packages(object):
         names = list(self.packages.keys())
         names.sort()
         for name in names:
-            f.write(self.packages[name].__repr__())
+            f.write(self.packages[name].__str__())
         return    
 
     def keys(self):
-- 
1.9.1


