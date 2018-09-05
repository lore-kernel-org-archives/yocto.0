Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12C41E00A94; Wed,  5 Sep 2018 16:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C89E00A64
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 16:21:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Sep 2018 16:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,334,1531810800"; d="scan'208";a="70904412"
Received: from jpakiamx-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.171.191])
	by orsmga008.jf.intel.com with ESMTP; 05 Sep 2018 16:18:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2018 11:17:33 +1200
Message-Id: <cover.1536189377.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 00/15] More minor fixes (cover letter only)
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
X-List-Received-Date: Wed, 05 Sep 2018 23:21:42 -0000

The following changes since commit f82f5f2754dd2d41db8d62f455dd380c26635ee1:

  update: add option to stop immediately on parse errors (2018-08-24 16:41:59 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes7
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes7

Paul Eggleton (15):
  docker: remove one step from proxy setup
  docker: correct comment in .gitconfig
  update: do not try to parse a layer that failed to fetch
  Disable git interactive password prompts
  Limit selection of "Base" layer type
  reviewdetail: show newlines in description
  rrs/tools: handle dry-run properly
  rrs_distros: ensure we only run distro processing once
  rrs: fix recipe count not showing up properly if no per-recipe maintainers
  rrs: fix broken links when there are no milestones in a release
  rrs: show warnings for missing current release/milestone
  rrs_distros: match recipe on filename not PN
  rrs: admin: add in-line for Milestones to Releases
  rrs/tools/daily_run.sh: don't reload when updating
  TODO: add some more items

 Dockerfile                             |  8 +--
 TODO                                   | 13 ++--
 docker/.gitconfig                      |  2 +-
 layerindex/forms.py                    |  9 ++-
 layerindex/update.py                   |  9 +++
 layerindex/views.py                    |  7 ++-
 rrs/admin.py                           | 19 ++++++
 rrs/models.py                          |  2 +-
 rrs/tools/common.py                    |  5 ++
 rrs/tools/daily_run.sh                 |  2 +-
 rrs/tools/rrs_distros.py               | 63 ++++++++++---------
 rrs/tools/rrs_upgrade_history.py       | 15 ++++-
 rrs/tools/rrs_upstream_history.py      | 83 +++++++++++++-------------
 rrs/views.py                           | 10 ++++
 templates/layerindex/editlayer.html    |  4 ++
 templates/layerindex/reviewdetail.html |  2 +-
 templates/rrs/recipes.html             |  4 ++
 17 files changed, 170 insertions(+), 87 deletions(-)

-- 
2.17.1


