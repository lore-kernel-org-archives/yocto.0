Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 715F2E00EA8; Thu,  4 Aug 2016 02:38:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE65E00E56
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 02:38:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u749c84p005791
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 4 Aug 2016 02:38:08 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Thu, 4 Aug 2016 02:38:07 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Thu, 4 Aug 2016 17:38:01 +0800
Message-ID: <20160804093802.10139-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.2.368.g08bb350
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-virtualization][PATCH] Upgrade libvirt to 1.3.5
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
X-List-Received-Date: Thu, 04 Aug 2016 09:38:14 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

* The ptest still have 8 failed items in 124 cases.


Kai Kang (1):
  libvirt: upgrade 1.3.2 -> 1.3.5

 .../0001-to-fix-build-error.patch                  |  0
 recipes-extended/libvirt/libvirt-python.inc        |  5 +-
 .../0001-fix-crash-in-getAllDomainStats.patch      | 57 ----------------------
 ...vert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch | 16 ++++--
 .../libvirt/libvirt/install-missing-file.patch     | 12 ++++-
 recipes-extended/libvirt/libvirt/runptest.patch    | 34 +++++++------
 .../libvirt/{libvirt_1.3.2.bb => libvirt_1.3.5.bb} | 10 ++--
 7 files changed, 47 insertions(+), 87 deletions(-)
 rename recipes-extended/libvirt/{libvirt-1.3.2 => libvirt-1.3.5}/0001-to-fix-build-error.patch (100%)
 delete mode 100644 recipes-extended/libvirt/libvirt/0001-fix-crash-in-getAllDomainStats.patch
 rename recipes-extended/libvirt/{libvirt_1.3.2.bb => libvirt_1.3.5.bb} (97%)

-- 
2.9.2.368.g08bb350


