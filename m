Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe003.messaging.microsoft.com [213.199.154.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E781E006EA
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 15:39:44 -0700 (PDT)
Received: from mail71-am1-R.bigfish.com (10.3.201.236) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Fri, 6 Jul 2012 22:37:33 +0000
Received: from mail71-am1 (localhost [127.0.0.1])	by mail71-am1-R.bigfish.com
	(Postfix) with ESMTP id 1FA0A4402AA;
	Fri,  6 Jul 2012 22:37:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(z1725nz98dI9371Ic89bh542Mc85dh1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail71-am1 (localhost.localdomain [127.0.0.1]) by mail71-am1
	(MessageSwitch) id 1341614250363911_26698;
	Fri,  6 Jul 2012 22:37:30 +0000 (UTC)
Received: from AM1EHSMHS017.bigfish.com (unknown [10.3.201.225])	by
	mail71-am1.bigfish.com (Postfix) with ESMTP id 4D7C1360044;
	Fri,  6 Jul 2012 22:37:30 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS017.bigfish.com
	(10.3.207.155) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 6 Jul 2012 22:37:30 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.163]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Fri, 6 Jul 2012 17:39:37 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDr5cdLAYAgAABHYA=
Date: Fri, 6 Jul 2012 22:39:37 +0000
Message-ID: <CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
In-Reply-To: <88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 22:39:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF3VdxT4N21zNddgmailgm_"

--_000_CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF3VdxT4N21zNddgmailgm_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


On Jul 6, 2012 5:35 PM, "David Nystr=F6m" <David.Nystrom@enea.com<mailto:Da=
vid.Nystrom@enea.com>> wrote:
>
> Yes this was my suggestion, since you might not want to change the native=
sdk kernel headers for all machines in all BSP layers, if the distro is usi=
ng multiple BSP layers, which it probably should be able to do.
> Setting this  with machine overrides in distro.conf  is possible but quit=
e  messy IMHO.
> Furthermore , the nativesdk is set by ?=3D in machine.conf, any distro.co=
nf  wanting to alter this to a global setting can easily override with  =3D

I actually agree and was hoping to move everything possible out of distro.c=
onf files. And make it easy as possible for folks to use meta-fsl-ppc in th=
eir own distro.

-M

>
>
> Sent from Android
>
>
> -----Original Message-----
> From: McClintock Matthew-B29882 [B29882@freescale.com<mailto:B29882@frees=
cale.com>]
> Received: Friday, 06 Jul 2012, 17:48
> To: David Nystr=F6m [David.Nystrom@enea.com<mailto:David.Nystrom@enea.com=
>]
> CC: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org> [yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>]; raj.khem@gmail.com<mailto:raj.khe=
m@gmail.com> [raj.khem@gmail.com<mailto:raj.khem@gmail.com>]
> Subject: Re: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-=
sdk-headers-nativesdk provide linux-libc-headers-nativesdk
>
>
>
> On Fri, Jul 6, 2012 at 5:49 AM, David Nystr=F6m <David.Nystrom@enea.com<m=
ailto:David.Nystrom@enea.com>> wrote:
> > So that about a disto refusing this and possibly other BSP layers ?
> > Should the disto.conf  select of nativesdk be made machine specific on =
all machines in meta-fsl-ppc ? And one added target after a meta-fsl-ppc re=
base would break stuff, I guess.
>
> I don't quite follow... you are suggesting we have
>
> PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D
> "linux-qoriq-sdk-headers-nativesdk"
>
> in the machine.conf files instead?
>
> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto

--_000_CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF3VdxT4N21zNddgmailgm_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <202E95F2D10BE44CAA66E2E3F68ABFDA@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<p><br>
On Jul 6, 2012 5:35 PM, &quot;David Nystr=F6m&quot; &lt;<a href=3D"mailto:D=
avid.Nystrom@enea.com">David.Nystrom@enea.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Yes this was my suggestion, since you might not want to change the nat=
ivesdk kernel headers for all machines in all BSP layers, if the distro is =
using multiple BSP layers, which it probably should be able to do.<br>
&gt; Setting this &nbsp;with machine overrides in distro.conf &nbsp;is poss=
ible but quite &nbsp;messy IMHO.<br>
&gt; Furthermore , the nativesdk is set by ?=3D in machine.conf, any distro=
.conf &nbsp;wanting to alter this to a global setting can easily override w=
ith &nbsp;=3D</p>
<p>I actually agree and was hoping to move everything possible out of distr=
o.conf files. And make it easy as possible for folks to use meta-fsl-ppc in=
 their own distro.
</p>
<p>-M</p>
<p>&gt;<br>
&gt;<br>
&gt; Sent from Android<br>
&gt;<br>
&gt;<br>
&gt; -----Original Message-----<br>
&gt; From: McClintock Matthew-B29882 [<a href=3D"mailto:B29882@freescale.co=
m">B29882@freescale.com</a>]<br>
&gt; Received: Friday, 06 Jul 2012, 17:48<br>
&gt; To: David Nystr=F6m [<a href=3D"mailto:David.Nystrom@enea.com">David.N=
ystrom@enea.com</a>]<br>
&gt; CC: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a> [<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>];
<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a> [<a href=3D"ma=
ilto:raj.khem@gmail.com">raj.khem@gmail.com</a>]<br>
&gt; Subject: Re: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qor=
iq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Jul 6, 2012 at 5:49 AM, David Nystr=F6m &lt;<a href=3D"mailto:=
David.Nystrom@enea.com">David.Nystrom@enea.com</a>&gt; wrote:<br>
&gt; &gt; So that about a disto refusing this and possibly other BSP layers=
 ?<br>
&gt; &gt; Should the disto.conf &nbsp;select of nativesdk be made machine s=
pecific on all machines in meta-fsl-ppc ? And one added target after a meta=
-fsl-ppc rebase would break stuff, I guess.<br>
&gt;<br>
&gt; I don't quite follow... you are suggesting we have<br>
&gt;<br>
&gt; PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D<br>
&gt; &quot;linux-qoriq-sdk-headers-nativesdk&quot;<br>
&gt;<br>
&gt; in the machine.conf files instead?<br>
&gt;<br>
&gt; -M<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>
</body>
</html>

--_000_CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF3VdxT4N21zNddgmailgm_--
