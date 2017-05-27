Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 210C2E00A94; Sat, 27 May 2017 03:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A47A8E0077F
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:15:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4RAFsb5018723
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 27 May 2017 03:15:54 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 27 May 2017 03:15:53 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 03:15:45 -0700
Message-ID: <20170527101553.15014-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][0/8] Several fixes for layerindex
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
X-List-Received-Date: Sat, 27 May 2017 10:15:59 -0000
Content-Type: text/plain

Hi Paul,

The "-a ACTUAL_BRANCH" is a litle different from what we had talked, now it
respects "-l" and "-b", we can use -l to specify layers or default to all,
and it requires "-b" to work, only one branch is supported in a run, for example:

$ update.py -b master -a branch_20170526
All the layers which have branch master and actual_branch branch_20170526
will be updated to branch_20170526.

$ update.py -b master -l meta-oe -a branch_20170526
Only meta-oe layer will be updated.

$ update.py -b master -l bitbake -a branch_20170526
The bitbake's bitbake_branch will be updated.

Robert Yang (8):
  layerconfparse.py: remove unused layerbranch from parse_layer()
  utils.py: remove obsolete dependencies
  update_layer.py: set layerbranch's collection before add_dependencies
  update.py: add -p to git fetch
  update.py: fix -l option
  recipeparse.py: restore cwd when the parsing is done
  update.py: update layers orderly
  update.py: update actual branch for layer and bitbake

 layerindex/layerconfparse.py     |   2 +-
 layerindex/recipeparse.py        |   3 +
 layerindex/tools/import_layer.py |   2 +-
 layerindex/update.py             | 188 +++++++++++++++++++++++++++++++--------
 layerindex/update_layer.py       |   6 +-
 layerindex/utils.py              |  51 ++++++++++-
 6 files changed, 210 insertions(+), 42 deletions(-)

-- 
2.10.2


