Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C1CE00A49; Thu, 15 Oct 2015 05:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.161 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Oct 2015 05:11:59 PDT
Received: from DUB004-OMC2S22.hotmail.com (dub004-omc2s22.hotmail.com
	[157.55.1.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E2EE00A49;
	Thu, 15 Oct 2015 05:11:59 -0700 (PDT)
Received: from DUB128-W59 ([157.55.1.137]) by DUB004-OMC2S22.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 15 Oct 2015 05:10:54 -0700
X-TMN: [+DXoQ/VDHyctoe3ebV4TtTdEnSjQh/AFZfB6+xTgFPU=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W59B996ECC1FE6D92BDEC25983E0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 15 Oct 2015 12:10:54 +0000
Importance: Normal
In-Reply-To: <1973732.RxklpD0YQN@peggleto-mobl.ger.corp.intel.com>
References: <DUB128-W274735BE50FEAA82C46F3698300@phx.gbl>
	<DUB128-W2475E70DAFB5BA10DA6D87983F0@phx.gbl>
	<DUB128-W55D7EF4D72BB9C2B271B83983F0@phx.gbl>,
	<1973732.RxklpD0YQN@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Oct 2015 12:10:54.0916 (UTC)
	FILETIME=[8AD8E040:01D10742]
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Subject: Re: FW: busybox date cli does not support %N (nanoseconds)
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
X-List-Received-Date: Thu, 15 Oct 2015 12:12:02 -0000
Content-Type: multipart/alternative;
	boundary="_c59b4e1e-b160-4c13-b3dc-c215bc3c8bce_"

--_c59b4e1e-b160-4c13-b3dc-c215bc3c8bce_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

nope=2C DISTRO =3D "poky" in my local.conf.
thank you for clearing this up!


> From: paul.eggleton@linux.intel.com
> To: yocto@yoctoproject.org
> CC: djnass_18@hotmail.com=3B leonardo.sandoval.gonzalez@linux.intel.com=
=3B yocto-bounces@yoctoproject.org=3B meta-freescale@yoctoproject.org
> Subject: Re: [yocto] FW: busybox date cli does not support %N (nanosecond=
s)
> Date: Wed=2C 14 Oct 2015 16:21:11 +0100
>=20
> On Wednesday 14 October 2015 15:03:09 Thanassis Silis wrote:
> > The problem has been fixed with changing the CONFIG_FEATURE_DATE_NANO i=
n
> > busybox's defconfig. I don't know which of the 2 defconfigs is responsi=
ble
> > though.
>=20
> Unless you're using DISTRO =3D "poky-tiny" then it's not the one in the=20
> poky-tiny subdirectory in meta-yocto.
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
 		 	   		  =

--_c59b4e1e-b160-4c13-b3dc-c215bc3c8bce_
Content-Type: text/html; charset="iso-8859-7"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>nope=2C DISTRO =3D "poky" in my =
local.conf.<br>thank you for clearing this up!<br><br><br><div>&gt=3B From:=
 paul.eggleton@linux.intel.com<br>&gt=3B To: yocto@yoctoproject.org<br>&gt=
=3B CC: djnass_18@hotmail.com=3B leonardo.sandoval.gonzalez@linux.intel.com=
=3B yocto-bounces@yoctoproject.org=3B meta-freescale@yoctoproject.org<br>&g=
t=3B Subject: Re: [yocto] FW: busybox date cli does not support %N (nanosec=
onds)<br>&gt=3B Date: Wed=2C 14 Oct 2015 16:21:11 +0100<br>&gt=3B <br>&gt=
=3B On Wednesday 14 October 2015 15:03:09 Thanassis Silis wrote:<br>&gt=3B =
&gt=3B The problem has been fixed with changing the CONFIG_FEATURE_DATE_NAN=
O in<br>&gt=3B &gt=3B busybox's defconfig. I don't know which of the 2 defc=
onfigs is responsible<br>&gt=3B &gt=3B though.<br>&gt=3B <br>&gt=3B Unless =
you're using DISTRO =3D "poky-tiny" then it's not the one in the <br>&gt=3B=
 poky-tiny subdirectory in meta-yocto.<br>&gt=3B <br>&gt=3B Cheers=2C<br>&g=
t=3B Paul<br>&gt=3B <br>&gt=3B -- <br>&gt=3B <br>&gt=3B Paul Eggleton<br>&g=
t=3B Intel Open Source Technology Centre<br></div> 		 	   		  </div></body>
</html>=

--_c59b4e1e-b160-4c13-b3dc-c215bc3c8bce_--
