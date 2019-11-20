Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31859E007D4; Wed, 20 Nov 2019 06:05:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA14E007D4
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 06:02:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Nov 2019 06:02:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200724384"
Received: from joshkche-mobl.gar.corp.intel.com (HELO shodan.fritz.box)
	([10.255.167.107])
	by orsmga008.jf.intel.com with ESMTP; 20 Nov 2019 06:02:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Nov 2019 03:02:09 +1300
Message-Id: <cover.1574258424.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/6] Recipe search improvements, misc fixes [cover letter only]
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
X-List-Received-Date: Wed, 20 Nov 2019 14:05:09 -0000
Content-Transfer-Encoding: 8bit

Some minor improvements to recipe searching, plus fixes for a couple of
issues I noticed while doing the RRS rework.

Note: this patchset is on top of paule/recipesymbol.


The following changes since commit 6f85a1b4589df08e849a106338fe03d72e2394c2:

  TODO: add some more tasks (2019-11-21 02:51:30 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes14
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes14

Paul Eggleton (6):
  Drop LICENSE.diff2html
  update: fix exception with -x/--nofetch option
  recipes: improved support for queries containing quotes
  recipes: support pn: query prefix
  recipes: allow searching for layer:oe-core
  recipes: add help button to explain search terms

 layerindex/static/LICENSE.diff2html | 20 ------------
 layerindex/update.py                | 50 ++++++++++++++---------------
 layerindex/views.py                 | 23 +++++++++++--
 templates/layerindex/recipes.html   | 22 +++++++++++++
 4 files changed, 68 insertions(+), 47 deletions(-)
 delete mode 100644 layerindex/static/LICENSE.diff2html

-- 
2.20.1


