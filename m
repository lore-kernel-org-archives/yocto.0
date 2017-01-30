Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5A69E00724; Mon, 30 Jan 2017 15:31:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804E3E003C1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 15:31:36 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Jan 2017 15:31:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,312,1477983600"; d="scan'208";a="815212778"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by FMSMGA003.fm.intel.com with ESMTP; 30 Jan 2017 15:31:35 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Jan 2017 17:31:28 -0600
Message-Id: <1485819090-16001-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [patchwork][PATCH 0/2] Series-view: Enable status/bundle edition
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
X-List-Received-Date: Mon, 30 Jan 2017 23:31:43 -0000

This changes enable patch status updating, adding a patch to an existing
bundle and creating a new bundle from the series view.

[YOCTO #10973]

Jose Lamego (2):
  series.js: Get patch id and pass it to POST request
  series.py: Add POST call

 htdocs/js/series.js       | 24 ++++++++++++--
 patchwork/views/series.py | 84 +++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 104 insertions(+), 4 deletions(-)

-- 
1.9.1


