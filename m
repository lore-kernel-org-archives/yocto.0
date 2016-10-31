Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A50C8E00D18; Mon, 31 Oct 2016 07:08:36 -0700 (PDT)
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
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E53E009D8
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:08:34 -0700 (PDT)
Received: from us-aus-exch2.ni.corp.natinst.com
	(us-aus-exch2.ni.corp.natinst.com [130.164.68.12])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTPS id
	u9VE8Uu3019596
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 31 Oct 2016 09:08:30 -0500
Received: from us-aus-exch3.ni.corp.natinst.com (130.164.68.13) by
	us-aus-exch2.ni.corp.natinst.com (130.164.68.12) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 31 Oct 2016 09:08:30 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch3.ni.corp.natinst.com (130.164.68.13) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 31 Oct 2016 09:08:29 -0500
Received: from us-aus-mgwout1.amer.corp.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Mon, 31 Oct 2016 09:08:29 -0500
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016103109082068-115262 ;
	Mon, 31 Oct 2016 09:08:20 -0500 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: <joe_macdonald@mentor.com>, <mark.hatle@windriver.com>
Date: Mon, 31 Oct 2016 16:06:53 +0200
Message-ID: <20161031140653.14408-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.10.2
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 10/31/2016 09:08:20 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 10/31/2016 09:08:20 AM,
	Serialize complete at 10/31/2016 09:08:20 AM
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-10-31_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1609300000
	definitions=main-1610310257
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH RESEND] libpcre_%.bbappend: add missing symlink libpcre.so.1
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
X-List-Received-Date: Mon, 31 Oct 2016 14:08:36 -0000
Content-Type: text/plain

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
2.10.2


