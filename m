Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74125E00DFB; Tue,  6 Mar 2018 20:00:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660BFE00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 20:00:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 20:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,434,1515484800"; d="scan'208";a="23544910"
Received: from guptatax-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.117])
	by orsmga006.jf.intel.com with ESMTP; 06 Mar 2018 20:00:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Mar 2018 17:00:09 +1300
Message-Id: <20180307040011.2907-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [yocto-autobuilder2][PATCH 0/2] A couple of fixes
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
X-List-Received-Date: Wed, 07 Mar 2018 04:00:47 -0000

A couple of initial fixes for the new autobuilder.

I'm still learning how to work with the new buildbot code, so let me know
if I've missed anything :)


Paul Eggleton (2):
  builders: set early steps to halt on failure
  builders: set build revision to poky revision

 TODO        |  1 -
 builders.py | 16 ++++++++++++++--
 2 files changed, 14 insertions(+), 3 deletions(-)

-- 
2.14.3


