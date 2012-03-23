Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7823E013D9
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 20:23:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 Mar 2012 20:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80693885"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Mar 2012 20:23:36 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Peter Seebach <peter.seebach@windriver.com>
In-Reply-To: <20120322212937.71b9bf28@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <4F3EA17B.7010906@windriver.com>
	<1331715724.25861.16.camel@dongxiao-osel>
	<1332380981.1849.18.camel@dongxiao-osel>
	<20120322111805.6da9cd91@wrlaptop>
	<1332464476.1849.23.camel@dongxiao-osel>
	<20120322212937.71b9bf28@wrlaptop>
Date: Fri, 23 Mar 2012 11:21:26 +0800
Message-ID: <1332472886.1765.1.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Fri, 23 Mar 2012 03:23:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-22 at 21:29 -0500, Peter Seebach wrote:
> On Fri, 23 Mar 2012 09:01:16 +0800
> "Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:
> 
> > I think the difference between Hob and other UI (e.x., knotty) is
> > that, when building image is finished in knotty, the UI, bitbake
> > server, and pseudo all quit. But in Hob, everything still alive after
> > a build. I noticed that the pseudo error happens only when Hob is
> > trying to issue a second build.
> 
> I get it on the first build.

What do you mean by first build? Did you click "Just bake" button?

Actually "Just bake" button is divided into two steps:

1) build_target(packages)
2) build_target(image)

I noticed the pseudo error will happen when calling build_target(image).
Therefore I also treated it as second build.

Thanks,
Dongxiao

> 
> ... You see the issue.
> 
> Pseudo shouldn't be having a problem, it's designed to restart as
> needed.
> 
> Right now, what I know is:
> 1.  I didn't catch popen(), and this can actually be an issue with
> stuff like PSEUDO_UNLOAD or PSEUDO_DISABLED in play.
> 2.  If I wrap popen, and have the wrapper unconditionally emit a
> diagnostic, that works for simple os.popen() test cases.
> 3.  But not for the case that's triggering this.
> 
> So it looks like, when this runs, we have a Python session which has
> had pseudo unloaded, not just disabled, which then sets LD_PRELOAD but
> doesn't set PSEUDO_PREFIX.  Or something.
> 
> I'm still trying to get better data on this, like figure out how the
> sub-process is even getting invoked.
> 
> -s



