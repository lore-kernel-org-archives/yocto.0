Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84F5EE00DBF; Wed, 18 May 2016 22:14:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F681E00D3D
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 22:13:55 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2603.sfr.fr (SMTP Server) with ESMTP id ADE6B1C005806;
	Thu, 19 May 2016 07:13:52 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2603.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 May 2016 07:13:50 +0200 (CEST)
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
In-Reply-To: <CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
Date: Thu, 19 May 2016 07:13:45 +0200
Message-ID: <024201d1b18d$3b88c820$b29a5860$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwE7hK8zAcj31rUB8+jV8gJJuUnEAyi1Sw+gtR75AA==
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
X-List-Received-Date: Thu, 19 May 2016 05:14:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andreas,

I will send a v2 series soon, that will include something very similar =
to your suggestion for the overlay parameter.

Herve

-----Original Message-----
From: Andreas M=C3=BCller [mailto:schnitzeltony@googlemail.com]=20
Sent: mercredi 18 mai 2016 23:47
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Khem Raj <raj.khem@gmail.com>; Yocto Project =
<yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for vc4 =
graphics driver: upgrade 4.4 kernel to 4.4.10

On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> One thing I didn't make configurable, but that maybe could be, is the =
parameter passed to the overlay.
> I selected cma-256, based on experience from other people, and because =
my configuration is RPI2/3 with 1G of memory.
> I realize it might not work well with RPI0/1, which have less memory =
available...
> So even if I believe cma-256 is a good default value, it might be made =
selectable by the user, if we want to consider vc4 on RPI0/1.
I played around with vc4 to but did not manage to get it work for an =
elder version 4.1 of kernel.

I did in rpi-config:

CMA_SIZE =3D "cma-256"
CMA_SIZE_raspberrypi =3D "cma-64"
CMA_SIZE_raspberrypi0 =3D "cma-128"
...
echo "dtoverlay=3Dvc4-kms-v3d-overlay,${CMA_SIZE}"
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

This is nothing but an untested suggestion.

Without testing your series I would be very happy to see this or very =
similar applied in master: Since vc4 works, RaspberryPi turned into my =
reference test board - e.g. have not seen kde5 running that nice on =
another board..

Andreas


