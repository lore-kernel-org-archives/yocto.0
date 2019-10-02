Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA278E00D68; Tue,  1 Oct 2019 18:19:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A67F6E00CBC
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 18:19:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Oct 2019 18:19:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,572,1559545200"; d="scan'208";a="181883838"
Received: from fookchua-mobl.gar.corp.intel.com (HELO linux.fritz.box)
	([10.249.73.102])
	by orsmga007.jf.intel.com with ESMTP; 01 Oct 2019 18:18:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Oct 2019 14:18:48 +1300
Message-Id: <cover.1569978978.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/3] More minor fixes [cover letter only]
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
X-List-Received-Date: Wed, 02 Oct 2019 01:19:03 -0000
Content-Transfer-Encoding: 8bit

A few miscellaneous minor improvements from the Clear Linux Dissector.


The following changes since commit db51830ab238ed1a7ce33d43519c630b1c74c70b:

  update_classic_status: ensure fields are correctly ordered (2019-10-02 14:13:47 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/dissector-backports3
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/dissector-backports3

Paul Eggleton (3):
  README: add basic documentation on db backup and restore
  requirements.txt: update
  Add a space between text and glyphicons

 README                                 | 17 +++++++++++++++++
 requirements.txt                       | 21 ++++++++++-----------
 templates/layerindex/detail.html       |  2 +-
 templates/layerindex/recipedetail.html |  2 +-
 templates/layerindex/recipes.html      |  2 +-
 5 files changed, 30 insertions(+), 14 deletions(-)

-- 
2.20.1


