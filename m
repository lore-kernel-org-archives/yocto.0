Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05A95E00BF8; Tue,  6 Dec 2016 13:21:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3485DE00BC0
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 13:21:54 -0800 (PST)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])
	by msfrf2621.sfr.fr (SMTP Server) with ESMTP id 96EC91C00BC2C;
	Tue,  6 Dec 2016 22:21:53 +0100 (CET)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2621.sfr.fr (SMTP Server) with ESMTPSA;
	Tue,  6 Dec 2016 22:21:52 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
	<20161206181110.GG1636@carbonA>
In-Reply-To: <20161206181110.GG1636@carbonA>
Date: Tue, 6 Dec 2016 22:21:50 +0100
Message-ID: <00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIdWPz6eV3C2BSfUPw1Ib/BTgRAkQJ5ti72AXsfg8QBwY5G3wLYon7LAtJBUUwDJF3FAAGuYlCEn+O6fhA=
X-sfr-mailing: LEGIT
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
X-List-Received-Date: Tue, 06 Dec 2016 21:21:59 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Sorry, a bit tired...
I meant we need to track the changes happening to the versions we decide =
we
want to support, and update the recipes accordingly.
My understanding is we're interested in 4.4, 4.8 and 4.9. And I have a
personal interest in 4.7 for the moment, so I can try to keep the 4.7 =
recipe
up to date with the changes.
If 4.4 is "stable", then we need some people to focus on tracking the
changes happening on 4.8 and 4.9.

Cheers,
Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: mardi 6 d=E9cembre 2016 19:11
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: 'Khem Raj' <raj.khem@gmail.com>; yocto@yoctoproject.org; 'Gary =
Thomas'
<gary@mlbassoc.com>
Subject: Re: ***SPAM*** Re: [yocto] [meta-raspberrypi] Current master =
broken

On Tue, Dec 06, 2016 at 07:04:31PM +0100, Herve Jourdain wrote:
> Hi Andrei,
>
> But I believe that the core of the problem is not necessarily the=20
> patch in oe-core to detect the kernel version itself, but like Khem=20
> mentioned the fact that a "well known" SRCREV is only valid for a=20
> brief period of time under the RPI tree "constant" rebasing we've been
experiencing lately.
> So basically, the SRCREV that is used is not corresponding to what it=20
> used to be, if it's still there in the tree, and the oe-core detects=20
> that - the SRCREV thought it was one version of the kernel, and it=20
> just happened that it corresponds to a different codebase with a =
different
linux version.
> Killing the error reporting by a patch will probably not prevent the=20
> mismatch happening behind the scene.
> So like Khem mentioned, either we find a way to "prevent" the rebasing =

> at the source, or we need to track down every version we want to=20
> support, and update SRCREV and corresponding kernel version for those.

Got it now. What do you mean by "track down every version we want"?
--
Andrei Gherzan


