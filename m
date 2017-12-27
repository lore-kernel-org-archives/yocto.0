Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9168CE00D79; Wed, 27 Dec 2017 05:24:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE6AE00CEF
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 05:24:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBRDO11d025961
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Dec 2017 05:24:01 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 27 Dec 2017 05:24:00 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Wed, 27 Dec 2017 21:23:59 +0800
Message-ID: <cover.1514379984.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: Zhangle.Yang@windriver.com
Subject: [RFC PATCH 0/1] update.py: fetch repos parallelly
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
X-List-Received-Date: Wed, 27 Dec 2017 13:24:03 -0000
Content-Type: text/plain

Hi Paul,

We have 124 layers, the "update.py  -b <branch>" costs about 10 minutes to
finish the update for one branch, and we need update several branches periodly,
which is really a little slow. So I'd like to make it can run parally, here
are some thoughts about it:
1) Make fetch can run parallelly, this is easy to do, and safe enough as the
   patches does
2) Make recipeparse can parse layers parallelly, we may need split
   update_layer.py into two parts:
   - The one which only does recipeparse, this costs a lot of time, and can be
     parallell.
   - The one which writes to database (can't be parallel, and doesn't have to)

I will work on it if no objections.

// Robert

The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:

  admin: fix dependency display and search (2017-12-21 16:14:17 +1300)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/layerindex_parallel
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/layerindex_parallel

Robert Yang (1):
  update.py: fetch repos parallelly

 layerindex/update.py | 47 ++++++++++++++++++++++++++++++++++-------------
 settings.py          |  2 ++
 2 files changed, 36 insertions(+), 13 deletions(-)

-- 
2.7.4


