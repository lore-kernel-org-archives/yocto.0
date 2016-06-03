Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03A94E00DE5; Fri,  3 Jun 2016 12:46:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.55.104 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 16.mo4.mail-out.ovh.net (16.mo4.mail-out.ovh.net
	[188.165.55.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C92E00DD7
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:46:07 -0700 (PDT)
Received: from player773.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id DB8CA10050C7
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 21:46:02 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id E7F5D60007C;
	Fri,  3 Jun 2016 21:46:00 +0200 (CEST)
Date: Fri, 3 Jun 2016 20:47:45 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Ionel Badisor <ionelbadisor@gmail.com>
Message-ID: <20160603204745.15425713@nuc.betafive.co.uk>
In-Reply-To: <259f2b97-1f00-7d6e-785e-1e6887f933c1@gmail.com>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
	<CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
	<20160601185500.30c54bd7@nuc.betafive.co.uk>
	<9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
	<20160602222519.48afd77f@nuc.betafive.co.uk>
	<259f2b97-1f00-7d6e-785e-1e6887f933c1@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 16031125826593393042
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrieefgddufeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Fri, 03 Jun 2016 19:46:11 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 3 Jun 2016 09:07:37 +0300
Ionel Badisor <ionelbadisor@gmail.com> wrote:

> On 06/03/2016 12:25 AM, Paul Barker wrote:
> > On Thu, 2 Jun 2016 10:59:37 +0300
> > Ionel Badisor <ionelbadisor@gmail.com> wrote:
> >
> >> On 06/01/2016 08:55 PM, Paul Barker wrote:
> >>> On Tue, 31 May 2016 10:39:03 +0300
> >>> Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>>> On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk>
> >>>> wrote:
> >>>>>
> >>>>>
> >>>>> I'm trying to build from a source archive instead of a git
> >>>>> repository (to avoid a ~1.3GB git clone operation) so the use of
> >>>>> ${SRCPV} is causing me trouble.
> >>>>>
> >>>>
> >>>> Can you override the whole PV
> >>>
> >>> I've given this another look and I can get the recipe to parse if
> >>> I require linux-raspberrypi.inc before setting PV instead of
> >>> afterwards. However do_kernel_configme then gets confused looking
> >>> for a "standard/raspberrypi" configuration. It only works if I
> >>> modify linux-raspberrypi.inc as per my patch and set PV before
> >>> requiring that include file.
> >>>
> >>> I'm starting to think that I might be doing something wrong here -
> >>> is there a supported way to build a kernel from an archive instead
> >>> of a git repository within OE?
> >>>
> >>> Thanks,
> >>> Paul Barker
> >>>
> >> Are you trying to avoid repeated cloning operation to save bandwith
> >> and time or you are trying to save disk space?
> >
> > I'm trying to reduce "time to first build" on a new build machine as
> > well as the amount of space/bandwidth needed to mirror downloaded
> > files.
> >
> > Instead of setting PV in each recipe I could just duplicate
> > linux-raspberrypi.inc into my own layer with the change I need.
> > That's probably the simplest approach for now, I'll just have to
> > keep my eye on meta-raspberrypi going forward for any changes to
> > linux-raspberrypi.inc which I'd need to incorporate.
> >
> Maybe you can use the `DL_DIR ?= "/path/to/downloads/"` in your 
> conf/local.conf file for multiple build directories and if you want
> you can copy downloads directory to new machine and point to it the
> new local.conf  then all do_fetch operations are already performed,
> except new changes in which case the git fetch operation is performed
> when git is used and takes less time then when fetching entire
> archive.
> 
> note: multiple builds on same machine can use same downloads
> directory.

I'm planning to release this as part of a distro layer in the future.
Not all build machines will be under my control if others use the
layer.

I'm going to drop this patch for now as I can maintain my own copy of
linux-raspberrypi.inc. I think it'd be good to get the other changes
into master.

V2 incoming.

