Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77A7DE00CC6; Fri, 25 Aug 2017 06:56:58 -0700 (PDT)
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
X-Greylist: delayed 2366 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Aug 2017 06:56:56 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DDCE00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 06:56:56 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v7PDGPtH014592; Fri, 25 Aug 2017 08:17:29 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2cjhc9j0a8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 25 Aug 2017 08:17:28 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com
	(us-aus-exhub1.ni.corp.natinst.com [130.164.68.41])
	by us-aus-skprod3.natinst.com (8.16.0.17/8.16.0.17) with ESMTPS id
	v7PDHSLE006225
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2017 08:17:28 -0500
Received: from us-aus-exch7.ni.corp.natinst.com (130.164.68.17) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 25 Aug 2017 08:17:27 -0500
Received: from us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) by
	us-aus-exch7.ni.corp.natinst.com (130.164.68.17) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 25 Aug 2017 08:17:27 -0500
Received: from adi-pc-linux.natinst.com (130.164.49.7) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Fri, 25 Aug 2017 08:17:27 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: <yocto@yoctoproject.org>
Date: Fri, 25 Aug 2017 16:17:26 +0300
Message-ID: <20170825131726.28345-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-08-25_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=4 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1708250195
Subject: [meta-qt4][PATCH RESEND][pyro] qt4-native: depend on icu-native to fix build on systems with icu <=58
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
X-List-Received-Date: Fri, 25 Aug 2017 13:56:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: Cody P Schafer <dev@codyps.com>

Previously, qt4-native would use the system icu to build.

Trying to build against a system ICU 59, however, fails with this root
error:

| In file included from /usr/include/unicode/uversion.h:30:0,
|                  from tools/qlocale_icu.cpp:46:
| /usr/include/unicode/umachine.h:347:13: error: ‘char16_t’ does not name a type; did you mean ‘wchar_t’?
|      typedef char16_t UChar;
|              ^~~~~~~~
|              wchar_t

May have to do with our use of `-std=gnu98++`.

Signed-off-by: Cody P Schafer <dev@codyps.com>
Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-qt4/qt4/qt4-native.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 5a873de..a14a647 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -1,5 +1,5 @@
 SUMMARY = "Qt version 4 tools and support files for the build host"
-DEPENDS = "zlib-native dbus-native"
+DEPENDS = "zlib-native dbus-native icu-native"
 SECTION = "libs"
 HOMEPAGE = "http://qt-project.org/"
 PROVIDES = "qt4-tools-native"
-- 
2.14.1


