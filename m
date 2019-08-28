Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99862E00DCE; Tue, 27 Aug 2019 22:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6421EE00D77
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 22:28:46 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46JDms3fXnz63
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 07:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1566970125;
	bh=p8ZLkaT7Sm8hxFPaKHRGzl9mFXAiQiOhbRl7cKUtUn0=;
	h=From:To:Subject:Date:From;
	b=DM+gbAktUGc3YPHEHtg2z1rfmNF5GRFv5VqqDhD+up3WXk5fdimJ1aPHA22wwM7D0
	Be6E4x9jwJfZKDqyrMUVoilh+2fLKgJH2PbxyMzp/6mB1qdvyYFC480t3m61UtUND+
	bCXWPeGLzyaU+qNPuzQNicTwCC5Z+LkOOyvs3IWnc4/KDvdxrkJrau7SmShwUtqJVq
	CsMOpHmaR+cr6czmP0FA8w58vw7OcLIWdP7vY4bKB5ZMOICBlOarmGpOp4s5tHxTLC
	3Fva0q7yxSqz+8q8SG3zOOYAaNQs/xvK5X7R6Y3Tvn3KA64Scz7/8AvPH4F2VRkR90
	VcDrMG6uo8sz9bs8Oe4OaLTx6I+VAy7fxJEaup2JEFhuWUnfyWVMIgzJy8/vRzULDD
	GVJjOVNRIOdsLNOyyWUGEdRSzxJbJ1BzCMlM0/l8/oYhqxsWFcHrg851A1iw7nxf71
	2ztqtBXvT7gtmxeTcgRx8TIuDYEEzbHg+F2+1dRZd25kV7sEP2rlaAOVK6l7nkfA+v
	68PhtSpNXG0ykCl4TmvR/7wbfVB6APlUDatd0WOCL1Jw5lWE82qCoV7W5QOBDRBdpH
	XjXkHVqJEPj7MMvn73UJ2tTJSGMUx6nvnlNF0D656bdWBFQflFcjHu3vh1Waz6I1jl
	jPQ9m9W//ur5uWiHj5S9KfqU=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 28 Aug 2019 08:28:44 +0300
Message-Id: <20190828052844.2557-2-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] libenv-perl: Remove, moved to meta-perl
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
X-List-Received-Date: Wed, 28 Aug 2019 05:28:47 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 conf/distro/include/maintainers.inc   |  1 -
 recipes-perl/perl/libenv-perl_1.04.bb | 21 ---------------------
 2 files changed, 22 deletions(-)
 delete mode 100644 recipes-perl/perl/libenv-perl_1.04.bb

diff --git a/conf/distro/include/maintainers.inc b/conf/distro/include/maintainers.inc
index 47f5317..7b82ef7 100644
--- a/conf/distro/include/maintainers.inc
+++ b/conf/distro/include/maintainers.inc
@@ -35,7 +35,6 @@ RECIPE_MAINTAINER_pn-hash-perl = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-isic = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-keyutils = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-libaes-siv = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libenv-perl = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-libgssglue = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-libhtp = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-libmhash = "Armin Kuster <akuster808@gmail.com>"
diff --git a/recipes-perl/perl/libenv-perl_1.04.bb b/recipes-perl/perl/libenv-perl_1.04.bb
deleted file mode 100644
index dd8e115..0000000
--- a/recipes-perl/perl/libenv-perl_1.04.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-SUMMARY = "Perl module that imports environment variables as scalars or arrays"
-DESCRIPTION = "Perl maintains environment variables in a special hash named %ENV. \
-For when this access method is inconvenient, the Perl module Env allows environment \
-variables to be treated as scalar or array variables."
-
-HOMEPAGE = "http://search.cpan.org/~flora/Env/"
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=76c1cbf18db56b3340d91cb947943bd3"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "fdba5c0690e66972c96fee112cf5f25c"
-SRC_URI[sha256sum] = "d94a3d412df246afdc31a2199cbd8ae915167a3f4684f7b7014ce1200251ebb0"
-
-S = "${WORKDIR}/Env-${PV}"
-
-inherit cpan
-
-BBCLASSEXTEND = "native"
-- 
2.17.1


