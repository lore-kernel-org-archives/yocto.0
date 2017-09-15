Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53901E00A38; Fri, 15 Sep 2017 00:38:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC666E00851
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8F7cQG2005182
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:26 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 00:38:24 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 15:37:24 +0800
Message-ID: <cover.1505460823.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH 0/4] samhain: fix several issues
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
X-List-Received-Date: Fri, 15 Sep 2017 07:38:27 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

--
The following changes since commit b646d8fdc08f8aac896a09bda0e16bac39e87612:

  nmap: update to 7.60 (2017-09-13 07:36:44 -0700)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib.git jhuang0/d_samhain_170915_0
  http://git.pokylinux.org/cgit.cgi//log/?h=jhuang0/d_samhain_170915_0

Jackie Huang (4):
  samhain: depends on attr when selinux is enabled
  samhain: fix for the PACKAGECONFIG
  samhain: avoid searching host dir for postgresql
  samhain: fix QA issue for GNU_HASH

 ...n-add-LDFLAGS-variable-for-samhain_setpwd.patch |  28 +++++
 ...mhain-avoid-searching-host-for-postgresql.patch | 134 +++++++++++++++++++++
 recipes-security/samhain/samhain.inc               |  28 +++--
 3 files changed, 178 insertions(+), 12 deletions(-)
 create mode 100644 recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
 create mode 100644 recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch

-- 
2.11.0


