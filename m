Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96761E00BC8; Fri, 23 Jun 2017 00:45:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F43E00B58
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5N7jAED018216
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 23 Jun 2017 00:45:14 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:09 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:44:59 -0700
Message-ID: <cover.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 00/10] Several fixes for layerindex
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:17 -0000
Content-Type: text/plain

* V5
  - Fix Paul's comments
  - Add REMOVE_LAYER_DEPENDENCIES = False to settings, the
    _add_dependency() will check and remove dependencies which is not in
    conf/layer.conf when True (WARN when False)..

* V4
  - Add an option -i to update_layer.py to get initial layer value (dependencies,
    versions and so on), update.py doesn't use tinfoil any more since tinfoil
    before morty can't be shutdown totally if the process is not exited, this was
    why splitted update_layer.py from update.py.
  - Squash 11 patches (v3) into 10, since two of them have overlap.

* V3:
  - Better error messages when required collections not found
  - Delete layerbranch for non-existed branch
  - update_layer.py: remove --update-dependencies

* V2:
  - Remove "import bb" from update.py to avoid causing confusions when switch branches.

* V1:
  - The "-a ACTUAL_BRANCH" is a litle different from what we had talked, now it
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

The following changes since commit b958a991caa947fde2ccb073e3cb7924e162562d:

  layerindex/views: support querying by layer name (2017-06-15 16:04:14 +0200)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/layerindex-10fixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/layerindex-10fixes

Robert Yang (10):
  update.py: update actual branch for layer and bitbake
  layerconfparse.py: remove unused layerbranch from parse_layer()
  utils.py: add REMOVE_LAYER_DEPENDENCIES to remove dependencies
  update_layer.py: set layerbranch's collection before add_dependencies
  recipeparse.py: restore cwd when the parsing is done
  update.py: update layers orderly
  update_layer.py: remove --update-dependencies
  update_layer.py: move the location of transaction.atomic()
  update.py: add -p to git fetch
  update_layer.py: delete layerbranch for non-existed branch

 layerindex/layerconfparse.py     |   2 +-
 layerindex/recipeparse.py        |   3 +
 layerindex/tools/import_layer.py |   2 +-
 layerindex/update.py             | 186 ++++++++++++++++++++++++++++++---------
 layerindex/update_layer.py       |  99 +++++++++------------
 layerindex/utils.py              |  71 ++++++++++++++-
 settings.py                      |   3 +
 7 files changed, 263 insertions(+), 103 deletions(-)

-- 
2.10.2


