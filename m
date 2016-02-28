Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BB76E00C62; Sun, 28 Feb 2016 12:43:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A12CE00C37
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 12:42:56 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 28 Feb 2016 12:42:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,517,1449561600"; d="scan'208";a="925711379"
Received: from gtan23-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.53])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2016 12:42:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: nick <xerofoify@gmail.com>
Date: Mon, 29 Feb 2016 09:42:51 +1300
Message-ID: <1757213.TvvrU9CHQF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <56D060A3.6040309@gmail.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<56D05536.3090904@balister.org> <56D060A3.6040309@gmail.com>
MIME-Version: 1.0
Cc: Brian Avery <brian.avery@intel.com>,
	openembedded-architecture@lists.openembedded.org, yocto@yoctoproject.org
Subject: Re: [Openembedded-architecture] Removing Hob for 2.1
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
X-List-Received-Date: Sun, 28 Feb 2016 20:43:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 26 Feb 2016 09:26:43 nick wrote:
> I haven't been using the last few versions of Yocto, last I used was 1.8 I
> believe unless we just jumped to 2.0/2.1. I was wondering for people
> somewhat used to using HOB for easier distribution build tuning how big is
> the learning curve(I assume it isn't much). 

Shouldn't be a big deal. If anything it's been much more carefully designed 
with new users in mind.

> Further more can Toaster be configured to make iso/vmware images as I find
> this very useful 

Certainly, any image type you can produce from Hob you can produce from 
Toaster.

> plus from what I known Toaster needs to be run with a browser can it be made
> to run as a non browser based service similar to Hob if not already done so.

Toaster is entirely web-based so that isn't possible I'm afraid. It doesn't 
require a separate web server though if that's what you're concerned about - 
the default configuration is to run on a single machine and not listen 
externally.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

