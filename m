Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CAEE007C1
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 12:08:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2013 12:08:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,842,1378882800"; d="scan'208";a="420637119"
Received: from unknown (HELO [10.255.15.158]) ([10.255.15.158])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2013 12:08:53 -0800
Message-ID: <1386360528.3028.62.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Fri, 06 Dec 2013 14:08:48 -0600
In-Reply-To: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
References: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-tiny breaks at ncurses and perl (Dylan 9.0.1)
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
X-List-Received-Date: Fri, 06 Dec 2013 20:08:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-12-06 at 14:08 -0500, r10kindsofpeople wrote:
> After some success building my system (crownbay), I'm now trying to
> optimize boot time, so I read up on poky-tiny, created a new layer and
> am trying to build.  I think I've pulled most of my system changes out
> so that I can at least bitbake core-image-minimal, but I'm still not
> able to get past ncurses config and perl.  (ncurses reports autoconf
> errors in widec, perl has undefined references to gcvt, I'm also
> getting complaints about multiple providers for the kernel, etc.)
> 
> 
> Is poky-tiny still active and tested?  What are the odds of this being
> resolved in Dora versus the odds of running into other migration
> issues?  
> 

I haven't tried poky-tiny with dylan, but I have with dora and didn't
run into any build problems - the build errors you're running into
aren't things I've seen either.

So maybe you can try with dora and see what happens - if you still run
into problems, please provide some more details on your setup.

Thanks,

Tom

> 
> John
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



