Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 551F0E00CF9; Thu, 27 Jul 2017 19:01:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C9EE00CC1
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v6S21KwN021435
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:21 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:01:20 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:00:55 +0800
Message-ID: <cover.1501207115.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH 0/2] libmhash and libgssglue: add new recipe
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
X-List-Received-Date: Fri, 28 Jul 2017 02:01:23 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

---
The following changes since commit 89683b4fee4616a08d249bc7afd7be55f3fa71a3:

  apparmor: fix python packaging issue (2017-06-01 08:01:34 -0700)

are available in the git repository at:

  https://github.com/jackiehjm/meta-security.git jhuang0/r_up_libmhash_libgssglue_170728_1
  https://github.com//tree/jhuang0/r_up_libmhash_libgssglue_170728_1

Jackie Huang (2):
  libgssglue: add new recipe
  libmhash: add new recipe

 .../libgssglue/files/libgssglue-canon-name.patch   | 60 ++++++++++++++++++++++
 .../files/libgssglue-fix-CVE-2011-2709.patch       | 43 ++++++++++++++++
 .../libgssglue/files/libgssglue-g-initialize.patch | 21 ++++++++
 .../libgssglue/files/libgssglue-gss-inq-cred.patch | 27 ++++++++++
 .../libgssglue/files/libgssglue-mglueP.patch       | 21 ++++++++
 recipes-security/libgssglue/libgssglue_0.4.bb      | 51 ++++++++++++++++++
 recipes-security/libmhash/files/Makefile.test      | 13 +++++
 recipes-security/libmhash/files/mhash.c            | 32 ++++++++++++
 recipes-security/libmhash/files/run-ptest          | 12 +++++
 recipes-security/libmhash/libmhash_0.9.9.9.bb      | 37 +++++++++++++
 10 files changed, 317 insertions(+)
 create mode 100644 recipes-security/libgssglue/files/libgssglue-canon-name.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-g-initialize.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-mglueP.patch
 create mode 100644 recipes-security/libgssglue/libgssglue_0.4.bb
 create mode 100644 recipes-security/libmhash/files/Makefile.test
 create mode 100644 recipes-security/libmhash/files/mhash.c
 create mode 100644 recipes-security/libmhash/files/run-ptest
 create mode 100644 recipes-security/libmhash/libmhash_0.9.9.9.bb

-- 
2.11.0


