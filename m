Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C84BDE0073D; Thu, 14 Jan 2016 09:47:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10142E00444
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:47:15 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id 65so103122572pff.2
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=pp9yLzK019/QVNxo6ZFR4qvyuKD6F12FJK1eQx/iruw=;
	b=xCPv6rLqjEEBct9VfwWwd89+43GzRRD8HaMLNU2P9t57bC2ShNRHFTLC3wRqAR3rQ4
	FS5K4SM7romllXArMuara72sFpJnprb9tl11KONdaLKhVPmJ4tUkOeEsWbhAr5XRgcGL
	6x1Q3FARElqutCDuVMYmsbZxFVLZMhvpnTbKFiPMq9OIsbPl1EN4YGfIGJ2cUskQQtGd
	z5qNZQhnDe8etPxY4N+lT+UogH7CZcG20ZzPVYAkieqtHmAE0lmXCaH6Fix3J/pjeC40
	QblvXXNMgCEUNFWJsRU3Z5eL8LY3xW1ftZc/h5oTsTOo9J6Da3Zlpjx2Aw0D5aMeYThI
	sFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=pp9yLzK019/QVNxo6ZFR4qvyuKD6F12FJK1eQx/iruw=;
	b=X13tnkmfSn9i/onV5y3YefsI+NPSdUwYasXsafKTkRiPqO0DsMFPFmH2YQs6MO6Yp3
	k5j4LG1jMBVzyFj3ONW9xWWfkerG9HEl92A/9X8wVg+8bcTmaG5+s+xndba52nNdqGZa
	PFDj++hQh8byS/Hgbp/YPiLAwksE4PGUo5QS6bH7RTReT7r+4DLoiIIGEt4cE80h1iwj
	mgMrPh/KiH5vWlWhM0YdHEEEfy9wt35fTcCRR5ZMWtZ0Jx9dh4YCKKe3nKOynm0a7N7H
	2TESWCptPNI1PJP72gYPUZ5RH9D3fsVM5BZY3gxySdeaSzQXr2s0derzPsRlBn9I8nwT
	NOEg==
X-Gm-Message-State: ALoCoQmTEjZPHd+UQA3JYa1WLGnOrtbySuySn7iqhqeHbX2/S30sJT88OcI401G6gjs27OjCzJh2DOmme2kI0hS4Hf4P0QHtIA==
X-Received: by 10.98.14.80 with SMTP id w77mr7919148pfi.152.1452793635500;
	Thu, 14 Jan 2016 09:47:15 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28?
	([2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28])
	by smtp.gmail.com with ESMTPSA id
	o67sm10656333pfa.58.2016.01.14.09.47.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jan 2016 09:47:14 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <SNT150-W43B1B9FC32074EB6CC85B582CC0@phx.gbl>
Date: Thu, 14 Jan 2016 09:47:09 -0800
Message-Id: <8479DDD6-CFD8-433E-8BF6-86ECD1AAF82D@gmail.com>
References: <SNT150-W43B1B9FC32074EB6CC85B582CC0@phx.gbl>
To: RayBloodworth <k870818319@outlook.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change the order of package installation
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
X-List-Received-Date: Thu, 14 Jan 2016 17:47:18 -0000
X-Groupsio-MsgNum: 27994
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8F0ACC38-423C-434C-A549-A273F1623713";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8F0ACC38-423C-434C-A549-A273F1623713
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_26C6BF61-E373-45A4-A2F9-675581499FE2"

--Apple-Mail=_26C6BF61-E373-45A4-A2F9-675581499FE2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 14, 2016, at 1:58 AM, RayBloodworth <k870818319@outlook.com> =
wrote:
>=20
> Hi, everyone
>=20
>    I'm using the dizzy branch of freescale yocto project to build =
image. When do_rootfs is done, I found that package "base-files" wasn't =
the first order of installation.
>    Since I want do some modify like "/bin -> /usr/bin" in =
"base-files", package "base-files" must be the first order of =
installation.
>    Could anyone help me with this issue?

There is a separate thread going on about merging /usr and /
I am not sure what you want to do but symlinking /bin and /usr/bin might =
involve more that
just post processing.

>=20
> Best regards,
> Ray
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_26C6BF61-E373-45A4-A2F9-675581499FE2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 14, 2016, at 1:58 AM, RayBloodworth &lt;<a =
href=3D"mailto:k870818319@outlook.com" =
class=3D"">k870818319@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">Hi, =
everyone<div class=3D""><br class=3D""></div><div class=3D"">&nbsp; =
&nbsp;I'm using the dizzy branch of freescale yocto project to build =
image. When do_rootfs is done, I found that package "base-files" wasn't =
the first order of installation.&nbsp;</div><div class=3D"">&nbsp; =
&nbsp;Since I want do some modify like "/bin -&gt; /usr/bin" in =
"base-files",&nbsp;<span style=3D"font-size: 12pt;" class=3D"">package =
"base-files"</span><span style=3D"font-size: 12pt;" class=3D"">&nbsp;must =
be the first order of installation.</span></div><div class=3D"">&nbsp; =
&nbsp;Could anyone help me with this =
issue?</div></div></div></blockquote><div><br class=3D""></div><div>There =
is a separate thread going on about merging /usr and /</div><div>I am =
not sure what you want to do but symlinking /bin and /usr/bin might =
involve more that</div><div>just post processing.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; =
font-size: 16px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><div =
class=3D""><br class=3D""></div><div class=3D"">Best regards,</div><div =
class=3D"">Ray</div></div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=
=9B=85=E9=BB=91; font-size: 16px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">yocto mailing list</span><br =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: 16px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: 16px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_26C6BF61-E373-45A4-A2F9-675581499FE2--

--Apple-Mail=_8F0ACC38-423C-434C-A549-A273F1623713
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaX3yEACgkQuwUzVZGdMxSI9QCcD1+z0qUsS1KDdiJHMyYQ1zbF
rjQAnjSuvRGqc0ZmrL43MdajcUOhR0pQ
=h5KJ
-----END PGP SIGNATURE-----

--Apple-Mail=_8F0ACC38-423C-434C-A549-A273F1623713--
