Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32115E00C7B; Tue, 24 Oct 2017 02:27:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166CCE00B67
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:27:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v9O9ReUc014974
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:27:40 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 24 Oct 2017 02:27:38 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 24 Oct 2017 17:11:56 +0800
Message-ID: <20171024091156.16543-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] recipes-perl: correct license for perl modules
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
X-List-Received-Date: Tue, 24 Oct 2017 09:27:43 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Correct LICENSE of perl modules that 'GPLv2' is not right for them.

libsocket6-perl is licensed with BSD accoring to README file. And other
4 modules libhtml-tagset-perl, libmailtools-perl, libtest-pod-perl and
libwww-perl are licensed with same terms of Perl itself according to
their README files too.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb | 6 +++---
 meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb   | 6 +++---
 meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb     | 6 +++---
 meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb    | 6 +++---
 meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb         | 6 +++---
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb b/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
index 2924553..96477f6 100644
--- a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
+++ b/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
@@ -1,9 +1,9 @@
 DESCRIPTION = "HTML Tagset bits."
 HOMEPAGE = "http://search.cpan.org/dist/HTML-Tagset/"
 SECTION = "libs"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
-PR = "r3"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+LIC_FILES_CHKSUM = "file://README;beginline=60;md5=16ddda2d845a5546f615e6b122d1dbad"
+PR = "r4"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/P/PE/PETDANCE/HTML-Tagset-${PV}.tar.gz"
 
diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
index 5a9ef84..e2d2be0 100644
--- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
+++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
@@ -1,8 +1,8 @@
 DESCRIPTION = "MailTools is a set of Perl modules related to mail applications"
 HOMEPAGE = "http://search.cpan.org/dist/MailTools/"
 SECTION = "libs"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+LIC_FILES_CHKSUM = "file://lib/Mail/Mailer.pod;beginline=144;md5=93c9027e72612b3555f857c4fc17b953"
 DEPENDS = " \
 	libtest-pod-perl-native \
 	libtimedate-perl-native \
@@ -15,7 +15,7 @@ RDEPENDS_${PN} += " \
 	perl-module-test-more \
 	"
 BBCLASSEXTEND = "native"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MA/MARKOV/MailTools-${PV}.tar.gz"
 SRC_URI[md5sum] = "972468ab5207b90398d77bed4ffc361d"
diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb
index 98f8c48..5ab0f4a 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb
@@ -1,9 +1,9 @@
 DESCRIPTION = "Perl extensions for IPv6"
 HOMEPAGE = "https://metacpan.org/release/Socket6"
 SECTION = "libs"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
-PR = "r1"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://README;beginline=31;md5=ad207d410de6d8ca6b4655469baa1ab4"
+PR = "r2"
 
 BBCLASSEXTEND = "native"
 
diff --git a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
index 7586725..96e1078 100644
--- a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
+++ b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Test::Pod - check for POD errors in files"
 SECTION = "libs"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+LIC_FILES_CHKSUM = "file://README;beginline=26;md5=ea81140c3f3b2937c6490fc732471cd0"
 HOMEPAGE = "https://github.com/perl-pod/test-pod/"
 BBCLASSEXTEND = "native"
 RDEPENDS_${PN} += " perl-module-test-more \
@@ -9,7 +9,7 @@ RDEPENDS_${PN} += " perl-module-test-more \
                     perl-module-pod-simple \
                     perl-module-test-builder-tester \
                     "
-PR = "r1"
+PR = "r2"
 
 SRC_URI ="http://search.cpan.org/CPAN/authors/id/E/ET/ETHER/Test-Pod-${PV}.tar.gz;name=test-pod-perl-${PV}"
 SRC_URI[test-pod-perl-1.51.md5sum] = "f806aa84de2f0c0fba48b3a5a8a4aecf"
diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
index 4d17b3a..9ac86b1 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
@@ -1,8 +1,8 @@
 DESCRIPTION = "libwww-perl provides a simple and consistent API to the World Wide Web"
 HOMEPAGE = "http://search.cpan.org/dist/libwww-perl/"
 SECTION = "libs"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+LIC_FILES_CHKSUM = "file://README;beginline=92;endline=98;md5=3da13bc02f8f17ed35ac5d192cae6fe4"
 DEPENDS = "liburi-perl-native libhtml-parser-perl-native libhtml-tagset-perl-native"
 RDEPENDS_${PN} += " \
 	libhtml-parser-perl \
@@ -13,7 +13,7 @@ RDEPENDS_${PN} += " \
 	"
 BBCLASSEXTEND = "native"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
 SRC_URI[libwww-perl-6.05.md5sum] = "637d5f1eb61336ca2caa6e026b382f87"
-- 
2.14.1


