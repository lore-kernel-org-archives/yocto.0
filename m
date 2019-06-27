Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB73BE00D75; Wed, 26 Jun 2019 17:40:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F04FE00D68
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 17:40:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5R0dH5d027849
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2019 17:39:43 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 26 Jun 2019 17:39:40 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<alexandru.vaduva@linux.com>
Date: Thu, 27 Jun 2019 08:39:01 +0800
Message-ID: <1561595941-25137-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
References: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-cgl][PATCH 3/3] libhtml-tagset-perl: remove recipe
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
X-List-Received-Date: Thu, 27 Jun 2019 00:40:23 -0000
Content-Type: text/plain

The libhtml-tagset-perl recipe was added to meta-perl layer with commit:
4058e65f3c4e17ad04423f4c9edf8607fe6fdb4f
We can drop this duplicate recipe.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-perl/perl/libhtml-tagset-perl_3.20.bb       | 17 -----------------
 1 file changed, 17 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb

diff --git a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb b/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
deleted file mode 100644
index 2765cd2..0000000
--- a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-DESCRIPTION = "HTML Tagset bits."
-HOMEPAGE = "http://search.cpan.org/dist/HTML-Tagset/"
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-LIC_FILES_CHKSUM = "file://README;beginline=60;md5=16ddda2d845a5546f615e6b122d1dbad"
-PR = "r4"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/P/PE/PETDANCE/HTML-Tagset-${PV}.tar.gz"
-
-S = "${WORKDIR}/HTML-Tagset-${PV}"
-
-inherit cpan
-
-BBCLASSEXTEND="native"
-
-SRC_URI[md5sum] = "d2bfa18fe1904df7f683e96611e87437"
-SRC_URI[sha256sum] = "adb17dac9e36cd011f5243881c9739417fd102fce760f8de4e9be4c7131108e2"
-- 
2.7.4


