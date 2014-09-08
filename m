Return-Path: <roxana.ciobanu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA5DDE00837; Mon,  8 Sep 2014 07:07:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97303E007A0
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 07:07:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Sep 2014 07:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,486,1406617200"; d="scan'208";a="587972173"
Received: from roxana-optiplex-9010.rb.intel.com ([10.237.105.47])
	by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2014 07:07:41 -0700
From: Roxana Ciobanu <roxana.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Sep 2014 17:07:40 +0300
Message-Id: <cover.1410185145.git.roxana.ciobanu@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/1] [error-report-web]
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
X-List-Received-Date: Mon, 08 Sep 2014 14:07:56 -0000

The following changes since commit 170c8eb84cca9e3c84b774ee395fb5748b4ab311:

  error-report-tool: apply changes to the landing page (2014-09-05 13:57:00 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib roxana/YB6539
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=roxana/YB6539

Roxana Ciobanu (1):
  error-report-web: Sorting error tables

 Post/static/css/custom.css    |  15 ++
 Post/views.py                 | 135 +++++++++++--
 templates/latest-errors.html  | 391 ++++++++++++++++++++++++++----------
 templates/search-details.html | 446 +++++++++++++++++++++++++++++-------------
 4 files changed, 732 insertions(+), 255 deletions(-)

-- 
1.9.1


