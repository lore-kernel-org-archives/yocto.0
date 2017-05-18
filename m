Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4C28E00B31; Thu, 18 May 2017 00:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F26AE00B28
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 00:27:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4I7R5T4032609
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 00:27:06 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 18 May 2017 00:27:05 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 18 May 2017 15:22:36 +0800
Message-ID: <20170518072237.9271-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.10.1
MIME-Version: 1.0
Subject: [meta-security][PATCH] Add recipe mtree
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
X-List-Received-Date: Thu, 18 May 2017 07:27:09 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Commit at:
https://github.com/parr0tr1ver/meta-security/commit/2955017982dc733233267e955295ff40b11d61f5


Kai Kang (1):
  mtree: add recipe

 recipes-security/mtree/mtree/mtree-getlogin.patch | 49 +++++++++++++++++++++++
 recipes-security/mtree/mtree_1.0.3.bb             | 22 ++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 recipes-security/mtree/mtree/mtree-getlogin.patch
 create mode 100644 recipes-security/mtree/mtree_1.0.3.bb

-- 
2.10.1


