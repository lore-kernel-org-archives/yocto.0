Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76190E00A85; Tue, 14 Aug 2018 06:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F07E00A38
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079730"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:13 +0200
Message-Id: <cover.1534253406.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/5] Update / error handling fixes
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:36 -0000

The layer index has recently been failing to update, and that wasn't
picked up earlier as the errors weren't actually being collected in the
update records. Makesure they are collected and sufficiently highlighted
in the UI.


The following changes since commit d17080d325b9b82e8b844c207053eb2b3ac111ad:

  Show links to include files on recipe detail (2018-08-13 16:04:16 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/layerupdate
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/layerupdate

Paul Eggleton (5):
  update: avoid errors if values could not be found in initial output
  update_layer: improve exception handling
  Improve collection/display of LayerUpdate records
  update: ensure that exceptions during the update process are logged
  Include errors/warnings in main log in error/warning counts for
    updates

 TODO                                          |  1 -
 layerindex/admin.py                           |  2 +-
 .../0021_layerupdate_add_layer_branch.py      | 26 +++++++
 .../0022_layerupdate_set_layer_branch.py      | 41 +++++++++++
 .../0023_layerupdate_layer_branch_finalise.py | 29 ++++++++
 .../migrations/0024_layerupdate_vcs_revs.py   | 35 ++++++++++
 layerindex/models.py                          | 36 +++++++++-
 layerindex/static/css/additional.css          | 10 +++
 layerindex/templatetags/extrafilters.py       |  4 ++
 layerindex/update.py                          | 68 +++++++++++++------
 layerindex/update_layer.py                    |  3 +-
 layerindex/views.py                           |  6 +-
 templates/layerindex/layerupdate.html         | 19 +++++-
 templates/layerindex/updatedetail.html        | 34 ++++++++--
 templates/layerindex/updatelist.html          |  6 +-
 15 files changed, 284 insertions(+), 36 deletions(-)
 create mode 100644 layerindex/migrations/0021_layerupdate_add_layer_branch.py
 create mode 100644 layerindex/migrations/0022_layerupdate_set_layer_branch.py
 create mode 100644 layerindex/migrations/0023_layerupdate_layer_branch_finalise.py
 create mode 100644 layerindex/migrations/0024_layerupdate_vcs_revs.py

-- 
2.17.1


