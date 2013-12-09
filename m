Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B34E005B1
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 14:11:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Dec 2013 14:11:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,860,1378882800"; d="scan'208";a="447247738"
Received: from unknown (HELO [10.255.15.119]) ([10.255.15.119])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2013 14:11:28 -0800
Message-ID: <1386627087.17252.14.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Mon, 09 Dec 2013 16:11:27 -0600
In-Reply-To: <CAE8H0+W5uDM4PKpHzNymY9pNCheMqke7OT8ycoRAG-FgrfDaqA@mail.gmail.com>
References: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
	<1386360528.3028.62.camel@empanada>
	<CAE8H0+U_XmpsS=iVrGbWp6um6nMUXxDb+fighV7KruBuFRGWFw@mail.gmail.com>
	<52A634FF.8020705@linux.intel.com>
	<CAE8H0+W5uDM4PKpHzNymY9pNCheMqke7OT8ycoRAG-FgrfDaqA@mail.gmail.com>
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
X-List-Received-Date: Mon, 09 Dec 2013 22:11:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-12-09 at 16:45 -0500, r10kindsofpeople wrote:
> On Mon, Dec 9, 2013 at 4:24 PM, Saul Wold <sgw@linux.intel.com> wrote:
>         On 12/09/2013 11:51 AM, r10kindsofpeople wrote:
>                 On Fri, Dec 6, 2013 at 3:08 PM, Tom Zanussi
>                 <tom.zanussi@intel.com
>                 <mailto:tom.zanussi@intel.com>> wrote:
>                 
>                     On Fri, 2013-12-06 at 14:08 -0500,
>                 r10kindsofpeople wrote:
>                      > After some success building my system
>                 (crownbay), I'm now trying to
>                      > optimize boot time, so I read up on poky-tiny,
>                 created a new
>                     layer and
>                      > am trying to build.  I think I've pulled most
>                 of my system
>                     changes out
>                      > so that I can at least bitbake
>                 core-image-minimal, but I'm still not
>                      > able to get past ncurses config and perl.
>                  (ncurses reports autoconf
>                      > errors in widec, perl has undefined references
>                 to gcvt, I'm also
>                      > getting complaints about multiple providers for
>                 the kernel, etc.)
>                      >
>                      >
>                      > Is poky-tiny still active and tested?  What are
>                 the odds of this
>                     being
>                      > resolved in Dora versus the odds of running
>                 into other migration
>                      > issues?
>                      >
>                 
>                     I haven't tried poky-tiny with dylan, but I have
>                 with dora and didn't
>                     run into any build problems - the build errors
>                 you're running into
>                     aren't things I've seen either.
>                 
>                     So maybe you can try with dora and see what
>                 happens - if you still run
>                     into problems, please provide some more details on
>                 your setup.
>                 
>                 
>                 Thanks, Tom...using Dora, I was able to get the basic
>                 system to build.
>                 
>                 Adding some features (dhcp-server, for instance) still
>                 breaks the build,
>                 but I suspect that's just a consequence of -tiny doing
>                 it's thing.
>                 
>         John, that's probably correct, the tiny configuration uses
>         uclibc and if you see bug number 5431
>         (https://bugzilla.yoctoproject.org/show_bug.cgi?id=5431),
>         there are a number of recipes that will not build correctly
>         with the full uclibc, but that was with a full uclibc, where
>         as the tiny configuration cuts down ulibc to just support the
>         bare minimum.
>         
>         Hope that helps with your efforts.
>         
>         Sau!
>         
>         
> Thanks, Saul, I'll take a look.
> 
> 
> A "FWIW" for any and all...to get qemu to work with the tiny image, I
> had to do a menuconfig for busybox and add "setsid" and "cttyhack",
> otherwise I was getting "not found" and "error 127" loops on startup.
>  
> 
> 
> (hints on how to do this without menuconfig are welcome...I tried
> creating my own recipe and adding package ${PN}-setsid or including my
> own (edited) defconfig, but neither seemed to work. 

I also ran into that problem and sent an initial fix for it:

https://lists.yoctoproject.org/pipermail/poky/2013-November/009378.html

I still need to 'fix' the fix but it works in any case..

Tom


>                 John
>                 
>                 
>                 
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org
>                 https://lists.yoctoproject.org/listinfo/yocto
>                 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



