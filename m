Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AF07E00992; Mon, 22 May 2017 22:30:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF5C7E0080F
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 22:30:23 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4N5UMbD017393
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 22:30:22 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 22 May 2017 22:30:21 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 23 May 2017 13:30:18 +0800
Message-ID: <cover.1495517079.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH 0/2 v2] add new recipe for ecryptfs-utils and keyutils
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
X-List-Received-Date: Tue, 23 May 2017 05:30:24 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

v2 comments:
- add systemd support
- add PACKAGECONFIG for pam to fix the warning

--
The following changes since commit 43ae8fc27eb411e91285eb374f05682ca8bee055:

  packagegroup-security-tpm-i2c: fix syntax (2017-05-19 07:37:35 -0700)

are available in the git repository at:

  https://github.com/jackiehjm/meta-security.git jhuang0/r_up_ecryptfs_keyutils_170523_0
  https://github.com//tree/jhuang0/r_up_ecryptfs_keyutils_170523_0

Jackie Huang (2):
  keyutils: add new recipe
  ecryptfs-utils: add new recipe

 .../ecryptfs-utils/ecryptfs-utils_111.bb           | 64 +++++++++++++++++++++
 .../files/ecryptfs-utils-CVE-2016-6224.patch       | 65 ++++++++++++++++++++++
 .../ecryptfs-utils/files/ecryptfs.service          |  9 +++
 ...ix-error-report-by-adding-default-message.patch | 42 ++++++++++++++
 .../files/keyutils-test-fix-output-format.patch    | 41 ++++++++++++++
 .../keyutils-use-relative-path-for-link.patch      | 28 ++++++++++
 recipes-security/keyutils/files/run-ptest          |  3 +
 recipes-security/keyutils/keyutils_1.5.10.bb       | 45 +++++++++++++++
 8 files changed, 297 insertions(+)
 create mode 100644 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
 create mode 100644 recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
 create mode 100644 recipes-security/ecryptfs-utils/files/ecryptfs.service
 create mode 100644 recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
 create mode 100644 recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
 create mode 100644 recipes-security/keyutils/files/keyutils-use-relative-path-for-link.patch
 create mode 100755 recipes-security/keyutils/files/run-ptest
 create mode 100644 recipes-security/keyutils/keyutils_1.5.10.bb

-- 
2.11.0


