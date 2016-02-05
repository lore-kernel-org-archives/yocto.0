Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8458E00CCC; Fri,  5 Feb 2016 01:15:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.38 listed in list.dnswl.org]
Received: from DUB004-OMC3S29.hotmail.com (dub004-omc3s29.hotmail.com
	[157.55.2.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7C9E00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 01:15:11 -0800 (PST)
Received: from DUB130-W30 ([157.55.2.8]) by DUB004-OMC3S29.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 5 Feb 2016 01:15:10 -0800
X-TMN: [gKbEQPlXlLT4P30P0IeXML3Lu8mCIUxa]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W3021BF7B2487DF73566399DAD20@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Markus Lehtonen <markus.lehtonen@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 5 Feb 2016 09:15:10 +0000
Importance: Normal
In-Reply-To: <8D8D7F9C-EA46-4F48-9298-6D50BA671BE9@linux.intel.com>
References: <DUB130-W75F413446FD2227886136DDAD10@phx.gbl>,
	<8D8D7F9C-EA46-4F48-9298-6D50BA671BE9@linux.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 05 Feb 2016 09:15:10.0859 (UTC)
	FILETIME=[B6C735B0:01D15FF5]
Subject: Re: Signed RPMs
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
X-List-Received-Date: Fri, 05 Feb 2016 09:15:16 -0000
Content-Type: multipart/alternative;
	boundary="_b8b2bf97-7559-4838-b4e0-2ee376959cc3_"

--_b8b2bf97-7559-4838-b4e0-2ee376959cc3_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> Date: Fri=2C 5 Feb 2016 10:00:50 +0200
> Subject: Re: [yocto] Signed RPMs
> From: markus.lehtonen@linux.intel.com
> To: christrobridge@hotmail.com=3B yocto@yoctoproject.org
>=20
> Hi Chris=2C
>=20
>  ...
>=20
> That really should not be needed. What version of poky are you using? I w=
as not able to reproduce your problem. Try building signing-keys=2C does it=
 copy the pubkey to the correct place?>=20

This could well be the issue  - I need gobject introspection so I am using =
poky-contrib ("akanavin/gobject-introspection-experimental:7145f5b9dbd84a26=
fe4b5ee6ab9077b1ff1ee3a5").
I got another error later building the rootfs that mentioned not finding DS=
A.  It may be related to not having a suitable poky=2C but also I am using =
an ECDSA key pair generated with gpg2.
I have cloned a fresh poky (main) instance=2C switched to a DSA signing key=
 and built the signing-keys target from that fine=2C with the RPM-GPG-PUBKE=
Y in sysroots.  So I will bear this in mind in future.
> Cheers=2C
>   Markus
>=20

Cheers=2CChris
 		 	   		  =

--_b8b2bf97-7559-4838-b4e0-2ee376959cc3_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div>&gt=3B Date: Fri=2C=
 5 Feb 2016 10:00:50 +0200<br>&gt=3B Subject: Re: [yocto] Signed RPMs<br>&g=
t=3B From: markus.lehtonen@linux.intel.com<br>&gt=3B To: christrobridge@hot=
mail.com=3B yocto@yoctoproject.org<br>&gt=3B <br>&gt=3B Hi Chris=2C<br>&gt=
=3B <br>&gt=3B &nbsp=3B...<br>&gt=3B <br><span style=3D"font-size: 12pt=3B"=
>&gt=3B That really should not be needed. What version of poky are you usin=
g? I was not able to reproduce your problem. Try building signing-keys=2C d=
oes it copy the pubkey to the correct place?</span></div><div>&gt=3B <br><b=
r></div><div>This could well be the issue &nbsp=3B- I need gobject introspe=
ction so I am using poky-contrib ("akanavin/gobject-introspection-experimen=
tal:7145f5b9dbd84a26fe4b5ee6ab9077b1ff1ee3a5").</div><div><br></div><div><s=
pan style=3D"font-size: 12pt=3B">I got another error later building the roo=
tfs that mentioned not finding DSA. &nbsp=3BIt may be related to not having=
 a suitable poky=2C but also I am using an ECDSA key pair generated with gp=
g2.</span></div><div><span style=3D"font-size: 12pt=3B"><br></span></div><d=
iv><span style=3D"font-size: 12pt=3B">I have cloned a fresh poky (main) ins=
tance=2C switched to a DSA signing key and built the signing-keys target fr=
om that fine=2C with the&nbsp=3B</span>RPM-GPG-PUBKEY in sysroots. &nbsp=3B=
So I will bear this in mind in future.</div><div><br></div><div>&gt=3B Chee=
rs=2C<br>&gt=3B   Markus<br>&gt=3B <br></div><div><span style=3D"font-size:=
 12pt=3B"><br></span></div><div><span style=3D"font-size: 12pt=3B">Cheers=
=2C</span></div><div><div>Chris</div></div><div><br></div> 		 	   		  </div=
></body>
</html>=

--_b8b2bf97-7559-4838-b4e0-2ee376959cc3_--
