Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A8EE005BB; Fri,  1 Aug 2014 03:53:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 394A3E0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 03:53:08 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Aug 2014 03:53:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,779,1400050800"; d="scan'208";a="463944110"
Received: from pwarusav-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.170])
	by azsmga001.ch.intel.com with ESMTP; 01 Aug 2014 03:52:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pushpa Teja <pushpa@jtechindia.in>
Date: Fri, 01 Aug 2014 11:52:51 +0100
Message-ID: <13152220.2WktliDSTM@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <BLU185-W93281D4A94CC98F82110C4C7E70@phx.gbl>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>
	<1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>
	<BLU185-W93281D4A94CC98F82110C4C7E70@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, sadasivam <sadasivam.b@jtechindia.com>
Subject: Re: yocto Digest, Vol 46, Issue 109
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
X-List-Received-Date: Fri, 01 Aug 2014 10:53:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 01 August 2014 10:30:18 Pushpa Teja wrote:
> yes but this problem is not at all solving there is no problem in my
> connection when ever i am trying this sites mirrors are not available plz
> give me a solution.

I'm sorry but I don't think it's possible for me to just give you a solution 
to this. You're getting timeouts from the upstream servers (multiple 
independent ones), and it appears you're getting the same problem fetching 
from our mirror server. That points to a problem at your end or somewhere 
between you and those servers. I can't really help fix that other than to 
suggest you try fetching the files externally, use traceroute to try to figure 
out where the connection is getting dropped, talk to your ISP, etc.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

