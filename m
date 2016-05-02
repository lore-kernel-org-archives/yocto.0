Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDEAE00CC8; Mon,  2 May 2016 16:51:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2364 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 May 2016 16:51:21 PDT
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFAC7E00CB0
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 16:51:21 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u42NBtfL019036; Mon, 2 May 2016 18:11:55 -0500
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016050218111912-579641 ;
	Mon, 2 May 2016 18:11:19 -0500 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org
Date: Mon, 2 May 2016 18:11:47 -0500
Message-Id: <1462230707-21773-1-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 05/02/2016 06:11:19 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 05/02/2016 06:11:19 PM,
	Serialize complete at 05/02/2016 06:11:19 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-05-02_15:, , signatures=0
Subject: [PATCH] opkg-build: return error if Version is missing
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
X-List-Received-Date: Mon, 02 May 2016 23:51:27 -0000

If Version is missing in a control file, opkg-build reports an error to
stdout, but returns 0. Fix condition on pkg_appears_sane to properly
return an error if Version is missing.

Suggested-by: Thomas de Schampheleire <patrickdepinguin@gmail.com>
Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 opkg-build | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/opkg-build b/opkg-build
index 82a0a51..ebbf5a3 100755
--- a/opkg-build
+++ b/opkg-build
@@ -86,8 +86,9 @@ You probably want to chown these to a system user: " >&2
 	pkg=`required_field Package`
 	[ "$?" -ne 0 ] && PKG_ERROR=1
 
-	version=`required_field Version | sed 's/Version://; s/^.://g;'`
+	version=`required_field Version`
 	[ "$?" -ne 0 ] && PKG_ERROR=1
+	version=`echo $version | sed 's/Version://; s/^.://g;'`
 
 	arch=`required_field Architecture`
 	[ "$?" -ne 0 ] && PKG_ERROR=1
-- 
1.9.1


