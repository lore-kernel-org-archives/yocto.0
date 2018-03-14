Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51230E010A1; Wed, 14 Mar 2018 01:13:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9596AE01078
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 01:13:44 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2E8Dh5L015803
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 01:13:43 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 14 Mar 2018 01:13:02 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2018 16:10:44 +0800
Message-ID: <20180314081044.10988-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] recipes-perl: don't set PACKAGE_ARCH = "all"
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
X-List-Received-Date: Wed, 14 Mar 2018 08:13:45 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* The allarch bbclass should be used instead of setting PACKAGE_ARCH = "all"
  according to the commit in oe-core:

  """
  commit 591fa7c1ab9e9ff75fdce602c77ecdeda3a255d9
  Author: Richard Purdie <richard.purdie@linuxfoundation.org>
  Date:   Sun Nov 25 20:23:42 2012 +0000

      packagegroup/allarch: Convert to use allarch class

      Currently there is some odd behaviour of the packagegroup class in relation
      to sstate since it sets PACKAGE_ARCH = "all" but does not use the allarch class
      leading to it being undetected by sstate.

      Previously it was not possible to use allarch as the recipe couldn't "undo"
      settings made by the allarch class. Since this no longer happens when
      PACKAGE_ARCH != all, we can use the allarch class.

      This patch also fixes up one case we need to preserve TRANSLATED_TARGET_ARCH
      and ensures sstate only assumes allarch when PACKAGE_ARCH is "all".

      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
  """

  Or it fails since the menifest file names mismatch.

* These packages are not all arch just like other perl libraries,
  so just remove the setting PACKAGE_ARCH = "all".

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb | 2 --
 meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb   | 2 --
 meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb    | 2 --
 meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb         | 2 --
 4 files changed, 8 deletions(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb b/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
index 96477f6..2765cd2 100644
--- a/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
+++ b/meta-cgl-common/recipes-perl/perl/libhtml-tagset-perl_3.20.bb
@@ -13,7 +13,5 @@ inherit cpan
 
 BBCLASSEXTEND="native"
 
-PACKAGE_ARCH = "all"
-
 SRC_URI[md5sum] = "d2bfa18fe1904df7f683e96611e87437"
 SRC_URI[sha256sum] = "adb17dac9e36cd011f5243881c9739417fd102fce760f8de4e9be4c7131108e2"
diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
index e2d2be0..07128e0 100644
--- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
+++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
@@ -24,5 +24,3 @@ SRC_URI[sha256sum] = "dfee9e770257371112f20d978e637759e81bc4f19e97b083585c71ecab
 S = "${WORKDIR}/MailTools-${PV}"
 
 inherit cpan
-
-PACKAGE_ARCH = "all"
diff --git a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
index 96e1078..230576f 100644
--- a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
+++ b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
@@ -17,5 +17,3 @@ SRC_URI[test-pod-perl-1.51.sha256sum] = "c1a1d3cedf4a579e3aad89c36f9878a8542b665
 S = "${WORKDIR}/Test-Pod-${PV}"
 
 inherit cpan
-
-PACKAGE_ARCH = "all"
diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
index 9ac86b1..21f9df4 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
@@ -22,5 +22,3 @@ SRC_URI[libwww-perl-6.05.sha256sum] = "7b25799ff7eec18e8e4e97dc0cad7b2a5b433b50b
 S = "${WORKDIR}/libwww-perl-${PV}"
 
 inherit cpan
-
-PACKAGE_ARCH = "all"
-- 
2.7.4


