Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B84E00D57; Wed, 15 Jun 2016 18:32:46 -0700 (PDT)
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
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62CDEE00D53
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 18:32:44 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id us13so2516520pab.1
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 18:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=bDjx3EWNZ74vcfqlLPaABFH88EQSyw1rmBpNCNyE68w=;
	b=kX3sAj6dewTZH3XRHdFzGyGIVWZaErItIWn3H1ave5L+ozKwZUk+Rgqbop+FAwjR2s
	xjybVssY+MCgAUwD06uH+rfGy0fSNCubYWCRB6Y+3numvEJB6WiAq4RIQ81xj+MLH0Qj
	0jck54g5AgNJygfYSpnzSwNHjV0LZQAxcmWLCPv42wylB+8Q0S0YBGlmAtO431e2c+Ng
	AmAxF9uNlsjpga+dk28XbXSJNOgxTcEL7Drb/d8O2/IKauwvfcR/llrtgfG/9YHeRCN5
	AnJkhEW7dAd89zwaOjFkBihE/wCwSrCZbpcJWMxjXdqgmYyc5PB9SvNJDgE8Qd630R8d
	3WUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=bDjx3EWNZ74vcfqlLPaABFH88EQSyw1rmBpNCNyE68w=;
	b=US0cElmc7IFd1ft3ME2EFek5gW7NCCfhDIdi6DmFI0o6Nwmt9nWMxd26OJcDp60esC
	Mfw6ZGUjn8QYztE6p9pc8Mm9IUtOZvAWphsIKxObRHthSBIGj0fmhBhchTIZUpUNXVOj
	ZStmz8F9xzPa1WW0sLcyM+Y0WS1f5CWSDKF1k16mRCHceBM4xpfbuWkC79il0a96UROn
	+9rEpt4ek3jlhO4+ktzxuxxzlAf4+fREpCysjLZxr6LJ4U9kjIsRLeI7ktxlKTatZxSq
	/m3yOq0qfvxytx8pVptHLuNkVuFtlL5EdQ69C7BydzTfGB4hgH4bE2zxn6D/pCAnanqB
	uY7A==
X-Gm-Message-State: ALyK8tJVCehvtSRP+outEKMxwU6N2Ogda5F+zucgSuPKAWenmmU/KI3Rigt2VIT3b0sWkg==
X-Received: by 10.66.221.66 with SMTP id qc2mr1919477pac.147.1466040763655;
	Wed, 15 Jun 2016 18:32:43 -0700 (PDT)
Received: from [192.168.0.6] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	x187sm55758903pfx.87.2016.06.15.18.32.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 18:32:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <014d01d1c318$5e41b150$1ac513f0$@gasera.fi>
Date: Wed, 15 Jun 2016 18:32:38 -0700
Message-Id: <3034ED0A-55DC-4B0B-9FF8-C34A2D3C9D73@gmail.com>
References: <014d01d1c318$5e41b150$1ac513f0$@gasera.fi>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Handling of partial Yocto image updates
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
X-List-Received-Date: Thu, 16 Jun 2016 01:32:46 -0000
X-Groupsio-MsgNum: 30567
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B290075E-F266-48D9-8264-BE0EAD9C7E2C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B290075E-F266-48D9-8264-BE0EAD9C7E2C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_58DCDF68-CDFC-4A7E-9508-998A5A67658C"

--Apple-Mail=_58DCDF68-CDFC-4A7E-9508-998A5A67658C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jun 10, 2016, at 6:02 AM, Andreas Enbacka =
<andreas.enbacka@gasera.fi> wrote:
>=20
> Hello,
>=20
> I would like to ask the community what is the preferred way of =
handling partial image / package updates using Yocto, once an image has =
been deployed to a production system?
> In most cases, once we have an image deployed it might be necessary to =
update some individual packages and e.g., configuration files, and it is =
not desired to update / replace the entire image. What is the Yocto best =
practices concerning this? Any information would be greatly appreciated.
>=20

Usually, you can setup feed servers and maintain feeds, see how angstrom =
distribution is doing it. It involves some setup and discipline of =
ensuring that package upgrade
paths are honored and kept intact when making changes to recipes and =
also maintain a PR server to manage revisions.

Other option is to do full firmware upgrade and you have to have =
mechanisms of your own e.g. via initramfs or other methods like TR69 =
agents etc. yocto/OE does not
have default tooling for this

there are commercial solutions like resin.io and mender.io which offers =
OTA solutions on yocto/OE as well.

> Best regards,
> Andreas Enbacka
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_58DCDF68-CDFC-4A7E-9508-998A5A67658C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 10, 2016, at 6:02 AM, Andreas Enbacka &lt;<a =
href=3D"mailto:andreas.enbacka@gasera.fi" =
class=3D"">andreas.enbacka@gasera.fi</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D"">Hello,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">I would like to ask the community what is the =
preferred way of handling partial image / package updates using Yocto, =
once an image has been deployed to a production system?<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">In most cases, once we have an image deployed =
it might be necessary to update some individual packages and e.g., =
configuration files, and it is not desired to update / replace the =
entire image. What is the Yocto best practices concerning this? Any =
information would be greatly appreciated.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div></div></div></blockquote><div><br =
class=3D""></div><div>Usually, you can setup feed servers and maintain =
feeds, see how angstrom distribution is doing it. It involves some setup =
and discipline of ensuring that package upgrade</div><div>paths are =
honored and kept intact when making changes to recipes and also maintain =
a PR server to manage revisions.</div><div><br class=3D""></div><div>Other=
 option is to do full firmware upgrade and you have to have mechanisms =
of your own e.g. via initramfs or other methods like TR69 agents etc. =
yocto/OE does not</div><div>have default tooling for this</div><div><br =
class=3D""></div><div>there are commercial solutions like <a =
href=3D"http://resin.io" class=3D"">resin.io</a> and <a =
href=3D"http://mender.io" class=3D"">mender.io</a> which offers OTA =
solutions on yocto/OE as well.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span lang=3D"EN-US" class=3D"">Best regards,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D"">Andreas Enbacka<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
lang=3D"EN-US" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div></div><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: rgb(149, 79, 114); text-decoration: underline; =
font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_58DCDF68-CDFC-4A7E-9508-998A5A67658C--

--Apple-Mail=_B290075E-F266-48D9-8264-BE0EAD9C7E2C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldiAbkACgkQuwUzVZGdMxTkbwCcCvnZjURqmiBaF5ap4ut9fysV
apEAn3Bs9WO2/t5+7Sa3Meg+YeQWuy8w
=UNd3
-----END PGP SIGNATURE-----

--Apple-Mail=_B290075E-F266-48D9-8264-BE0EAD9C7E2C--
