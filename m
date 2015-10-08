Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04723E00ED1; Wed,  7 Oct 2015 22:23:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADB25E0095C
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 22:23:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t985NRXC002658
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 Oct 2015 22:23:27 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 7 Oct 2015 22:23:27 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 8 Oct 2015 01:23:24 -0400
Message-ID: <cover.1444281567.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 0/2][meta-selinux] remove packages: libcap-ng, swig
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
X-List-Received-Date: Thu, 08 Oct 2015 05:23:30 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

They have been added to oe-core.

The following changes since commit 463f97bfd1180475540b7d91e3fec6a2b33966bd:

  audit/auvirt: get inline functions work with both gnu89 & gnu11 (2015-09-21 10:42:27 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/libcap
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/libcap

Wenzong Fan (2):
  libcap-ng: remove package
  swig: remove package

 recipes-devtools/swig/swig.inc                     | 59 ------------------
 ...lf-exe-for-swig-swiglib-on-non-Win32-plat.patch | 69 ----------------------
 ...nfigure-use-pkg-config-for-pcre-detection.patch | 65 --------------------
 recipes-devtools/swig/swig_2.0.10.bb               | 11 ----
 recipes-security/libcap-ng/libcap-ng/python.patch  | 58 ------------------
 recipes-security/libcap-ng/libcap-ng_0.7.7.bb      | 40 -------------
 6 files changed, 302 deletions(-)
 delete mode 100644 recipes-devtools/swig/swig.inc
 delete mode 100644 recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch
 delete mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
 delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
 delete mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch
 delete mode 100644 recipes-security/libcap-ng/libcap-ng_0.7.7.bb

-- 
1.9.1


