Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F29CDE009A5; Fri, 12 Dec 2014 07:46:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF7C4E0084E
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:46:46 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2352.austin.hp.com (Postfix) with ESMTPS id 3A50220B;
	Fri, 12 Dec 2014 15:46:46 +0000 (UTC)
Received: from G1W5783.americas.hpqcorp.net (16.193.26.1) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 12 Dec 2014 15:44:45 +0000
Received: from G1W3650.americas.hpqcorp.net ([169.254.8.62]) by
	G1W5783.americas.hpqcorp.net ([16.193.26.1]) with mapi id
	14.03.0169.001; Fri, 12 Dec 2014 15:44:45 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] Package Feature compile/runtime dependency
Thread-Index: AQHQFh8JaS4Uzt7Z10OZ7HDiXWSIApyMF+tQ
Date: Fri, 12 Dec 2014 15:44:44 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A80548C63D@G1W3650.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
	<CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
	<95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
	<20141212151844.GF18879@ad.chargestorm.se>
In-Reply-To: <20141212151844.GF18879@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Fri, 12 Dec 2014 15:46:49 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I just realize that I am using it, and it doesn't work the way I thought it=
 would.

I added=20

	DISTRO_FEATURES_append =3D " systemd"
	VIRTUAL-RUNTIME_init_manager =3D "systemd"

	DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
	VIRTUAL-RUNTIME_initscripts =3D ""

As part of my distro.cfg file and the build was failing, due to missing lib=
c/kernel features, it appears that the DISTRO_FEATURE simply added addition=
al package, which seems to highlight the need to have feature <-> feature d=
ependency.

I add to also add this to my distro.cfg to get things there:

DISTRO_FEATURES_LIBC =3D "${DISTRO_FEATURES_LIBC_TINY} \
                        ${DISTRO_FEATURES_LIBC_MINIMAL} \
                        ${DISTRO_FEATURES_LIBC_REGEX} \
                        ${DISTRO_FEATURES_LIBC_NET} \
                        libc-ftraverse \
                        libc-posix-clang-wchar \
                        libc-posix-wchar-io \
                        libc-spawn \
                        libc-locale-code \
                        libc-utmpx \
                       "

And create a systemd.cfg for the linux-yocto-tiny kernel to include those

	CONFIG_AUTOFS4_FS=3Dy
	CONFIG_TIMERFD=3Dy
	CONFIG_FHANDLE=3Dy
	CONFIG_DEVTMPFS=3Dy
	CONFIG_INOTIFY_USER=3Dy
	CONFIG_FANOTIFY=3Dy
	CONFIG_SECCOMP=3Dn
	CONFIG_DMIID=3Dy
	CONFIG_TMPFS=3Dy
	CONFIG_PROC_SYSCTL=3Dy

My hope, was that somehow, adding systemd to DISTRO_FEATURE would not only =
add the packages I need, but also add feature to some package like the kern=
el/libc that are required by such addition.

Yannick Koehler
HP Networking Mobility

-----Message d'origine-----
De=A0: Anders Darander [mailto:anders@chargestorm.se]=20
Envoy=E9=A0: December-12-14 10:19 AM
=C0=A0: Koehler, Yannick (HP Networking)
Cc=A0: Burton, Ross; yocto@yoctoproject.org
Objet=A0: Re: [yocto] Package Feature compile/runtime dependency

* Koehler, Yannick (HP Networking) <yannick.koehler@hp.com> [141212 16:11]:

> It would definitely make sense to have a distro level feature called=20
> init-busyboxinit/init-sysvinit/init-systemd/init-upstart or something=20
> along those line.  Is this already in place?

We have sysvinit and systemd as distro features today.

Cheers,
Anders

--
Anders Darander
ChargeStorm AB / eStorm AB

