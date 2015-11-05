Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E7FE00AE4; Wed,  4 Nov 2015 19:42:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57668E00AC1
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 19:42:46 -0800 (PST)
Received: by pacdm15 with SMTP id dm15so49025738pac.3
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 19:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=eWT4o+p9/WeEUQf6nlBkWEjpWLXcEKLhqVl0uH4Ot24=;
	b=TTMFWGTPma97+NChaRflsm7VL9xOrHeYWIRzZG0A3SVCIDdFThuy3piKqtEmECvLA6
	wyOYQsQsVZCTWxi6gCfyGMUHv1unOBAMHR/WA/L8b5TfUVgGBQU4T7gywErEmRxyX7NW
	MgNg+WlQyOaEnYKObo7T4+I2zhENADhooLAKHKrZJd1ZnI9Yd7ZTNmnXAnxXPhTfEWHi
	/IEe8vHGGoqiFkHUeOwcq9CWZ3nDaaow1P0k0cPTetRgKyJl4LUZ49lNkieEVdlVnlAq
	CXVKvQVgLRyM6Lv9NJxBDTCaGmSCubpwD5alU9U5HUsg7qOl4owH0OMpWSygPVAbFq4n
	CgWQ==
X-Received: by 10.66.219.163 with SMTP id pp3mr6522822pac.55.1446694966473;
	Wed, 04 Nov 2015 19:42:46 -0800 (PST)
Received: from ?IPv6:2601:646:8601:4580:441f:6745:6fd9:23af?
	([2601:646:8601:4580:441f:6745:6fd9:23af])
	by smtp.gmail.com with ESMTPSA id im9sm4823992pbc.1.2015.11.04.19.42.45
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Nov 2015 19:42:45 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3106\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <062201d1177a$8de30750$a9a915f0$@gmail.com>
Date: Wed, 4 Nov 2015 19:42:37 -0800
Message-Id: <BC63075D-1FE5-4989-879A-E41FBEA29D1F@gmail.com>
References: <062201d1177a$8de30750$a9a915f0$@gmail.com>
To: Roberto <ramatekd@gmail.com>
X-Mailer: Apple Mail (2.3106)
Cc: yocto@yoctoproject.org
Subject: Re: sdcard image does not get updated when I clean u-boot
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
X-List-Received-Date: Thu, 05 Nov 2015 03:42:49 -0000
X-Groupsio-MsgNum: 27180
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8ED4FA84-EE9B-4E0A-8CDA-578265FAE166";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8ED4FA84-EE9B-4E0A-8CDA-578265FAE166
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9FF71C21-3B1E-4764-9C87-F1C8E1D5C3B3"

--Apple-Mail=_9FF71C21-3B1E-4764-9C87-F1C8E1D5C3B3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 4, 2015, at 7:32 PM, Roberto <ramatekd@gmail.com> wrote:
>=20
> Hi All,
>=20
> I have just noticed that if I execute
> bitbake u-boot =E2=80=93c clean
>=20
> and then
> bitbake fsl-image-x11
>=20
> The u-boot file in tmp/deploy/images/xxxx/ gets updated, but the =
.sdcard image file does not get updated.
>=20
> How can I generate the new .sdcard image file that contains the new =
u-boot image file?

you can set the relevant task which is generating the .sdcard image as =
nostamp task


>=20
> Regards,
> Roberto.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_9FF71C21-3B1E-4764-9C87-F1C8E1D5C3B3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 4, 2015, at 7:32 PM, Roberto &lt;<a =
href=3D"mailto:ramatekd@gmail.com" class=3D"">ramatekd@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Hi All,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">I have just noticed that if I =
execute<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">bitbake u-boot =E2=80=93c clean<o:p class=3D""></o:p></div><div=
 style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">and then<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">bitbake fsl-image-x11<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">The =
u-boot file in tmp/deploy/images/xxxx/ gets updated, but the .sdcard =
image file does not get updated.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">How can I generate the new .sdcard =
image file that contains the new u-boot image =
file?</div></div></div></blockquote><div><br class=3D""></div><div>you =
can set the relevant task which is generating the .sdcard image as =
nostamp task</div><div><br class=3D""></div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Regards,<o:p class=3D""></o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Roberto.<o:p class=3D""></o:p></div></div><span =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: ArialMT; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: ArialMT; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_9FF71C21-3B1E-4764-9C87-F1C8E1D5C3B3--

--Apple-Mail=_8ED4FA84-EE9B-4E0A-8CDA-578265FAE166
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlY60DUACgkQuwUzVZGdMxRppwCgiSsjsDOiS3TccQWX09Z+Bmrc
LsUAn1YXW4/KGZWQVLUO2LdcqqOkTTlN
=Dkgm
-----END PGP SIGNATURE-----

--Apple-Mail=_8ED4FA84-EE9B-4E0A-8CDA-578265FAE166--
