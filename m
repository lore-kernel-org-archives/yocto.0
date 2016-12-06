Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D8A1E00CC8; Tue,  6 Dec 2016 17:29:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [87.98.184.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 6600 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Dec 2016 17:29:41 PST
Received: from 9.mo3.mail-out.ovh.net (9.mo3.mail-out.ovh.net [87.98.184.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C05E009C3
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 17:29:41 -0800 (PST)
Received: from player693.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id 00A4264EC2
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 00:00:39 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player693.ha.ovh.net (Postfix) with ESMTPSA id ACBEC440074;
	Wed,  7 Dec 2016 00:00:35 +0100 (CET)
Date: Tue, 6 Dec 2016 23:00:34 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20161206230034.3f25f7b2@nuc.betafive.co.uk>
In-Reply-To: <00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
	<20161206181110.GG1636@carbonA>
	<00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4834332726858516888
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrhedugddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org, 'Gary Thomas' <gary@mlbassoc.com>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 01:29:44 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 6 Dec 2016 22:21:50 +0100
Herve Jourdain <herve.jourdain@neuf.fr> wrote:

> Sorry, a bit tired...
> I meant we need to track the changes happening to the versions we decide we
> want to support, and update the recipes accordingly.
> My understanding is we're interested in 4.4, 4.8 and 4.9. And I have a
> personal interest in 4.7 for the moment, so I can try to keep the 4.7 recipe
> up to date with the changes.
> If 4.4 is "stable", then we need some people to focus on tracking the
> changes happening on 4.8 and 4.9.
> 
> Cheers,
> Herve
> 

I've ran into this myself before.

Upstream effectively support one version, currently 4.4. When upstream
made that the default branch, the changes to the 4.1 branch stopped -
there wasn't really much overlap. Everything post-4.4 is active
development and gets rebased at will. At some point they'll move to the
next LTS release (4.9) and 4.4 will be dropped.

I'd class all recipes for kernel versions other than default branch
upstream as experimental. Perhaps we should just go with AUTOREV here?
Anything else is going to need changing really often.

Thanks,
Paul

