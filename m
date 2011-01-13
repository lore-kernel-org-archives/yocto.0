Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B37CD4C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 10:48:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jan 2011 08:48:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="646629737"
Received: from unknown (HELO [10.255.14.43]) ([10.255.14.43])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2011 08:47:27 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4D2F2A4A.8030305@windriver.com>
References: <4D2F2977.90007@intel.com>  <4D2F2A4A.8030305@windriver.com>
Date: Thu, 13 Jan 2011 10:47:23 -0600
Message-ID: <1294937243.9232.2.camel@elmorro>
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
X-List-Received-Date: Thu, 13 Jan 2011 16:48:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 08:37 -0800, Bruce Ashfield wrote:
> On 11-01-13 11:33 AM, Elizabeth Flanagan wrote:
> > All,
> >
> > The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 is
> > showing 3 build failures so far.
> >
> > Machine: qemux86
> > Failure: intermittent tasks_0.18 failure at do_compile
> > Description: Tasks_0.18 has failed during one buildset, however it's not
> > failing on the other.
> >
> >
> > Machine: arm
> > Failure: sanity tests time out and cause cascading failures.
> > Description: I'm patching the autobuilder today so that sanity tests
> > timing out shouldn't cause a cascading failure, however the arm sanity
> > tests are still timing out.
> >
> > Machine: qemux86-64
> > Failure: linux-yocto_git failing at do_compile_perf
> > Description:
> > |     CC util/scripting-engines/trace-event-perl.o
> > | cc1: warnings being treated as errors
> > | cc1: error: include location "/usr/local/include" is unsafe for
> > cross-compilation
> 
> I saw this one as well, but hadn't gone back to look at
> it yet. Did something change underneath us?
> 
> I haven't updated any parts of the recipes or kernel that
> would have triggered the new failure. Or at least nothing
> that has ever showed up in my testing.
> 

Yeah, it's strange that this starts happening seemingly out of the blue
- nothing wrt this has changed recently AFAICS.

> Darren/Tom: you guys have been into perf/trace recently,
> any ideas (or time) for a quick fix ? I'm going to be
> pegged for the day trying to sort out some other items.
> 

Coincidentally, I was going to look at perf scripting next week - guess
I'll start this week instead.  Don't have a quick fix off the top of my
head - will start looking into it later today/tonight...

Tom

> Cheers,
> 
> Bruce
> 
> > | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



