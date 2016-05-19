Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61A79E00E84; Thu, 19 May 2016 09:21:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E9FFE00E6C
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:21:43 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2611.sfr.fr (SMTP Server) with ESMTP id DE2CB1C022863;
	Thu, 19 May 2016 18:21:31 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2611.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 May 2016 18:21:29 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>,
	'Andreas =?iso-8859-1?q?M=FCller=27?= <schnitzeltony@googlemail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
	<024301d1b18e$5e9cc5e0$1bd651a0$@neuf.fr>
	<CALbNGRQT6mBkosf2psOY5qWv9KLdv=3DXXwJNEBHZxS64eGzeA@mail.gmail.com>
	<20160519151317.GC9848@resin.home>
In-Reply-To: <20160519151317.GC9848@resin.home>
Date: Thu, 19 May 2016 18:21:23 +0200
Message-ID: <032f01d1b1ea$808f8cd0$81aea670$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwE7hK8zAcj31rUB8+jV8gJJuUnEAyi1Sw8A9rHx7QHjNOBPAn/Ru3sCRF/H5KB46Kqw
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Thu, 19 May 2016 16:21:46 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andrei,

I have a v3 cooking, I will release it shortly after I have a good =
solution
for the management of the dtbo - I guess I've just managed to get =
something
working, but I need a few more tests.
I'll try to take all your remarks into account, as well as those by =
Andreas
and Khem.

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]=20
Sent: jeudi 19 mai 2016 17:13
To: Andreas M=FCller <schnitzeltony@googlemail.com>
Cc: Herve Jourdain <herve.jourdain@neuf.fr>; Yocto Project
<yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for vc4 =
graphics
driver: upgrade 4.4 kernel to 4.4.10

On Thu, May 19, 2016 at 08:28:00AM +0200, Andreas M=FCller wrote:
> On Thu, May 19, 2016 at 7:21 AM, Herve Jourdain =
<herve.jourdain@neuf.fr>
wrote:
> > Hi Andreas,
> >
> > I've been able to do some testing with the latest 4.1 kernel.
> > So it can actually "work" in a way, but both the device tree overlay =
and
the driver in the kernel are "old".
> > This has an impact on stability: I can definitely start =
wayland/weston,
and it's "responsive", BUT after I started playing out with the demo
applications, it quickly crashed...
> > So we could either try to backport the newer driver / dt overlay to =
the
4.1, which could be possible, or we could just support vc4graphics only =
for
4.4.10+...
> >
> > Since 4.1 is not heavily maintained anymore on github, since 4.4 is =
now
the default revision on github, and since development branches for 4.5 =
and
4.6 are already there on github, I would personally be inclined to =
support
vc4graphics only for 4.4.10+...
> > And I would also be in favor of moving the default version of the =
kernel
to the 4.4 series...
> >
> > What do you think is the best option there?
> >
> No need to backport to 4.1. 4.4 is fine. One question: are you able to =

> change screen resolution for HDMI monitor (elder sdl fullscreen games=20
> need that)? This was not possible for kernel 4.1.
>
> Just to avoid misunderstandings: I like this patch series very much=20
> and would be happy to see it applied.
>

Santa heard you.

--
Andrei Gherzan


