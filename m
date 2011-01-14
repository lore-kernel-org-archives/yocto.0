Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 199564C80050
	for <yocto@yoctoproject.org>; Fri, 14 Jan 2011 00:34:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jan 2011 22:34:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,321,1291622400"; d="scan'208";a="374493379"
Received: from unknown (HELO [10.255.14.43]) ([10.255.14.43])
	by azsmga001.ch.intel.com with ESMTP; 13 Jan 2011 22:34:33 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4D2FA9BE.80303@windriver.com>
References: <4D2F2977.90007@intel.com>	<4D2F2A4A.8030305@windriver.com>
	<1294937243.9232.2.camel@elmorro>
	<AANLkTime7E3HN64prTXoxfu_yb6BqW56_=jU7L38S_MP@mail.gmail.com>
	<4D2FA9BE.80303@windriver.com>
Date: Fri, 14 Jan 2011 00:34:30 -0600
Message-ID: <1294986870.28996.10.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current Build Failures for d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Fri, 14 Jan 2011 06:34:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2011-01-13 at 17:41 -0800, Bruce Ashfield wrote:
> On 11-01-13 8:37 PM, João Henrique Freitas wrote:
> > Hi,
> >
> > I have two build machines:
> >
> > x86 ubuntu 10.04 at work
> > x86_64 ubuntu 10.04 at home
> >
> > At home all things goes ok. But at work perf has failed.
> 
> Are your package lists identical ? Sounds like host contamination
> to me and perf is deciding to build perl or not perl based on
> what the host has installed.
> 
> >
> > The problem is LIBPERL. I can't understand why but at work the
> > Makefile from perf does not have the flag NO_LIBPERL.
> >
> > To 'solve'  it I put:
> >
> > do_compile_perf() {
> > 	oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" prefix=${prefix}
> > NO_LIBPERL=1
> 
> This works .. or to get the functionality back, we get perl
> in the package list and kindly ask perf to look in our sysroot
> for what it needs :)
> 

One thing I notice is that recipes-devtools/perl/perl_5.12.2.bb doesn't
install ExtUtils, which perl_5.8.8.bb did.

The logic in perf that decides whether to define NO_LIBPERL depends on
the output of ExtUtils::Embed - it looks like it may be picking up the
host's ccopts instead, which might explain the /usr/local/include in the
error message:

cc1: error: include location "/usr/local/include" is unsafe for cross-compilation

Will look into it more tomorrow...

Tom

> Thanks for the digging on this.
> 
> Bruce
> 
> > }
> >
> > in linux-tools.inc
> >
> > Thanks.
> >
> > On Thu, Jan 13, 2011 at 2:47 PM, Tom Zanussi<tom.zanussi@intel.com>  wrote:
> >> On Thu, 2011-01-13 at 08:37 -0800, Bruce Ashfield wrote:
> >>> On 11-01-13 11:33 AM, Elizabeth Flanagan wrote:
> >>>> All,
> >>>>
> >>>> The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 is
> >>>> showing 3 build failures so far.
> >>>>
> >>>> Machine: qemux86
> >>>> Failure: intermittent tasks_0.18 failure at do_compile
> >>>> Description: Tasks_0.18 has failed during one buildset, however it's not
> >>>> failing on the other.
> >>>>
> >>>>
> >>>> Machine: arm
> >>>> Failure: sanity tests time out and cause cascading failures.
> >>>> Description: I'm patching the autobuilder today so that sanity tests
> >>>> timing out shouldn't cause a cascading failure, however the arm sanity
> >>>> tests are still timing out.
> >>>>
> >>>> Machine: qemux86-64
> >>>> Failure: linux-yocto_git failing at do_compile_perf
> >>>> Description:
> >>>> |     CC util/scripting-engines/trace-event-perl.o
> >>>> | cc1: warnings being treated as errors
> >>>> | cc1: error: include location "/usr/local/include" is unsafe for
> >>>> cross-compilation
> >>>
> >>> I saw this one as well, but hadn't gone back to look at
> >>> it yet. Did something change underneath us?
> >>>
> >>> I haven't updated any parts of the recipes or kernel that
> >>> would have triggered the new failure. Or at least nothing
> >>> that has ever showed up in my testing.
> >>>
> >>
> >> Yeah, it's strange that this starts happening seemingly out of the blue
> >> - nothing wrt this has changed recently AFAICS.
> >>
> >>> Darren/Tom: you guys have been into perf/trace recently,
> >>> any ideas (or time) for a quick fix ? I'm going to be
> >>> pegged for the day trying to sort out some other items.
> >>>
> >>
> >> Coincidentally, I was going to look at perf scripting next week - guess
> >> I'll start this week instead.  Don't have a quick fix off the top of my
> >> head - will start looking into it later today/tonight...
> >>
> >> Tom
> >>
> >>> Cheers,
> >>>
> >>> Bruce
> >>>
> >>>> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
> >>>>
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >
> >
> 



