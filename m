Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72D35E00D79; Wed, 27 Dec 2017 05:03:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14538E00CEF
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 05:03:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vBRD3TJM030874
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 27 Dec 2017 05:03:29 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 27 Dec 2017 05:03:28 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Wed, 27 Dec 2017 21:03:27 +0800
Message-ID: <cover.1514379277.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/2] 2 fixes for layerindex
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
X-List-Received-Date: Wed, 27 Dec 2017 13:03:31 -0000
Content-Type: text/plain

The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:

  admin: fix dependency display and search (2017-12-21 16:14:17 +1300)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/layerindex_update
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/layerindex_update

Robert Yang (2):
  utils.py: fix remove obsolete dependencies
  update.py: make sure oe-core is fetched

 layerindex/update.py | 8 +++++++-
 layerindex/utils.py  | 6 ++----
 2 files changed, 9 insertions(+), 5 deletions(-)

-- 
2.7.4


