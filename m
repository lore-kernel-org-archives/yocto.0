Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 767C7E00D25; Fri, 10 Aug 2018 01:10:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BE55E00D05
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7A8AnD7001231
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:49 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:48 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:10:01 +0800
Message-ID: <1533888603-57726-5-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] libwww-perl: 6.05 -> 6.35
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
X-List-Received-Date: Fri, 10 Aug 2018 08:10:53 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

License-Update: license file change from README to LICENSE

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../perl/{libwww-perl_6.05.bb => libwww-perl_6.35.bb}          | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libwww-perl_6.05.bb => libwww-perl_6.35.bb} (50%)

diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb
similarity index 50%
rename from meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
rename to meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb
index 21f9df4..b986b4e 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb
@@ -1,8 +1,8 @@
 DESCRIPTION = "libwww-perl provides a simple and consistent API to the World Wide Web"
-HOMEPAGE = "http://search.cpan.org/dist/libwww-perl/"
+HOMEPAGE = "https://metacpan.org/release/libwww-perl"
 SECTION = "libs"
 LICENSE = "Artistic-1.0 | GPL-1.0+"
-LIC_FILES_CHKSUM = "file://README;beginline=92;endline=98;md5=3da13bc02f8f17ed35ac5d192cae6fe4"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=225d44a95fa3addb1da6d91187ab189f"
 DEPENDS = "liburi-perl-native libhtml-parser-perl-native libhtml-tagset-perl-native"
 RDEPENDS_${PN} += " \
 	libhtml-parser-perl \
@@ -15,9 +15,9 @@ BBCLASSEXTEND = "native"
 
 PR = "r2"
 
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
-SRC_URI[libwww-perl-6.05.md5sum] = "637d5f1eb61336ca2caa6e026b382f87"
-SRC_URI[libwww-perl-6.05.sha256sum] = "7b25799ff7eec18e8e4e97dc0cad7b2a5b433b50b13feb59d9179173bee78f23"
+SRC_URI = "https://cpan.metacpan.org/authors/id/E/ET/ETHER/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
+SRC_URI[libwww-perl-6.35.md5sum] = "19cd0f55f61359c973caa9301ec405bd"
+SRC_URI[libwww-perl-6.35.sha256sum] = "dda2578d7b32152c4afce834761a61d117de286c705a9f7972c7ac6032ca5953"
 
 S = "${WORKDIR}/libwww-perl-${PV}"
 
-- 
2.7.4


