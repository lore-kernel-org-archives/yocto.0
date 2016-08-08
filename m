Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EC74E00CAC; Sun,  7 Aug 2016 20:33:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE885E00C7D
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2016 20:33:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u783XCJe020212
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 7 Aug 2016 20:33:12 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Sun, 7 Aug 2016 20:33:11 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Mon, 8 Aug 2016 10:33:20 +0800
Message-ID: <20160808023321.7604-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.2.368.g08bb350
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-virtualization][PATCH] Fix build error for arm
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
X-List-Received-Date: Mon, 08 Aug 2016 03:33:14 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

When build for qemuarm, it fails to do compile_ptest_base.

Kai Kang (1):
  libvirt: fix build error for arm

 .../0001-nsslinktest-also-build-virAtomic.h.patch  | 40 ++++++++++++++++++++++
 recipes-extended/libvirt/libvirt_1.3.5.bb          |  1 +
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-extended/libvirt/libvirt/0001-nsslinktest-also-build-virAtomic.h.patch

-- 
2.9.2.368.g08bb350


