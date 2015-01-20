Return-Path: <Paul.Gortmaker@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9823EE00873; Tue, 20 Jan 2015 14:03:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AB5AE00860
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 14:03:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0KM37IO018154
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 14:03:07 -0800 (PST)
Received: from yow-pgortmak-d2.wrs.com (128.224.56.58) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 20 Jan 2015 14:03:06 -0800
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Jan 2015 17:03:02 -0500
Message-ID: <1421791382-30546-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.2.1
MIME-Version: 1.0
Subject: [PATCH] poky.conf: change case of Poky for DISTRO<->SANITY mismatch
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
X-List-Received-Date: Tue, 20 Jan 2015 22:03:17 -0000
Content-Type: text/plain

Using anything build appliance based will emit the warning:

 WARNING: Host distribution "poky-1.7" has not been validated with
 this version of the build system; you may possibly experience
 unexpected failures. It is recommended that you use a tested distribution.

The chain of events leading to this is:

1) At image creation time:

   meta-yocto/conf/distro/poky.conf:
	DISTRO = "poky"

   meta/recipes-extended/lsb/lsb_4.1.bb:
	echo "DISTRIB_ID=${DISTRO}" >> ${D}${sysconfdir}/lsb-release

2) At deployment/usage time of the created image:

   meta/lib/oe/lsb.py:
	output, err = bb.process.run(['lsb_release', '-ir'], stderr=PIPE)

   meta-yocto/conf/distro/poky.conf:
	SANITY_TESTED_DISTROS ?= " \
            Poky-1.6 \n \
            Poky-1.7 \n \
            [...]

   meta/classes/sanity.bbclass:
	distro = oe.lsb.distro_identifier()
	tested_distros = sanity_data.getVar('SANITY_TESTED_DISTROS', True)

and hence the lsb.distro gets the lower case "poky" which fails to
match the upper case "Poky" used in SANITY_TESTED_DISTROS.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 48a8cf5b7784..d3aed5243190 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -74,8 +74,8 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            Poky-1.6 \n \
-            Poky-1.7 \n \
+            poky-1.6 \n \
+            poky-1.7 \n \
             Ubuntu-12.04 \n \
             Ubuntu-14.04 \n \
             Ubuntu-14.10 \n \
-- 
2.2.1


