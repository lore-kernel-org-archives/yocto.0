Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42EFEE00D8E; Wed, 27 Apr 2016 05:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S1.hotmail.com (dub004-omc3s1.hotmail.com
	[157.55.2.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A278EE00D86
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 05:45:47 -0700 (PDT)
Received: from DUB130-W31 ([157.55.2.8]) by DUB004-OMC3S1.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 27 Apr 2016 05:45:45 -0700
X-TMN: [khv8OuTvFMf5fTlTdWLCKsfw5khXZX3E]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W31676CE4CDCC5D6C77FA5DDA640@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, Zhenhua Luo
	<zhenhua.luo@nxp.com>
Date: Wed, 27 Apr 2016 13:45:45 +0100
Importance: Normal
In-Reply-To: <5720B2A9.7020204@linux.intel.com>
References: <54885.10.252.24.10.1461091271.squirrel@linux.intel.com>,
	<DUB130-W1404A31E54DC5663F194CFDA620@phx.gbl>,
	<AM2PR04MB06743A619EEE3F06D9F01DCEEE630@AM2PR04MB0674.eurprd04.prod.outlook.com>,
	<5720B2A9.7020204@linux.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Apr 2016 12:45:45.0915 (UTC)
	FILETIME=[B7BB40B0:01D1A082]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Fwd: gobject introspection release notes]
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
X-List-Received-Date: Wed, 27 Apr 2016 12:45:51 -0000
Content-Type: multipart/alternative;
	boundary="_c171b4bc-fed5-41c1-ac99-0b03a167ffba_"

--_c171b4bc-fed5-41c1-ac99-0b03a167ffba_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Subject: Re: [yocto] [Fwd: gobject introspection release notes]
> To: zhenhua.luo@nxp.com=3B christrobridge@hotmail.com
> CC: yocto@yoctoproject.org
> From: alexander.kanavin@linux.intel.com
> Date: Wed=2C 27 Apr 2016 15:38:01 +0300
>=20
> On 04/26/2016 11:05 AM=2C Zhenhua Luo wrote:
> > Any ideas as to why "qemu-ppc64 crashes out immediately"?
> >
> > I can confirm the build ends in a segfault when I tried building
> > gobject-introspection for the t1042d4rdb-64b machine.
> >
> > */[Luo Zhenhua-B19537] This is a gobject-introspection support issue of
> > QEMU PPC64=2C the fix is not available now=2C you can use the following
> > workaround to bypass the issue. /*
> >
> > */http://git.yoctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README#n18/*
>=20
> I'm afraid disabling introspection data is not an acceptable solution=20
> for Chris=2C because he does want to have that data.
>=20
> Also=2C I'll send a fix to disable building of introspection data on all=
=20
> ppc64 machines for now.
>=20
> Alex

Thanks Alex.
This is not urgent and with this processor there is the option of using 32-=
bit mode.  So if the new commit fixes the 32-bit machine then that would be=
 an acceptable alternative for now.
I like to fix things so I am curious about the qemu-ppc64 crash but realise=
 I can't afford to spend much time on it!
Regards=2CChris
 		 	   		  =

--_c171b4bc-fed5-41c1-ac99-0b03a167ffba_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><div>&gt=3B Subject: Re: [yocto]=
 [Fwd: gobject introspection release notes]<br>&gt=3B To: zhenhua.luo@nxp.c=
om=3B christrobridge@hotmail.com<br>&gt=3B CC: yocto@yoctoproject.org<br>&g=
t=3B From: alexander.kanavin@linux.intel.com<br>&gt=3B Date: Wed=2C 27 Apr =
2016 15:38:01 +0300<br>&gt=3B <br>&gt=3B On 04/26/2016 11:05 AM=2C Zhenhua =
Luo wrote:<br>&gt=3B &gt=3B Any ideas as to why "qemu-ppc64 crashes out imm=
ediately"?<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B I can confirm the build ends i=
n a segfault when I tried building<br>&gt=3B &gt=3B gobject-introspection f=
or the t1042d4rdb-64b machine.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B */[Luo Zhe=
nhua-B19537] This is a gobject-introspection support issue of<br>&gt=3B &gt=
=3B QEMU PPC64=2C the fix is not available now=2C you can use the following=
<br>&gt=3B &gt=3B workaround to bypass the issue. /*<br>&gt=3B &gt=3B<br>&g=
t=3B &gt=3B */http://git.yoctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README=
#n18/*<br>&gt=3B <br>&gt=3B I'm afraid disabling introspection data is not =
an acceptable solution <br>&gt=3B for Chris=2C because he does want to have=
 that data.<br>&gt=3B <br>&gt=3B Also=2C I'll send a fix to disable buildin=
g of introspection data on all <br>&gt=3B ppc64 machines for now.<br>&gt=3B=
 <br>&gt=3B Alex<br></div><div><br></div><div>Thanks Alex.</div><div><br></=
div><div>This is not urgent and with this processor there is the option of =
using 32-bit mode. &nbsp=3BSo if the new commit fixes the 32-bit machine th=
en&nbsp=3Bthat&nbsp=3Bwould be an acceptable alternative for now.</div><div=
><br></div><div>I like to fix things so I am curious about the qemu-ppc64 c=
rash but realise I can't afford to spend much time on it!</div><div><br></d=
iv><div>Regards=2C</div><div>Chris</div><div><br></div> 		 	   		  </div></=
body>
</html>=

--_c171b4bc-fed5-41c1-ac99-0b03a167ffba_--
