Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA69EE00AE4; Wed, 18 Apr 2018 03:57:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12E6DE00816
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 03:57:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3IAv47f020397
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 03:57:04 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 03:57:03 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 18 Apr 2018 19:04:29 +0800
Message-ID: <cover.1524049072.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH 0/4][layerindex-web] bug fix and performance improve
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
X-List-Received-Date: Wed, 18 Apr 2018 10:57:06 -0000
Content-Type: text/plain

Hi Paul,

The patch 4 can improve a lot on update.py (up to 98%), here is the testing
data, please feel free to give your comments.

$ time update.py -b master --nofetch [--fullreload]

                   Before    Now       Reduced
No update:         276s      3.6s      98%
Partial update:    312s      87s       72%
Full repload:      1016s     980s      3%

Note:
* All of the testing are based on --nofetch

* "No update" means all layers on the branch is up-to-date, for
  example, when we run it twice, there is no update in the second run, so we
  only need about 3s now, which is the most common case when we use cron to run
  it per half an hour.

* "Partly update" means part of the layers have been updated.

* "Fullreload" means all of the layers have been updated.

// Robert

The following changes since commit 611c96883c35240d3c291951146154d828745774:

  requirements.txt: use the most recent Django 1.8 version (2018-03-26 08:29:27 +1300)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/layerindex
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/layerindex

Robert Yang (4):
  fixup! update: don't stop on unsatisfied layer dependencies
  update.py: add an option --timeout for lockfile
  update.py: print failed layers summary in the end
  update_layer.py: move layer validation to update.py (Performance
    improve)

 layerindex/update.py       | 97 ++++++++++++++++++++++++++++++++++++++++++++--
 layerindex/update_layer.py | 39 ++-----------------
 layerindex/utils.py        | 14 +++++--
 3 files changed, 108 insertions(+), 42 deletions(-)

-- 
2.7.4


