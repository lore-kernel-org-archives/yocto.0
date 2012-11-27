Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw2.ericsson.se (mailgw2.ericsson.se [193.180.251.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAFDEE002AB
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 06:00:52 -0800 (PST)
X-AuditID: c1b4fb25-b7f926d00000661f-c3-50b4c7922eb2
Received: from esessmw0197.eemea.ericsson.se (Unknown_Domain [153.88.253.124])
	by mailgw2.ericsson.se (Symantec Mail Security) with SMTP id
	69.69.26143.297C4B05; Tue, 27 Nov 2012 15:00:50 +0100 (CET)
Received: from ESESSHC019.ericsson.se (153.88.183.75) by
	esessmw0197.eemea.ericsson.se (153.88.115.87) with Microsoft SMTP
	Server (TLS) id 8.3.279.1; Tue, 27 Nov 2012 15:00:48 +0100
Received: from ESESSMB305.ericsson.se ([169.254.5.177]) by
	ESESSHC019.ericsson.se ([153.88.183.75]) with mapi id 14.02.0318.001;
	Tue, 27 Nov 2012 15:00:35 +0100
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: [yocto] IMAGE_INSTALL_append workflow
Thread-Index: AQHNzEXRPR2nZN64kkibjbBVub1pD5f9tbtg
Date: Tue, 27 Nov 2012 14:00:34 +0000
Message-ID: <0342A6AD36648742A199353A51DDC7030275E8@ESESSMB305.ericsson.se>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
In-Reply-To: <CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.88.183.18]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsUyM+Jvje6k41sCDDYuVrWY9HINmwOjR/uJ
	PrYAxigum5TUnMyy1CJ9uwSujGNHZrIWtPFXbJ3yka2BcQ9PFyMnh4SAicStUzdZIWwxiQv3
	1rN1MXJxCAmcZJS4Nm8DE4Szk1Hix4yvzBDOEkaJrTOWs4O0sAG1T1h5k7GLkYNDRMBT4soD
	XZCwsICRRPfRN4wgtoiAscTTm62sELaRxPeVB9lAbBYBVYk1uw6AxXkFvCXeNz5nhJh/ikni
	6PvbLCAJToFAiUlbn4PZjAKyEve/3wOzmQXEJW49mc8EcbaAxJI955khbFGJl4//Qb2jKPHx
	1T5GiHo9iRtTp7BB2NoSyxa+ZoZYLChxcuYTsJlCApoSu/+8ZZzAKD4LyYpZSNpnIWmfhaR9
	ASPLKkb23MTMnPRyo02MwFg5uOW36g7GO+dEDjFKc7AoifNab93jLySQnliSmp2aWpBaFF9U
	mpNafIiRiYNTqoGxblIBt7nAlufL170WPPJvt9qs60ZvbGu/Sn9OYdF6y7ZV/9+mygNcz1u2
	5tiLMeqzHFH10747Q/3PBKdw+9PeM00jF6y0eB895/9dtWvRwYclJ6Wm/jzXZr/vyzxN2ffH
	Lj8Sz/slwKJ59eI0S60LzusX/ur8Gyewt/Zo8b1PFZcKGaM3WPq7KLEUZyQaajEXFScCACIq
	oTBjAgAA
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Nov 2012 14:00:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I can also confirm this.

A package (I've tried with diffutils & bash) must be built separately befor=
e it's added to an image via IMAGE_INSTALL_append.

/Jonas - fetched poky today

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Trevor Woerner
Sent: den 27 november 2012 03:21
To: Eren T=FCrkay
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] IMAGE_INSTALL_append workflow

On Mon, Nov 26, 2012 at 6:52 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> I haven't yet figured out if the "PREFERRED_PROVIDER_virtual/kernel =3D=20
> "linux-yocto-rt"" line might be the culprit.

No, it is not related, this problem doesn't need any fancy configuration fe=
atures. This problem is reproducible with just the plain qemux86 machine an=
d the core-image-minimal image.
Also, before my latest tests I pulled
the latest git repo.

To reproduce this problem:

- use the latest git repositories
- run "source poky/oe-init-build-env qemux86"
- make no modifications to conf/bblayers.conf
- make no changes to conf/local.conf
- run "bitbake core-image-minimal"

After that completes successfully add the following line to your
conf/local.conf:

IMAGE_INSTALL_append =3D " trace-cmd"

- re-run the build "bitbake core-image-minimal"

This should complete successfully. When it does, modify the last line of co=
nf/local.conf to be:

IMAGE_INSTALL_append =3D " trace-cmd bash"

- try re-running the build now "bitbake core-image-minimal". It fails for m=
e as I have detailed in my previous emails.

If I manually do:

$ bitbake bash
$ bitbake core-image-minimal

everything succeeds and my image contains 'bash'. But something tells me th=
ere's a bug in there somewhere.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

