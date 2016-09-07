Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8793E00CC1; Wed,  7 Sep 2016 08:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E315E00A4B
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 08:33:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 07 Sep 2016 08:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,296,1470726000"; d="scan'208";a="1026367531"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.9.194])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2016 08:33:52 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Sep 2016 16:33:38 +0100
Message-Id: <cover.1473261757.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto autobuilder][PATCH 0/3] Fix buildlogger
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
X-List-Received-Date: Wed, 07 Sep 2016 15:33:56 -0000

Since build 999 we haven't seen any builds logged to the BuildLogs wiki page,
that turns out to be because the JSON dicts keys are strings and thus the sort
order isn't as expected, i.e. 999 > 1001.

This series tidies up the buildlogger some and includes a fix for this issue by
converting the keys of the dicts to a list of ints and sorting that to determine
the most recent build.

The following changes since commit ba01fe19440a91091fe15544ecc2809a79f19401:

  nightly-qa-systemd.conf: Add create_eventlog property (2016-08-31 21:22:11 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/yocto-autobuilder joshuagl/buildlogger
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/log/?h=joshuagl/buildlogger

Joshua Lock (3):
  buildlogger: remove old, incomplete, comment
  buildlogger: don't hardcode YP AB in generated URL
  buildlogger: fix sorting of recent builds

 bin/buildlogger              | 23 +++++++++++++----------
 etc/buildlogger.conf.example |  1 +
 2 files changed, 14 insertions(+), 10 deletions(-)

-- 
2.7.4

