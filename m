Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A001CE00D3D; Sun,  8 Jul 2018 21:01:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC32E009CF
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:01:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6941TVC032229
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:01:29 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Sun, 8 Jul 2018 21:01:28 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 9 Jul 2018 12:11:26 +0800
Message-ID: <cover.1531109397.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/4] update.py: several fixes
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
X-List-Received-Date: Mon, 09 Jul 2018 04:01:31 -0000
Content-Type: text/plain

The following changes since commit 5cfdfdca8b9200b5a6e4aa14661b14059a799310:

  rrs_upstream_history.py: fix set_regexes function (2018-06-06 11:25:46 +1200)

are available in the git repository at:

  git://git.openembedded.org/openembedded-core-contrib rbt/li_recs
  http://cgit.openembedded.org/openembedded-core-contrib/log/?h=rbt/li_recs

Robert Yang (4):
  update_layer.py: avoid calling setup_core_layer_sys_path() when
    --initial
  utils.py: fix checkout_repo when no HEAD
  update.py: add layers when RECOMMENDS isn't satisfied
  update.py: check whether branch existed when nocheckout

 layerindex/update.py       | 71 +++++++++++++++++++++++++++++++---------------
 layerindex/update_layer.py | 22 +++++++-------
 layerindex/utils.py        | 25 ++++++++++------
 3 files changed, 76 insertions(+), 42 deletions(-)

-- 
2.7.4


