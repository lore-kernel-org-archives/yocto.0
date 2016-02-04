Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B9B4E00C64; Wed,  3 Feb 2016 17:30:46 -0800 (PST)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84AA5E00C5D
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 17:30:45 -0800 (PST)
Received: by mail-pf0-f180.google.com with SMTP id o185so25644763pfb.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 17:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=rWH+mdAiyRbVqczKpFnoxwejaUg0q7F92EFLn5coKuc=;
	b=qmdZ1pp4B0rvquUZd6A1M9wJ6B6pgkzFS7UKSBSc+nOm+QVXu1e38ZyDE3+d9wC+o0
	ifyPp7FuIQbybGtHSkRyusM1aqC/qdbl7mGhi/69khgtE4XE/3hxHckSDaHwEAQ4NhTR
	QIM/MJcBv65RpuGYPDojjjJXsE8hq+NVb0udayY7UpMiHIUxQqoJCUsjLn9oErCKEb73
	3eqtgYK29Psoak/32mdiuCFG34gajAFXpNRjh1c+KmCrYKdd1w4EP+ErxEQXr13efXTN
	5aMK18OPGaJH4uxpbH5d0VnE/w6CCyhOjZLH92d1HKs3+xJpMbesQZ84C0u356CWtwPW
	nc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=rWH+mdAiyRbVqczKpFnoxwejaUg0q7F92EFLn5coKuc=;
	b=gwvlKSevp3ow2wd9H/7Ea200rEGk5YwOucrUiuSC1T6ZMc8h5UxKSjo/xkpVojb+82
	NhfBWIQD3JCNwZLvoXPf7q4NkuAA8n3aMFglL4moxQ45WpEssKl4waJFL6VmTGqWW2Yx
	+5vuLJd8pwzh1pCTvn7Vi22IzdPgNY1dRRc29wtCuhMbebOjJKS4v3IfVku8T2Oe+3G+
	TLVTe7NJIllw5X88L/m9gquqN57L93t7E7JsS4tO2PDq+Ym/lyyA6b8G5yQUveADObZ3
	C6LbFFx/3hkgRua4AZvHFHhqAjHlbDk5IR5aBzIz3052PwnAG0gsdXoORRhqUvbLbiJ1
	oLMA==
X-Gm-Message-State: AG10YOT0irbqTEyF6lFtbYgAv9CQyh85YnpmhdHY3hD8OQKj/77D375HRdlt0Wte7wz5tA==
X-Received: by 10.66.227.196 with SMTP id sc4mr6991335pac.6.1454549444756;
	Wed, 03 Feb 2016 17:30:44 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:78fd:3d34:a298:97f9?
	([2601:646:8802:5d5c:78fd:3d34:a298:97f9])
	by smtp.gmail.com with ESMTPSA id
	m75sm12577788pfj.38.2016.02.03.17.30.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Feb 2016 17:30:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>
Date: Wed, 3 Feb 2016 17:30:38 -0800
Message-Id: <F454D711-5EBF-45CA-9E9C-8344C6A6E558@gmail.com>
References: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>
To: Sridhar Pitchai <sridhar.pitchai@outlook.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error: code model kernel does not support PIC mode
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
X-List-Received-Date: Thu, 04 Feb 2016 01:30:46 -0000
X-Groupsio-MsgNum: 28255
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E6F53B33-C296-4160-88CC-3E8F7C058783";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E6F53B33-C296-4160-88CC-3E8F7C058783
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_230665D6-D76B-47A0-B9EE-CDBF8367EABB"

--Apple-Mail=_230665D6-D76B-47A0-B9EE-CDBF8367EABB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 3, 2016, at 5:24 PM, Sridhar Pitchai =
<sridhar.pitchai@outlook.com> wrote:
>=20
> Hi,
> I trying to write a simple recipe which will be building some static =
libraries. the makefile has the "-fPIC" enabled. when i try to compile =
it using simple yocto recipe, i am getting this error.
>=20
> "
> | =
/home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.=
0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: =
error: code model kernel does not support PIC mode
> |  =
/***********************************************************************
> |  ^

>=20
> "
>=20
> recipe:
>=20
> "
> SUMMARY =3D "TEST"
>=20
> LICENSE =3D "CLOSED"
> PR =3D "r0"
> PROVIDES =3D "pi-swos-bcm-sdk"
>=20
> # BCM SDK inconsistant with parallel make
> PARALLEL_MAKE =3D ""
>=20
> FILESEXTRAPATHS_prepend =3D "${THISDIR}:"
> SRC_URI =3D "file://6.4.8/sdk.tar.gz <file:///6.4.8/sdk.tar.gz> \
>     "
>=20
> MAKEFLAGS_append =3D " -fPIC =E2=80=9C

why do you need this ? get rid of it. Atleast for kernel module part.

> do_compile() {
>     oe_runmake -C =
${WORKDIR}/sdk-all-6.4.8/systems/linux/user/x86-generic_64-3_19
> }
> "
>=20
> Can someone help me on this.
>=20
> thanks,
> Sridhar Pitchai
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_230665D6-D76B-47A0-B9EE-CDBF8367EABB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 3, 2016, at 5:24 PM, Sridhar Pitchai &lt;<a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">Hi,<div class=3D"">I trying =
to write a simple recipe which will be building some static libraries. =
the makefile has the "-fPIC" enabled. when i try to compile it using =
simple yocto recipe, i am getting this error.</div><div class=3D""><br =
class=3D""></div><div class=3D"">"</div><div class=3D""><div class=3D"">| =
/home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.=
0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: =
error: code model kernel does not support PIC mode</div><div class=3D"">| =
&nbsp;/*******************************************************************=
****</div><div class=3D"">| =
&nbsp;^</div></div></div></div></blockquote><div><br =
class=3D""></div><blockquote type=3D"cite" class=3D""><div class=3D""><div=
 dir=3D"ltr" style=3D"font-family: Calibri; font-size: 16px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><div class=3D""><br =
class=3D""></div><div class=3D""><span style=3D"font-size: 12pt;" =
class=3D"">"</span></div><div class=3D""><br class=3D""></div><div =
class=3D"">recipe:</div><div class=3D""><br class=3D""></div><div =
class=3D"">"</div><div class=3D""><div class=3D"">SUMMARY =3D =
"TEST"</div><div class=3D""><br class=3D""></div><div class=3D"">LICENSE =
=3D "CLOSED"</div><div class=3D"">PR =3D "r0"</div><div =
class=3D"">PROVIDES =3D "pi-swos-bcm-sdk"</div><div class=3D""><br =
class=3D""></div><div class=3D""># BCM SDK inconsistant with parallel =
make</div><div class=3D"">PARALLEL_MAKE =3D ""</div><div class=3D""><br =
class=3D""></div><div class=3D"">FILESEXTRAPATHS_prepend =3D =
"${THISDIR}:"</div><div class=3D"">SRC_URI =3D "<a =
href=3D"file:///6.4.8/sdk.tar.gz" =
class=3D"">file://6.4.8/sdk.tar.gz</a><span =
class=3D"Apple-converted-space">&nbsp;</span>\</div><div class=3D"">&nbsp;=
 &nbsp; "</div><div class=3D""><br class=3D""></div><div =
class=3D"">MAKEFLAGS_append =3D " -fPIC =
=E2=80=9C</div></div></div></div></blockquote><div><br =
class=3D""></div><div>why do you need this ? get rid of it. Atleast for =
kernel module part.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><div class=3D""><div class=3D"">do_compile() {</div><div =
class=3D"">&nbsp; &nbsp; oe_runmake -C =
${WORKDIR}/sdk-all-6.4.8/systems/linux/user/x86-generic_64-3_19</div><div =
class=3D"">}</div></div><div class=3D"">"</div><div class=3D""><br =
class=3D""></div><div class=3D"">Can someone help me on this.</div><div =
class=3D""><br class=3D""></div><div class=3D"">thanks,</div><div =
class=3D"">Sridhar Pitchai</div></div><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Calibri; font-size: 16px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_230665D6-D76B-47A0-B9EE-CDBF8367EABB--

--Apple-Mail=_E6F53B33-C296-4160-88CC-3E8F7C058783
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlayqcIACgkQuwUzVZGdMxQQMACfbVSTno+rlYjAUwr0vgAusLro
O4EAljRbksbvM+7hLfXWd1KbcEFMSUQ=
=TVX4
-----END PGP SIGNATURE-----

--Apple-Mail=_E6F53B33-C296-4160-88CC-3E8F7C058783--
