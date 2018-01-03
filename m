Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B218E00DA9; Tue,  2 Jan 2018 21:42:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ABC2E00D86
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 21:42:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w035gJnC027927
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Jan 2018 21:42:19 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Tue, 2 Jan 2018 21:42:18 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 3 Jan 2018 13:42:21 +0800
Message-ID: <cover.1514957220.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/5] update.py: performance improve and 2 fixes
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
X-List-Received-Date: Wed, 03 Jan 2018 05:42:21 -0000
Content-Type: text/plain

Hi Paul,

This email contains two parts:
- The first 2 are bug fixes
- The other 3 are performance improvements, I have 124 layers,
  the "update.py -b <branch>" needs about 9m20s to finish the running when everything is
  update, and we have several branches, we need them to run in periodically
  (e.g., per 30 mins, the short the better), so one branch 9m20s is really a problem.
  Only about 1m43s are needed with these improvements when set PARALLEL_JOBS to 10:
  update.py: fetch repos parallelly # Saved 2 mins
  update_layer.py: use it as a module # Saved 5 mins
  update_layer.py: only call init_parser when needed # Saved 1 min

// Robert

The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:

  admin: fix dependency display and search (2017-12-21 16:14:17 +1300)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/LI
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/LI

Robert Yang (5):
  utils.py: fix remove obsolete dependencies
  update.py: make sure oe-core is fetched
  update.py: fetch repos parallelly
  update_layer.py: use it as a module
  update_layer.py: only call init_parser when needed

 layerindex/update.py       | 176 +++++++++++++++++++++++----------------------
 layerindex/update_layer.py | 146 +++++++++++--------------------------
 layerindex/utils.py        |   6 +-
 settings.py                |   2 +
 4 files changed, 137 insertions(+), 193 deletions(-)

-- 
2.7.4


