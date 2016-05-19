Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3E90E00DCA; Wed, 18 May 2016 22:22:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A30E00D3D
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 22:22:01 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2603.sfr.fr (SMTP Server) with ESMTP id 0C7101C00583B;
	Thu, 19 May 2016 07:22:01 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2603.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 May 2016 07:21:58 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andreas =?iso-8859-1?q?M=FCller=27?= <schnitzeltony@googlemail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
In-Reply-To: <CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
Date: Thu, 19 May 2016 07:21:55 +0200
Message-ID: <024301d1b18e$5e9cc5e0$1bd651a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwE7hK8zAcj31rUB8+jV8gJJuUnEAyi1Sw8A9rHx7aCtagCQ
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
X-List-Received-Date: Thu, 19 May 2016 05:22:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andreas,

I've been able to do some testing with the latest 4.1 kernel.
So it can actually "work" in a way, but both the device tree overlay and =
the driver in the kernel are "old".
This has an impact on stability: I can definitely start wayland/weston, =
and it's "responsive", BUT after I started playing out with the demo =
applications, it quickly crashed...
So we could either try to backport the newer driver / dt overlay to the =
4.1, which could be possible, or we could just support vc4graphics only =
for 4.4.10+...

Since 4.1 is not heavily maintained anymore on github, since 4.4 is now =
the default revision on github, and since development branches for 4.5 =
and 4.6 are already there on github, I would personally be inclined to =
support vc4graphics only for 4.4.10+...
And I would also be in favor of moving the default version of the kernel =
to the 4.4 series...

What do you think is the best option there?

Herve

-----Original Message-----
From: Andreas M=C3=BCller [mailto:schnitzeltony@googlemail.com]=20
Sent: jeudi 19 mai 2016 00:59
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Khem Raj <raj.khem@gmail.com>; Yocto Project =
<yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for vc4 =
graphics driver: upgrade 4.4 kernel to 4.4.10

On Wed, May 18, 2016 at 11:46 PM, Andreas M=C3=BCller =
<schnitzeltony@googlemail.com> wrote:
> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain =
<herve.jourdain@neuf.fr> wrote:
>> One thing I didn't make configurable, but that maybe could be, is the =
parameter passed to the overlay.
>> I selected cma-256, based on experience from other people, and =
because my configuration is RPI2/3 with 1G of memory.
>> I realize it might not work well with RPI0/1, which have less memory =
available...
>> So even if I believe cma-256 is a good default value, it might be =
made selectable by the user, if we want to consider vc4 on RPI0/1.
> I played around with vc4 to but did not manage to get it work for an=20
> elder version 4.1 of kernel.
what I meant: did only work for elder 4.1 - not current 4.1
>
> I did in rpi-config:
>
> CMA_SIZE =3D "cma-256"
> CMA_SIZE_raspberrypi =3D "cma-64"
> CMA_SIZE_raspberrypi0 =3D "cma-128"
> ...
> echo "dtoverlay=3Dvc4-kms-v3d-overlay,${CMA_SIZE}"
>>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>
> This is nothing but an untested suggestion.
>
> Without testing your series I would be very happy to see this or very=20
> similar applied in master: Since vc4 works, RaspberryPi turned into my =

> reference test board - e.g. have not seen kde5 running that nice on=20
> another board..
>
> Andreas


