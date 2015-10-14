Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F416E00B89; Wed, 14 Oct 2015 08:03:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S26.hotmail.com (dub004-omc3s26.hotmail.com
	[157.55.2.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70BDBE00B5A;
	Wed, 14 Oct 2015 08:03:10 -0700 (PDT)
Received: from DUB128-W55 ([157.55.2.9]) by DUB004-OMC3S26.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 14 Oct 2015 08:03:09 -0700
X-TMN: [+GR1t+zVh9VshaOwvsTYHId8R1ao3KvWzYlVwj9cf8A=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W55D7EF4D72BB9C2B271B83983F0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Date: Wed, 14 Oct 2015 15:03:09 +0000
Importance: Normal
In-Reply-To: <DUB128-W2475E70DAFB5BA10DA6D87983F0@phx.gbl>
References: <DUB128-W274735BE50FEAA82C46F3698300@phx.gbl>, ,
	<DUB128-W466DFC4D5EA10698ABF1FE98300@phx.gbl>, ,
	<561D67CD.4000200@linux.intel.com>, ,
	<DUB128-W7596271B8640C5FEE4B99D98300@phx.gbl>,
	<DUB128-W2475E70DAFB5BA10DA6D87983F0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Oct 2015 15:03:09.0941 (UTC)
	FILETIME=[7096CA50:01D10691]
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
X-List-Received-Date: Wed, 14 Oct 2015 15:03:15 -0000
Content-Type: multipart/alternative;
	boundary="_0589f9a2-9ae4-42dd-9692-0c535573aa8c_"

--_0589f9a2-9ae4-42dd-9692-0c535573aa8c_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

The problem has been fixed with changing the CONFIG_FEATURE_DATE_NANO in bu=
sybox's defconfig.
I don't know which of the 2 defconfigs is responsible though.

From: djnass_18@hotmail.com
To: leonardo.sandoval.gonzalez@linux.intel.com=3B yocto@yoctoproject.org=3B=
 yocto-bounces@yoctoproject.org=3B meta-freescale@yoctoproject.org
Date: Wed=2C 14 Oct 2015 00:42:44 +0000
Subject: Re: [yocto] FW: busybox date cli does not support %N (nanoseconds)

=0A=
=0A=
=0A=
I was looking around for all busybox related files  under <yocto_root>/sour=
ces and found these 2 busybox defconfigs which look promising

./poky/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
and
./poky/meta/recipes-core/busybox/busybox-1.20.2/defconfig

these are not exactly same:
diff ./poky/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defcon=
fig ./poky/meta/recipes-core/busybox/busybox-1.20.2/defconfig
3=2C4c3=2C4
< # Busybox version: 1.19.3
< # Wed Nov 30 09:33:16 2011
---
> # Busybox version: 1.20.2
> # Mon Aug 20 17:01:45 2012

but most importantly they both had disabled this related option:

# CONFIG_FEATURE_DATE_NANO is not set

The question is =2C in which one of the 2 should I enable it so that busybo=
x's "date +%N" function will understand and export nanoseconds?

thank you in advance for your help!


From: djnass_18@hotmail.com
To: leonardo.sandoval.gonzalez@linux.intel.com
Subject: RE: [yocto] FW: busybox date cli does not support %N (nanoseconds)
Date: Tue=2C 13 Oct 2015 20:51:33 +0000

=0A=
=0A=
=0A=
Yes it is=2C
sorry for the omission - it was only in the email.
The problem persists.

> Date: Tue=2C 13 Oct 2015 15:21:33 -0500
> From: leonardo.sandoval.gonzalez@linux.intel.com
> To: djnass_18@hotmail.com
> Subject: Re: [yocto] FW: busybox date cli does not support %N (nanosecond=
s)
>=20
> isn't it date +%N? (with the plus sign)
>=20
> On 10/13/2015 02:12 PM=2C Thanassis Silis wrote:
> >
> >
> > From: djnass_18@hotmail.com
> > To: yocto-bounces@yoctoproject.org
> > Subject: busybox date cli does not support %N (nanoseconds)
> > Date: Tue=2C 13 Oct 2015 15:23:20 +0000
> >
> >
> >
> >
> > Hi all=2C
> > I am building an fsl-image-test and the date command when run as "date =
%N" outputs %N instead on the nanoseconds.
> >
> > what options do I have to get nanoseconds?
> >
> > perhaps I have missed a kernel option?
> > perhaps I can use something else to grab nanoseconds in the shell?
> >
> > thank you
> >
> >   		 	   		   		 	   	=09
> >
> >
> >
 		 	   		   		 	   		  =0A=

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_0589f9a2-9ae4-42dd-9692-0c535573aa8c_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>The problem has been fixed with =
changing the CONFIG_FEATURE_DATE_NANO in busybox's defconfig.<br>I don't kn=
ow which of the 2 defconfigs is responsible though.<br><br><div><hr id=3D"s=
topSpelling">From: djnass_18@hotmail.com<br>To: leonardo.sandoval.gonzalez@=
linux.intel.com=3B yocto@yoctoproject.org=3B yocto-bounces@yoctoproject.org=
=3B meta-freescale@yoctoproject.org<br>Date: Wed=2C 14 Oct 2015 00:42:44 +0=
000<br>Subject: Re: [yocto] FW: busybox date cli does not support %N (nanos=
econds)<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">I was looking around for all busybox related files&nbsp=3B=
 under &lt=3Byocto_root&gt=3B/sources and found these 2 busybox defconfigs =
which look promising<br><br>./poky/meta-yocto/recipes-core/busybox/busybox-=
1.20.2/poky-tiny/defconfig<br>and<br>./poky/meta/recipes-core/busybox/busyb=
ox-1.20.2/defconfig<br><br>these are not exactly same:<br>diff ./poky/meta-=
yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig ./poky/meta/r=
ecipes-core/busybox/busybox-1.20.2/defconfig<br>3=2C4c3=2C4<br>&lt=3B # Bus=
ybox version: 1.19.3<br>&lt=3B # Wed Nov 30 09:33:16 2011<br>---<br>&gt=3B =
# Busybox version: 1.20.2<br>&gt=3B # Mon Aug 20 17:01:45 2012<br><br>but m=
ost importantly they both had disabled this related option:<br><br># CONFIG=
_FEATURE_DATE_NANO is not set<br><br>The question is =2C in which one of th=
e 2 should I enable it so that busybox's "date +%N" function will understan=
d and export nanoseconds?<br><br>thank you in advance for your help!<br><br=
><br><div><hr id=3D"ecxstopSpelling">From: djnass_18@hotmail.com<br>To: leo=
nardo.sandoval.gonzalez@linux.intel.com<br>Subject: RE: [yocto] FW: busybox=
 date cli does not support %N (nanoseconds)<br>Date: Tue=2C 13 Oct 2015 20:=
51:33 +0000<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">Yes it is=2C<br>sorry for the omission - it was only in th=
e email.<br>The problem persists.<br><br><div>&gt=3B Date: Tue=2C 13 Oct 20=
15 15:21:33 -0500<br>&gt=3B From: leonardo.sandoval.gonzalez@linux.intel.co=
m<br>&gt=3B To: djnass_18@hotmail.com<br>&gt=3B Subject: Re: [yocto] FW: bu=
sybox date cli does not support %N (nanoseconds)<br>&gt=3B <br>&gt=3B isn't=
 it date +%N? (with the plus sign)<br>&gt=3B <br>&gt=3B On 10/13/2015 02:12=
 PM=2C Thanassis Silis wrote:<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &=
gt=3B From: djnass_18@hotmail.com<br>&gt=3B &gt=3B To: yocto-bounces@yoctop=
roject.org<br>&gt=3B &gt=3B Subject: busybox date cli does not support %N (=
nanoseconds)<br>&gt=3B &gt=3B Date: Tue=2C 13 Oct 2015 15:23:20 +0000<br>&g=
t=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &g=
t=3B Hi all=2C<br>&gt=3B &gt=3B I am building an fsl-image-test and the dat=
e command when run as "date %N" outputs %N instead on the nanoseconds.<br>&=
gt=3B &gt=3B<br>&gt=3B &gt=3B what options do I have to get nanoseconds?<br=
>&gt=3B &gt=3B<br>&gt=3B &gt=3B perhaps I have missed a kernel option?<br>&=
gt=3B &gt=3B perhaps I can use something else to grab nanoseconds in the sh=
ell?<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B thank you<br>&gt=3B &gt=3B<br>&gt=3B=
 &gt=3B   		 	   		   		 	   		<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B=
 &gt=3B<br></div> 		 	   		  </div></div> 		 	   		  </div>=0A=
<br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div> 		 	   		  </div></body=
>
</html>=

--_0589f9a2-9ae4-42dd-9692-0c535573aa8c_--
