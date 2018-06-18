Return-Path: <prvs=5707ad1902=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD765E00CC8; Mon, 18 Jun 2018 06:58:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CC0E00CC8
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 06:58:28 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w5IDuIML002225; Mon, 18 Jun 2018 08:58:25 -0500
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by mx0a-00010702.pphosted.com with ESMTP id 2jn02qnh29-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 18 Jun 2018 08:58:25 -0500
Received: from us-aus-exch1.ni.corp.natinst.com
	(us-aus-exch1.ni.corp.natinst.com [130.164.68.11])
	by us-aus-skprod2.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w5IDwO3f018268
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 18 Jun 2018 08:58:24 -0500
Received: from us-aus-exch3.ni.corp.natinst.com (130.164.68.13) by
	us-aus-exch1.ni.corp.natinst.com (130.164.68.11) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 18 Jun 2018 08:58:24 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch3.ni.corp.natinst.com (130.164.68.13) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 18 Jun 2018 08:58:23 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Mon, 18 Jun 2018 08:58:22 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Joe MacDonald <joe_macdonald@mentor.com>, Philip Tricca <flihp@twobit.us>, 
	Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 18 Jun 2018 16:59:43 +0300
Message-ID: <20180618135943.28896-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-06-18_05:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Cc: yocto@yoctoproject.org, Bill Pittman <bill.pittman@ni.com>
Subject: [meta-selinux][PATCH] libsemanage.inc: add libsemanage-utils package
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
X-List-Received-Date: Mon, 18 Jun 2018 13:58:29 -0000
Content-Type: text/plain

From: Bill Pittman <bill.pittman@ni.com>

Making the package more granular by moving the python script
into its own package and moving the python dependency from
the top level package to the libsemanage-utils package.

Signed-off-by: Bill Pittman <bill.pittman@ni.com>
---
 recipes-security/selinux/libsemanage.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 9b238c8..e7ca318 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -12,9 +12,11 @@ DEPENDS += "libsepol libselinux bzip2 python bison-native flex-native swig-nativ
 DEPENDS_append_class-target += "audit"
 
 # For /usr/libexec/selinux/semanage_migrate_store
-RDEPENDS_${PN} += "python"
+RDEPENDS_${PN}-utils += "python"
 
 PACKAGES += "${PN}-python"
+PACKAGES_prepend = " ${PN}-utils "
+FILES_${PN}-utils = "${libexecdir}/*"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
 
-- 
2.17.1


