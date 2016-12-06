Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1890E00C2B; Tue,  6 Dec 2016 15:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.43.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1801 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Dec 2016 15:29:51 PST
Received: from 14.mo3.mail-out.ovh.net (14.mo3.mail-out.ovh.net
	[188.165.43.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B3C5E00BF8
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 15:29:51 -0800 (PST)
Received: from player693.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id E2205656D5
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 23:50:45 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player693.ha.ovh.net (Postfix) with ESMTPSA id 5F12A440074;
	Tue,  6 Dec 2016 23:50:42 +0100 (CET)
Date: Tue, 6 Dec 2016 22:50:41 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20161206225041.55e1e351@nuc.betafive.co.uk>
In-Reply-To: <CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4667136589981714833
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrhedugddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Tue, 06 Dec 2016 23:29:53 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 6 Dec 2016 15:29:02 +0000
Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Mon, Dec 5, 2016 at 4:50 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> >> On 2016-12-05 01:54, Andrei Gherzan wrote:
> >>>
> >>> Hi Gary,
> >>>
> >>>
> >>> On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> >>>>
> >>>>
> >>>> It looks like the following oe-core commit broke the build for
> >>>> meta-raspberrypi:
> >>>>
> >>>>
> >>>> http://git.openembedded.org/openembedded-core/commit/?id=83d10e2acef936b1f38804988f10eafa48db36f9
> >>>>
> >>>> Applying the following patch from the oe-core mailing list fixes it for
> >>>> me:
> >>>>
> >>>>
> >>>> http://lists.openembedded.org/pipermail/openembedded-core/2016-December/129567.html
> >>>>
> >>>> I'm just going to apply that locally until it's merged into master.
> >>>
> >>>
> >>> Does the referenced patch by Paul fix your issue here?
> >>
> >>
> >> Yes, for version 4.4.x
> >>

> 
> I managed to hit this too. @Paul Is that patch coming to oe-core master soon?

I'll let people know on the oe-core list that we need this. I'd imagine
it won't be stuck in the queue for long but depends how busy things
are I suppose.

Thanks,
Paul

