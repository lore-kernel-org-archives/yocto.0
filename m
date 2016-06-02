Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 811ABE00D50; Thu,  2 Jun 2016 14:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.253.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 101155 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Jun 2016 14:59:17 PDT
Received: from 7.mo4.mail-out.ovh.net (7.mo4.mail-out.ovh.net [178.33.253.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5729FE00D1B
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 14:59:17 -0700 (PDT)
Received: from player773.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id B2576FFCCE4
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 23:23:38 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id BDC8E6000C6;
	Thu,  2 Jun 2016 23:23:36 +0200 (CEST)
Date: Thu, 2 Jun 2016 22:25:19 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Ionel Badisor <ionelbadisor@gmail.com>
Message-ID: <20160602222519.48afd77f@nuc.betafive.co.uk>
In-Reply-To: <9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
	<CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
	<20160601185500.30c54bd7@nuc.betafive.co.uk>
	<9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 11806749373365979538
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrheelgdduheeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
X-List-Received-Date: Thu, 02 Jun 2016 21:59:19 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 2 Jun 2016 10:59:37 +0300
Ionel Badisor <ionelbadisor@gmail.com> wrote:

> On 06/01/2016 08:55 PM, Paul Barker wrote:
> > On Tue, 31 May 2016 10:39:03 +0300
> > Khem Raj <raj.khem@gmail.com> wrote:
> >
> >> On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk>
> >> wrote:
> >>>
> >>>
> >>> I'm trying to build from a source archive instead of a git
> >>> repository (to avoid a ~1.3GB git clone operation) so the use of
> >>> ${SRCPV} is causing me trouble.
> >>>
> >>
> >> Can you override the whole PV
> >
> > I've given this another look and I can get the recipe to parse if I
> > require linux-raspberrypi.inc before setting PV instead of
> > afterwards. However do_kernel_configme then gets confused looking
> > for a "standard/raspberrypi" configuration. It only works if I
> > modify linux-raspberrypi.inc as per my patch and set PV before
> > requiring that include file.
> >
> > I'm starting to think that I might be doing something wrong here -
> > is there a supported way to build a kernel from an archive instead
> > of a git repository within OE?
> >
> > Thanks,
> > Paul Barker
> >
> Are you trying to avoid repeated cloning operation to save bandwith
> and time or you are trying to save disk space?

I'm trying to reduce "time to first build" on a new build machine as
well as the amount of space/bandwidth needed to mirror downloaded
files.

Instead of setting PV in each recipe I could just duplicate
linux-raspberrypi.inc into my own layer with the change I need. That's
probably the simplest approach for now, I'll just have to keep my eye
on meta-raspberrypi going forward for any changes to
linux-raspberrypi.inc which I'd need to incorporate.

