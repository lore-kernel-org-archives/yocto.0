Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76482E00B5C; Wed, 31 May 2017 20:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F662E00ADD
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 20:34:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v513YWbC024916
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 31 May 2017 20:34:33 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 31 May 2017 20:34:31 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 31 May 2017 20:34:23 -0700
Message-ID: <cover.1496287756.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH V2 0/8] Several fixes for layerindex
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
X-List-Received-Date: Thu, 01 Jun 2017 03:34:36 -0000
Content-Type: text/plain

* V2:
Remove "import bb" from update.py to avoid causing confusions when switch branches.

* V1:
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

// Robert

The following changes since commit 8dfe44ed5e618d517d4acb4a3107cb3907e773c8:

  TODO: drop implemented items (2017-03-22 14:21:22 +1300)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/layerindex-8fixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/layerindex-8fixes

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
 layerindex/update.py             | 185 +++++++++++++++++++++++++++++++--------
 layerindex/update_layer.py       |   6 +-
 layerindex/utils.py              |  59 ++++++++++++-
 6 files changed, 215 insertions(+), 42 deletions(-)

-- 
2.10.2


