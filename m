Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 909B1E013CC
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 18:03:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2012 18:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132238991"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2012 18:03:24 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Peter Seebach <peter.seebach@windriver.com>
In-Reply-To: <20120322111805.6da9cd91@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <4F3EA17B.7010906@windriver.com>
	<1331715724.25861.16.camel@dongxiao-osel>
	<1332380981.1849.18.camel@dongxiao-osel>
	<20120322111805.6da9cd91@wrlaptop>
Date: Fri, 23 Mar 2012 09:01:16 +0800
Message-ID: <1332464476.1849.23.camel@dongxiao-osel>
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
X-List-Received-Date: Fri, 23 Mar 2012 01:03:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-22 at 11:18 -0500, Peter Seebach wrote:
> On Thu, 22 Mar 2012 09:49:41 +0800
> "Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:
> 
> > Hi Mark,
> > 
> > Any update on this one? I think we may need to track it in bugzilla.
> 
> I have been looking into this.  I've convinced myself that popen() is
> broken under pseudo, but that's not enough to explain this:
> 
> * I have a fixed pseudo where popen works.  It still fails sometimes
>   under hob.
> * When it fails, the popen() wrapper isn't even getting called.
> * Still looking into this.
> 
> Interestingly, I can't get this failure to occur at all outside of hob.

I think the difference between Hob and other UI (e.x., knotty) is that,
when building image is finished in knotty, the UI, bitbake server, and
pseudo all quit. But in Hob, everything still alive after a build. I
noticed that the pseudo error happens only when Hob is trying to issue a
second build.

Thanks,
Dongxiao

> 
> -s



