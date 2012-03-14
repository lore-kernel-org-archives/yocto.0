Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C42BE013BA
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 02:04:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2012 02:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138562801"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2012 02:03:57 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4F3EA17B.7010906@windriver.com>
References: <2046170.9fCjTlmZqN@helios>  <4F3EA17B.7010906@windriver.com>
Date: Wed, 14 Mar 2012 17:02:04 +0800
Message-ID: <1331715724.25861.16.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto@yoctoproject.org, Peter Seebach <peter.seebach@windriver.com>
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
X-List-Received-Date: Wed, 14 Mar 2012 09:04:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Mark,

When using the new Hob to build targets, I also observed the pseudo
output:

"pseudo: You must set the PSEUDO_PREFIX environment variable to run
pseudo."

Here is the step to reproduce it:

1) source oe-init-build-env
2) hob
3) select machine and base image. Here I use qemux86 and
core-image-minimal.
4) click "Just bake". For this first time build, pseudo works OK.
5) after the build finishes, return to image configuration page and
click "Just bake" button again. Then after the build starts, pseudo will
print out the above logs.

Thanks,
Dongxiao

On Fri, 2012-02-17 at 10:50 -0800, Mark Hatle wrote:
> We're looking into this issue.  You should never get the "pseudo: You must set 
> the PSEUDO_PREFIX environment variable to run pseudo." message.  This means 
> something appears to have avoided the wrappers.
> 
> I'll let you know once we figure out something.
> 
> --Mark
> 
> On 2/17/12 9:35 AM, Paul Eggleton wrote:
> > Hi all,
> >
> > I'm trying to extend buildhistory to write out the metadata revisions just
> > before it does the commit to the buildhistory repository, and I'm having some
> > pseudo-related trouble. The structure is a little unusual, in that the
> > execution flow is an event handler that calls a shell function (via
> > bb.build.exec_func()) and during parsing this function an ${@...} reference to
> > a python function is evaluated, which then calls os.popen(), at which point I
> > get the error "pseudo: You must set the PSEUDO_PREFIX environment variable to
> > run pseudo."
> >
> > I don't need pseudo at this stage. I've tried setting PSEUDO_DISABLED=1 and
> > even PSEUDO_UNLOAD=1 just prior to the os.popen() call (or within it) and
> > despite evidence that pseudo is taking notice of these being set in other
> > contexts (when the function is called from elsewhere) even when doing this I
> > still get the error above. I could rearrange the structure to avoid this
> > execution flow however that would bar me from reusing existing code that we
> > have for getting the metadata revision.
> >
> > Any suggestions?
> >
> > Cheers,
> > Paul
> >
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



