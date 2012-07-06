Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7013EE006B1
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 15:35:40 -0700 (PDT)
Received: from SESTOEX05.enea.se ([fe80::41cb:8d2e:2e90:a183]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.02.0298.004; Sat, 7 Jul 2012 00:35:37 +0200
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "B29882@freescale.com" <B29882@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW469IN1XsfTurE+0d5K0GuhwCpcc2DXg
Date: Fri, 6 Jul 2012 22:35:36 +0000
Message-ID: <88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>,
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
In-Reply-To: <CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Fri, 06 Jul 2012 22:35:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Yes this was my suggestion, since you might not want to change the nativesd=
k kernel headers for all machines in all BSP layers, if the distro is using=
 multiple BSP layers, which it probably should be able to do.
Setting this  with machine overrides in distro.conf  is possible but quite =
 messy IMHO.
Furthermore , the nativesdk is set by ?=3D in machine.conf, any distro.conf=
  wanting to alter this to a global setting can easily override with  =3D


Sent from Android


-----Original Message-----
From: McClintock Matthew-B29882 [B29882@freescale.com]
Received: Friday, 06 Jul 2012, 17:48
To: David Nystr=F6m [David.Nystrom@enea.com]
CC: yocto@yoctoproject.org [yocto@yoctoproject.org]; raj.khem@gmail.com [ra=
j.khem@gmail.com]
Subject: Re: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sd=
k-headers-nativesdk provide linux-libc-headers-nativesdk



On Fri, Jul 6, 2012 at 5:49 AM, David Nystr=F6m <David.Nystrom@enea.com> wr=
ote:
> So that about a disto refusing this and possibly other BSP layers ?
> Should the disto.conf  select of nativesdk be made machine specific on al=
l machines in meta-fsl-ppc ? And one added target after a meta-fsl-ppc reba=
se would break stuff, I guess.

I don't quite follow... you are suggesting we have

PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D
"linux-qoriq-sdk-headers-nativesdk"

in the machine.conf files instead?

-M

