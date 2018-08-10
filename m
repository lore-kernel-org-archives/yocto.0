Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8982BE00AD1; Fri, 10 Aug 2018 01:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1288E00708
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:25 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7A8APJ3001121
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:25 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:24 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:09:58 +0800
Message-ID: <1533888603-57726-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] libmailtools-perl: 2.18 -> 2.20
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
X-List-Received-Date: Fri, 10 Aug 2018 08:10:26 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

License-Update: copyright year update

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../perl/{libmailtools-perl_2.18.bb => libmailtools-perl_2.20.bb}   | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libmailtools-perl_2.18.bb => libmailtools-perl_2.20.bb} (78%)

diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb
similarity index 78%
rename from meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
rename to meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb
index 07128e0..dec7979 100644
--- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
+++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.20.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "MailTools is a set of Perl modules related to mail applications"
 HOMEPAGE = "http://search.cpan.org/dist/MailTools/"
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-LIC_FILES_CHKSUM = "file://lib/Mail/Mailer.pod;beginline=144;md5=93c9027e72612b3555f857c4fc17b953"
+LIC_FILES_CHKSUM = "file://lib/Mail/Mailer.pod;beginline=144;md5=641bd171b1aaabba1fc83ac0a98a2d30"
 DEPENDS = " \
 	libtest-pod-perl-native \
 	libtimedate-perl-native \
@@ -18,8 +18,8 @@ BBCLASSEXTEND = "native"
 PR = "r2"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MA/MARKOV/MailTools-${PV}.tar.gz"
-SRC_URI[md5sum] = "972468ab5207b90398d77bed4ffc361d"
-SRC_URI[sha256sum] = "dfee9e770257371112f20d978e637759e81bc4f19e97b083585c71ecab37b527"
+SRC_URI[md5sum] = "53e9d35256c3fd7cef0e4a24b15e9512"
+SRC_URI[sha256sum] = "f55606f7a9cc342ee9d5f996e2b6a4c0047e2ee47cd88c3250ecf0d0c5fb3196"
 
 S = "${WORKDIR}/MailTools-${PV}"
 
-- 
2.7.4


