Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF30E00B6C; Sun, 30 Sep 2018 21:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C2CBE00ACF
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2018 21:12:17 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Sep 2018 21:12:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,326,1534834800"; d="scan'208";a="74358392"
Received: from lgprasad-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.175.84])
	by fmsmga007.fm.intel.com with ESMTP; 30 Sep 2018 21:11:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Oct 2018 17:11:37 +1300
Message-Id: <cover.1538366967.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 00/12] More minor fixes (cover letter only)
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
X-List-Received-Date: Mon, 01 Oct 2018 04:12:18 -0000

A bunch of fixes for minor issues / missing functionality I've noticed
since we did the update of layers.openembedded.org last week.


The following changes since commit 2554449baa5dece6b3b2ca027f1a368823e43b00:

  update: fix regression caused by previous temp dir fix (2018-09-27 15:35:38 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes10
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes10

Paul Eggleton (12):
  update: fix error on LAYERRECOMMENDS failure
  admin: allow changing branch on layerbranch records
  update: use lists for git clone/checkout command parameters
  forms: fix validation of repository URLs in layer edit form
  Auto-determine web/file/tree/commit URLs for gitlab.com
  update: fix confusing debug message on renaming bbappend
  admin: allow searching on vcs_url on layer/layerbranch
  Add object string representation to truncation warning message
  update: fix commands.getstatusoutput errors when parsing python2 branch
  update: allow patch parsing to work with python 2
  Fix wrapping on update detail page
  Add an email test function

 layerindex/admin.py                  |  5 +--
 layerindex/bulkchange.py             |  2 +-
 layerindex/forms.py                  |  2 +-
 layerindex/models.py                 |  2 +-
 layerindex/recipeparse.py            |  2 +-
 layerindex/static/css/additional.css |  1 +
 layerindex/tools/import_classic.py   |  2 +-
 layerindex/tools/import_layer.py     |  7 +++++
 layerindex/update.py                 |  8 ++++-
 layerindex/update_layer.py           |  7 +++--
 layerindex/urls.py                   |  5 ++-
 layerindex/utils.py                  |  6 ++--
 layerindex/views.py                  | 46 +++++++++++++++++++++++-----
 rrs/tools/common.py                  |  2 +-
 templates/base.html                  |  2 ++
 templates/layerindex/editlayer.html  |  9 ++++++
 templates/layerindex/testemail.txt   |  7 +++++
 17 files changed, 92 insertions(+), 23 deletions(-)
 create mode 100644 templates/layerindex/testemail.txt

-- 
2.17.1


