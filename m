Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B24D3E00A38; Fri,  7 Aug 2015 00:50:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp25.services.sfr.fr (smtp25.services.sfr.fr [93.17.128.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D23EFE009FD
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 00:50:38 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.41.190])
	by msfrf2506.sfr.fr (SMTP Server) with ESMTP id 71BE870000BD;
	Fri,  7 Aug 2015 09:50:35 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-41-190.EMOME-IP.hinet.net [42.73.41.190])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2506.sfr.fr (SMTP Server) with ESMTP id E249770000B8;
	Fri,  7 Aug 2015 09:50:32 +0200 (CEST)
X-SFR-UUID: 20150807075032926.E249770000B8@msfrf2506.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 07 Aug 2015 09:50:32 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 07 Aug 2015 09:50:32 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
References: <002501d0d0d6$1a587d50$4f0977f0$@neuf.fr>
	<CAMKF1soYHzCF65peDgV=KBcwmx0RTZdRfgWo4Ts+Phsssd2qNA@mail.gmail.com>
In-Reply-To: <CAMKF1soYHzCF65peDgV=KBcwmx0RTZdRfgWo4Ts+Phsssd2qNA@mail.gmail.com>
Date: Fri, 7 Aug 2015 09:50:23 +0200
Message-ID: <003401d0d0e5$bc5e4fd0$351aef70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHOiwx8xTee2vijKnnjfTPBHPelHQIgIooenfOzD1A=
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] userland
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
X-List-Received-Date: Fri, 07 Aug 2015 07:50:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

Actually, in the case of raspberrypi, the implementation of =
gstreamer1.0-omx could depend on openmax provided by userland, instead =
of libomxil by default.
That's one example on the top of my head.
I don't personally use openvg, but I guess it might also be useful, =
although I have no first hand example for that one.

Best regards,

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: vendredi 7 ao=C3=BBt 2015 08:15
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] userland

On Thu, Aug 6, 2015 at 10:57 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> Hi,
>
>
>
> Currently, userland_git.bb PROVIDES virtual/egl and virtual/libgles2.
>
> But =E2=80=9Cuserland=E2=80=9D seems to provide many additional =
components: mmal,=20
> vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG
>
>
>
> Wouldn=E2=80=99t it make sense to add additional PROVIDES to handle =
those as well?


if they are implementation of generic components then sure. openvg and =
openmax might be one of them but if no one is depending on them why =
bother ?

>
>
>
> I=E2=80=99m thinking about openmaxil, for instance.
>
> Right now for instance, I get it by adding a DEPEND userland to a=20
> .bbappend, but I=E2=80=99m considering adding maybe a =
virtual/openmaxil to userland_git.bb.
>
>
>
> Does it make sense? Any suggestion about that?
>
>
>
> Best regards,
>
>
>
> Herve
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

