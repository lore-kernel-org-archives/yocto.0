Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192E4E00C56; Mon, 30 May 2016 01:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [188.165.54.143 listed in list.dnswl.org]
X-Greylist: delayed 893 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 May 2016 01:19:11 PDT
Received: from 18.mo4.mail-out.ovh.net (18.mo4.mail-out.ovh.net
	[188.165.54.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B0FEE00B04
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 01:19:11 -0700 (PDT)
Received: from player773.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 740AFFFB330
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 10:09:53 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id 73B62600069;
	Mon, 30 May 2016 10:09:51 +0200 (CEST)
Date: Mon, 30 May 2016 09:11:28 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160530091128.31b01008@nuc.betafive.co.uk>
In-Reply-To: <CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 17676910016224070119
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrhedvgddufeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
X-List-Received-Date: Mon, 30 May 2016 08:19:14 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 May 2016 21:20:21 +0300
Khem Raj <raj.khem@gmail.com> wrote:

> On May 29, 2016 9:00 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
> >
> > PV is now set in each version of the linux-raspberrypi recipe
> > instead of
> in
> > linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used
> > in
> custom
> > kernel recipes in another layer which require a different PV value.
> 
> You  can also use weak define. Instead of duplicated value in each
> recipe

Weak define doesn't work here as PV is already weakly defined based on
the recipe filename and that's what we're trying to override. We end up
with PV values like "4.1" instead of "4.1.21+git..." if "?=" is used.

Thanks,
Paul Barker

