Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F24A4E00D2C; Thu, 25 Feb 2016 18:49:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DFFE00D25
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 18:49:50 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 25 Feb 2016 18:49:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,498,1449561600"; d="scan'208";a="924190141"
Received: from tienhung-mobl2.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.137.217])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2016 18:49:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, openembedded-architecture@lists.openembedded.org
Date: Fri, 26 Feb 2016 15:49:44 +1300
Message-ID: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
MIME-Version: 1.0
Cc: Brian Avery <brian.avery@intel.com>
Subject: Removing Hob for 2.1
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
X-List-Received-Date: Fri, 26 Feb 2016 02:49:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

So we've been gearing up the Toaster web UI to replace the Hob (GTK+ based) UI 
for some time now; Hob has basically been on life support for the past few 
releases. As of late last month in master, Toaster has the capability to 
select the packages in an image, removing the last thing that Hob could do 
that Toaster couldn't. This means it's about time we looked at removing Hob - 
particularly if we want to do so for the upcoming 2.1 release as we should 
really do so within the M3 development timeframe which is almost over.

To recap, the reasons why Hob ought to be removed include:

- The code is tightly woven into BitBake, making it fragile. This means it 
needs significant QA and maintenance on an ongoing basis.

- Some of the implementation is not ideal; we'll be able to remove some cruft 
from BitBake and OE-Core at the same time.

- It's GTK+ 2 based, not the current GTK+ 3.

- Toaster is now a much more capable UI and is being actively maintained

I'm maintaining a list of things we would drop together with Hob, so I could 
probably come up with a patchset - I just wanted to give people a heads up and 
double check that this is something we indeed want to do in 2.1. Any comments?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

