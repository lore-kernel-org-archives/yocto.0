Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C516DE00CCD; Wed, 13 Jul 2016 06:32:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A64E009CF
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:32:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 13 Jul 2016 06:32:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="845520825"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.2.48])
	by orsmga003.jf.intel.com with ESMTP; 13 Jul 2016 06:32:15 -0700
Message-ID: <1468416734.7977.7.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 14:32:14 +0100
In-Reply-To: <57851926.7000907@linux.intel.com>
References: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
	<1468273073-8178-2-git-send-email-anibal.limon@linux.intel.com>
	<1468339760.2733.9.camel@linux.intel.com>
	<57851926.7000907@linux.intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [[PATCH][yocto-autobuilder] 2/2] buildsteps/RunOeSelftest.py: Set native_lsb to universal
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
X-List-Received-Date: Wed, 13 Jul 2016 13:32:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-07-12 at 11:21 -0500, Aníbal Limón wrote:
> 
> On 07/12/2016 11:09 AM, Joshua G Lock wrote:
> > On Mon, 2016-07-11 at 16:37 -0500, Aníbal Limón wrote:
> > > The error report is generated into AB master and currently we
> > > don't have a method to get AB worker distro, so set to universal.
> > 
> > Can you elaborate a bit here? Why don't we have a method available
> > to
> > get the worker distro? Is it because we don't ensure all of the
> > builders in the cluster include lsb_release?
> 
> Currently, we don't have an easy way to get the worker distro an
> buildstep is needed in order TODO that but isn't trivial.
> 
> I propose to have at step at buildinit for get the worker
> information.
> At this time only will be distro. I removed the get_lsb_distro()
> because
> it gets the distro of the master instead of the worker.

Could we just extract the value of NATIVELSBSTRING[1] from the build
header in the logs?

Regards,

Joshua

1. http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#var-
NATIVELSBSTRING

> 
> I added a bug for this task,
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9917
> 
> Cheers,
> 	alimon
> 
> 
> > 
> > Are our worker distro versions new enough that we can rely on os-
> > release?
> > 
> > http://manpages.ubuntu.com/manpages/xenial/en/man5/os-release.5.htm
> > l
> > 
> > Regards,
> > 
> > Joshua
> > 
> > > 
> > > Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> > > ---
> > >  lib/python2.7/site-
> > > packages/autobuilder/buildsteps/RunOeSelftest.py
> > > > 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/lib/python2.7/site-
> > > packages/autobuilder/buildsteps/RunOeSelftest.py
> > > b/lib/python2.7/site-
> > > packages/autobuilder/buildsteps/RunOeSelftest.py
> > > index 5b9e408..809bcc3 100644
> > > --- a/lib/python2.7/site-
> > > packages/autobuilder/buildsteps/RunOeSelftest.py
> > > +++ b/lib/python2.7/site-
> > > packages/autobuilder/buildsteps/RunOeSelftest.py
> > > @@ -52,7 +52,9 @@ class RunOeSelftest(ShellCommand):
> > >          report['machine'] = 'universal'
> > >          report['build_sys'] = "%s-%s" % (platform.machine(),
> > >                  platform.system().lower())
> > > -        report['nativelsb'] = get_lsb_distro() or 'universal'
> > > +        # XXX: Set to universal because isn't easy to get
> > > Autobuilder
> > > +        # worker distro.
> > > +        report['nativelsb'] = 'universal' 
> > >          report['distro'] = 'universal'
> > >          report['target_sys'] = 'universal'
> > >  
> > > -- 
> > > 2.1.4
> > > 
> 

