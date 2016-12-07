Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB06E00D19; Tue,  6 Dec 2016 23:25:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.32.96.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 10.mo1.mail-out.ovh.net (10.mo1.mail-out.ovh.net
	[178.32.96.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4257E00D0A
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 23:25:30 -0800 (PST)
Received: from player770.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id E6A8523801
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 08:25:28 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player770.ha.ovh.net (Postfix) with ESMTPSA id A18C33C00A9;
	Wed,  7 Dec 2016 08:25:24 +0100 (CET)
Date: Wed, 7 Dec 2016 07:25:23 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161207072523.42e7daf2@nuc.betafive.co.uk>
In-Reply-To: <20161207021755.GA9669@openSUSE-i7.site>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
	<20161206181110.GG1636@carbonA>
	<00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
	<20161206230034.3f25f7b2@nuc.betafive.co.uk>
	<20161207021755.GA9669@openSUSE-i7.site>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 13359928295958219213
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrhedugdegjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org, 'Gary Thomas' <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 07:25:34 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 6 Dec 2016 21:17:55 -0500
Trevor Woerner <twoerner@gmail.com> wrote:

> On Tue 2016-12-06 @ 11:00:34 PM, Paul Barker wrote:
> > Upstream effectively support one version, currently 4.4. When upstream
> > made that the default branch, the changes to the 4.1 branch stopped -
> > there wasn't really much overlap. Everything post-4.4 is active
> > development and gets rebased at will. At some point they'll move to the
> > next LTS release (4.9) and 4.4 will be dropped.
> 
> Are you speaking specifically about the kernel for raspberry pi, or in
> general?

Raspberrypi specifically.

> Because the kernel for raspberry pi has several branches that are all
> maintained and kept up-to-date. It's actually quite commendable how this
> repository is maintained. Branches for 4.4, 4.7, 4.8, 4.9 and others are all
> usable (ignoring the constant rebasing thing...)

4.4 is stable and never gets rebased.

4.7 was last updated Oct 25th so it's now inactive.

4.8 and 4.9 will be almost the same set of patches rebased on top of
the mainline kernel. I think they do things this way to make
upstreaming patches easier.

This is the pattern I've seen for the last couple of years - one stable
branch that never gets rebased and one or two development branches
which do get rebased.

> 
> > I'd class all recipes for kernel versions other than default branch
> > upstream as experimental. Perhaps we should just go with AUTOREV here?
> > Anything else is going to need changing really often.
> 
> Not every revision of those branches are usable for raspberry pi. Someone
> named "popcornmix" has been keeping everything aligned with upstream, and
> merging in the support for raspberry pi.
> 
> If you took the rpi-4.8.y branch, for example, and happened to check out
> commit 356ccf6d2b0cfe9dca6c5d961bfd04dc8c0f4e64, you wouldn't have something
> that would build.
> 
> The problem is they keep rebasing, which messes up the SRC_URIs :-(

This is true, AUTOREV would lead to occasionally picking up bad
commits.

How about mirroring the Raspberrypi Linux repository so that we can
control when certain commits disappear from the repository? We could
either have AUTOREV in the recipe and only update the mirror with
tested commits, or update meta-raspberrypi regularly as well.

Thanks,
Paul

