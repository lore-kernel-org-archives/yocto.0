Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A993E00D9B; Mon,  2 Sep 2019 02:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670E1E00890
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 02:39:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x829d0YE012803
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Sep 2019 02:39:15 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 2 Sep 2019 02:38:55 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 2 Sep 2019 17:38:52 +0800
Message-ID: <1567417134-282605-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] libwww-perl: 6.35 -> 6.36
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
X-List-Received-Date: Mon, 02 Sep 2019 09:39:27 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../recipes-perl/perl/{libwww-perl_6.35.bb => libwww-perl_6.36.bb}    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libwww-perl_6.35.bb => libwww-perl_6.36.bb} (79%)

diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb
similarity index 79%
rename from meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb
rename to meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb
index b986b4e..816f4f8 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.35.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb
@@ -16,8 +16,8 @@ BBCLASSEXTEND = "native"
 PR = "r2"
 
 SRC_URI = "https://cpan.metacpan.org/authors/id/E/ET/ETHER/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
-SRC_URI[libwww-perl-6.35.md5sum] = "19cd0f55f61359c973caa9301ec405bd"
-SRC_URI[libwww-perl-6.35.sha256sum] = "dda2578d7b32152c4afce834761a61d117de286c705a9f7972c7ac6032ca5953"
+SRC_URI[libwww-perl-6.36.md5sum] = "20062717e4084d2f56d84c7ab4c91ec1"
+SRC_URI[libwww-perl-6.36.sha256sum] = "75c034ab4b37f4b9506dc644300697505582cf9545bcf2e2079e7263f675290a"
 
 S = "${WORKDIR}/libwww-perl-${PV}"
 
-- 
2.7.4


