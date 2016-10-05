Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 757C1E00C1C; Wed,  5 Oct 2016 06:49:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2956 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Oct 2016 06:49:32 PDT
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 100FAE00BFF
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 06:49:32 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u95CxwQH012076; Wed, 5 Oct 2016 07:59:58 -0500
Received: from adi-pc-linux.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016100507595798-618167 ;
	Wed, 5 Oct 2016 07:59:57 -0500 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: yocto@yoctoproject.org
Date: Wed, 5 Oct 2016 15:58:28 +0300
Message-Id: <20161005125828.25322-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.10.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 10/05/2016 07:59:58 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 10/05/2016 07:59:58 AM,
	Serialize complete at 10/05/2016 07:59:58 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-10-05_05:, , signatures=0
Subject: [meta-selinux][PATCH] libpcre_%.bbappend: add missing symlink libpcre.so.1
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
X-List-Received-Date: Wed, 05 Oct 2016 13:49:35 -0000

This bbappend moves sysroot lib libpcre.so.x.x.x from /usr/lib to /lib
and symlinks /usr/lib/libpcre.so to ../../lib/libpcre.so.x.x.x, but this
causes certain recipes dependent on libpcre (like pango) to fail because
they also expect libpcre.so.1 to exist which this recipe omits to create.

(the reason why the lib is moved in the first place is to avoid a QA issue
because there's a risk for /usr to be on another partition)

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-support/libpcre/libpcre_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-support/libpcre/libpcre_%.bbappend b/recipes-support/libpcre/libpcre_%.bbappend
index 9131f8d..ad18d61 100644
--- a/recipes-support/libpcre/libpcre_%.bbappend
+++ b/recipes-support/libpcre/libpcre_%.bbappend
@@ -7,6 +7,7 @@ do_install_append () {
 		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
 		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
 		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
+		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so.1
 	fi
 }
 
-- 
2.10.0


