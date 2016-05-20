Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8D59E00ED8; Fri, 20 May 2016 03:47:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64660E00ED5
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:47:47 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2611.sfr.fr (SMTP Server) with ESMTP id 50FE01C01381F;
	Fri, 20 May 2016 12:47:46 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2611.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 20 May 2016 12:47:44 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>, 'Khem Raj' <raj.khem@gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<20160519151111.GB9848@resin.home>
	<CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
	<20160520103935.GI9848@resin.home>
In-Reply-To: <20160520103935.GI9848@resin.home>
Date: Fri, 20 May 2016 12:47:40 +0200
Message-ID: <03f601d1b285$0a8c81f0$1fa585d0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwE7hK8zAcj31rUB8+jV8gJJuUnEAyi1Sw8CCwCW8gKMa3kjAjLJGJSggLyBUA==
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Fri, 20 May 2016 10:47:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andrei, Khem,

That's what I implemented in the upcoming v2 - except for the python
checking function part.
One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?
I know CMA is kind of common, but we're using this only to trigger a
parameter to the v4c overlay.
Any opinion? (in the current implementation, I went with CMA_SIZE, but I
have doubts...)

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Andrei Gherzan
Sent: vendredi 20 mai 2016 12:40
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support =
for
vc4 graphics driver: upgrade 4.4 kernel to 4.4.10

On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:
> On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan <andrei@gherzan.ro> =
wrote:
> > On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M=FCller wrote:
> >> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain
<herve.jourdain@neuf.fr> wrote:
> >> > One thing I didn't make configurable, but that maybe could be, is =
the
parameter passed to the overlay.
> >> > I selected cma-256, based on experience from other people, and
because my configuration is RPI2/3 with 1G of memory.
> >> > I realize it might not work well with RPI0/1, which have less =
memory
available...
> >> > So even if I believe cma-256 is a good default value, it might be
made selectable by the user, if we want to consider vc4 on RPI0/1.
> >> I played around with vc4 to but did not manage to get it work for=20
> >> an elder version 4.1 of kernel.
> >>
> >> I did in rpi-config:
> >>
> >> CMA_SIZE =3D "cma-256"
> >> CMA_SIZE_raspberrypi =3D "cma-64"
>
>
> >
> > I sent reply about this too. This is definitely one solution would I =

> > would rather have a CMA_SIZE default value and a python function to=20
> > check its match with board variant. Cause in this way a user might=20
> > be able to use cma-96 on rapsberrypi.
> >
> >> CMA_SIZE_raspberrypi0 =3D "cma-128"
>
>
> setting CMA_SIZE should be moved into machine.conf file IMO
>

That's actually a good idea. I would say to have it in machine as a =
default
value for that specific machine. And then be able to overwrite it as =
user
needs. Optionally have a python function to check that what user =
requested
makes sense for the selected board.

--
Andrei Gherzan


