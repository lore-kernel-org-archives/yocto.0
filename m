Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05868E00D87; Wed,  6 Dec 2017 23:37:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FE5E00D91
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vB77bc1B014544
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 6 Dec 2017 23:37:39 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:38 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:05 +0800
Message-ID: <cover.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 00/12] [auh] make it easy to use by recipe maintainer
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:51 -0000
Content-Type: text/plain

* Usages: (No settings is required by default)
  - Upgrade one recipe:
    $ upgradehelper.py less

  - Upgrade multiple recipes:
    $ upgradehelper.py less bash

    The commit will be kept in the repo when *succeed*.
    No commit when *failed* by default unless -f is used.

  - Upgrade recipes and apply failed patches after the upgrade is done:
    $ upgradehelper.py less bash -f

  - Upgrade all recipes and send emails:
    $ upgradehelper.py all -e

* Next:
  - Auto fix do_fetch error when thera are more than one checksums, e.g., git repo.
  - Add it into oe-core and suggest maintainer uses it ?

// Robert

The following changes since commit ccf93239c7def7b475fe20f8fcd91043bc59bd61:

  upgradehelper.py: Layer mode do a full cleanup of poky (2017-06-05 16:14:23 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/auh
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/auh

Robert Yang (12):
  upgradehelper.py: fix checking for do_checkpkg
  upgradehelper.py: support upgrade multiple recipes
  upgradehelper.py: use UniverseUpdater for all cases
  modules/steps.py: fix warn when skip compilation
  modules/steps.py: fix warn when skip compilation
  upgradehelper.py: only check email settings when -e is specified
  upgradehelper.py: always do upgrade when recipes are specified
  upgradehelper.py: clean repo only once when recipes are specified
  upgradehelper.py: use git user in commit when recipes are specified
  upgradehelper.py: add --apply-failed option
  upgradehelper.py: print info when recipe is skipped to upgrade
  upgradehelper.py: don't build gcc-runtime when --skip-compilation

 modules/steps.py |   4 --
 upgradehelper.py | 118 ++++++++++++++++++++++++++++++++++---------------------
 2 files changed, 73 insertions(+), 49 deletions(-)

-- 
2.7.4


