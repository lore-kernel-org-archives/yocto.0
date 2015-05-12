Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7264FE004F6; Tue, 12 May 2015 09:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53975E0027F
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 09:22:04 -0700 (PDT)
Received: by pdea3 with SMTP id a3so18405307pde.3
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 09:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=fAqNt0UFbGjeIBoYLCE8xzNzOc0+99j1Rm7j8+BN65I=;
	b=OHhIskLVUE25Cga6tNwNCC0PUdACNUtu/+YlZZlqKJFjuJuj1fwOW2lBoCRBzJtRye
	wZyyOO28i+aIxEyHbXT72+p46cSpBK2fH5ErL/0NIuD9qUn/AIeg77CxW1KDXcYhycrc
	Q3a4yaF+JQWbgxa1Os910IuE8CRIuE6AY78gh/vynwvDLMaVqvC12kPjzugoUGeohaOW
	WbezW3C1XGa/oIYs1Spreu5a5fh/CwuteL203g2h+3cAl4v7telbLJm322Bpa7ZbJDiv
	lqpaCdblVmKEd8+ilOZb/+z2Ga4q6mfxwSlk8GIg6V75GyJNCFhYmpsQGmRDciAzOKcU
	i+mA==
X-Received: by 10.68.65.12 with SMTP id t12mr29727476pbs.118.1431447724615;
	Tue, 12 May 2015 09:22:04 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:ccd0:4222:99ed:8bcf?
	([2601:9:3580:84c:ccd0:4222:99ed:8bcf])
	by mx.google.com with ESMTPSA id
	hj11sm16679018pbd.33.2015.05.12.09.22.03
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 May 2015 09:22:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162CF338@SJEXCHMB12.corp.ad.broadcom.com>
Date: Tue, 12 May 2015 09:22:02 -0700
Message-Id: <7396104D-C871-4A6E-A854-C5A033B65DA3@gmail.com>
References: <9F136EE5FB53D64397ED1089A0E760E0162CF338@SJEXCHMB12.corp.ad.broadcom.com>
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable machine tune?
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
X-List-Received-Date: Tue, 12 May 2015 16:22:08 -0000
X-Groupsio-MsgNum: 24784
Content-Type: multipart/signed;
	boundary="Apple-Mail=_71072A62-9DA2-4381-BF6F-80B2F0DEE312";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_71072A62-9DA2-4381-BF6F-80B2F0DEE312
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B1211F1B-3026-4CFD-AC22-73379DEF4654"

--Apple-Mail=_B1211F1B-3026-4CFD-AC22-73379DEF4654
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 12, 2015, at 7:15 AM, Joel (Xi Zhou) Zhou =
<joel.zhou@broadcom.com> wrote:
>=20
> Hi all,
>=20
> I have a Linux arm64 kernel on early bring-up stage, which can boot =
into console with manually build.
> If I build it from Yocto, a lot of configs be enabled, then the kernel =
result in "Synchronous Abort" error.
>=20

are you using linux-yocto ? or your own. In any case compare the =
resulting .config in both cases to start with
then you can use kernel config fragment technique to enable/disable =
options

> Could anyone kindly tell me how to the auto-tuning feature in Yocto?
>=20

there are many but it depends upon what you are doing.

> Thanks!
> Joel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_B1211F1B-3026-4CFD-AC22-73379DEF4654
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 12, 2015, at 7:15 AM, Joel (Xi Zhou) Zhou &lt;<a =
href=3D"mailto:joel.zhou@broadcom.com" =
class=3D"">joel.zhou@broadcom.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hi =
all,<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I have a =
Linux arm64 kernel on early bring-up stage, which can boot into console =
with manually build.<o:p class=3D""></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">If I build it from Yocto, a lot of configs be enabled, then =
the kernel result in "Synchronous Abort" error.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote><div><br =
class=3D""></div><div>are you using linux-yocto ? or your own. In any =
case compare the resulting .config in both cases to start =
with</div><div>then you can use kernel config fragment technique to =
enable/disable options</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: =
WordSection1; font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Could anyone kindly tell me how to the =
auto-tuning feature in Yocto?<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote><div><br =
class=3D""></div><div>there are many but it depends upon what you are =
doing.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks!<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Joel<o:p class=3D""></o:p></div></div><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Helvetica; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_B1211F1B-3026-4CFD-AC22-73379DEF4654--

--Apple-Mail=_71072A62-9DA2-4381-BF6F-80B2F0DEE312
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVSKKoACgkQuwUzVZGdMxR+BQCglR2vtLEq3G4yMkxnHjf21gXf
SNYAoIqpmP7FXapqdFz5ZOLGJuhdQa55
=hr1N
-----END PGP SIGNATURE-----

--Apple-Mail=_71072A62-9DA2-4381-BF6F-80B2F0DEE312--
