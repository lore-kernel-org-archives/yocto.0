Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE1D8E00A1E; Tue,  7 Feb 2017 12:18:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE3E3E0085D
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 12:18:31 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2017 12:18:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="62325567"
Received: from unknown (HELO jalamego-MOBL2.zpn.intel.com) ([10.219.128.137])
	by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2017 12:18:09 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Feb 2017 14:17:55 -0600
Message-Id: <1486498677-6355-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1485819090-16001-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1485819090-16001-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v2 0/2] Series-view: Enable status/bundle edition
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
X-List-Received-Date: Tue, 07 Feb 2017 20:18:38 -0000

These changes enable patch status updating, adding a patch to an existing
bundle and creating a new bundle from the series view.

[YOCTO #10973]

Changes in v2: Fixed javascript formatting and pep8 compliance.

Jose Lamego (2):
  series.js: Get patch id and pass it to POST request
  series.py: Add POST call

 htdocs/js/series.js       | 25 ++++++++++++--
 patchwork/views/series.py | 83 +++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 104 insertions(+), 4 deletions(-)

-- 
1.9.1


