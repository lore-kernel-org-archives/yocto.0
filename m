Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 586F24C800A1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 17:33:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jul 2011 15:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,244,1309762800"; d="scan'208";a="30543542"
Received: from vorpal.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 21 Jul 2011 15:33:26 -0700
From: Joshua Lock <josh@linux.intel.com>
To: "Ke, Liping" <liping.ke@intel.com>
Date: Thu, 21 Jul 2011 15:37:55 -0700
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597312D0DA86A6@shsmsx501.ccr.corp.intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
	<1311122520.2115.25.camel@scimitar>
	<789F9655DD1B8F43B48D77C5D306597312D0DA86A6@shsmsx501.ccr.corp.intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311287875.2172.14.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2][Image Creator] Hob Cache for speed up switching
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jul 2011 22:33:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-21 at 13:39 +0800, Ke, Liping wrote:
> Hi, Josh
> 
> Yes, definitely this patch's importance is much less than the previous one. But if more users are using hob, the cache would be very useful.
> Because when using UI, users tend to switch between all combination of menu frequently. 
> Even with the improved the speed, we still need around 7s. It would be nice if he switches back the UI is loaded immediately without waiting time.
> 
> Yes. Definitely we need to make sure the hash key was correct.
> Currently I am not sure which elements should be the final correct one (the UI might changes in the future).
> So my suggestion is that: we hold the patch. In the near future, when Hob is very mature and nice, we can decide the combination key.
> Then we rebase the patch and resend the patch. How do you think about it?

I agree on reviewing the status later.

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes Factotum"
        Intel Open Source Technology Centre


