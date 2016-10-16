Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF061E00C43; Sun, 16 Oct 2016 11:33:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 184A7E00C38
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:33:35 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id s8so11220195pfj.2
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=S+/GZMCHP907JCsBmPMDoNBqbqn7KmAh53gWH2O/nXY=;
	b=cQQ9gVIiGoiUDUBq4dlrqxg7W/nCMWLwundTHKZCJ77I/jkUGzXRJ3vONy68Bpo32k
	RqotKIOWPqoL4N2UCUKhfs3veShFANwz9NuUfK2jyR/8J3vUct8ce5V05mIHa0TJtVKr
	ZxFsB21XxnH5m7kCDu5s05qOrFgXASjRwv5ejtK/LZFkW84zU+K8VK07i5QgRu0/W4Sa
	5sWx2uF8MEkmbSW14JUuSZKflFGzsvVrj1Zh96OH/4JyMGYIFaAX1f5fdwaMID8bdIli
	qUvW16M7evU1gk9d5MW/Ykp7n7zv01GjMUtjMjwhssIIfR4FS5HXGfgOeur01SPQ0O4w
	Rt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=S+/GZMCHP907JCsBmPMDoNBqbqn7KmAh53gWH2O/nXY=;
	b=Rt5qx/TXFkVfL14dnosWlZs9rsUflcbplzbKue9ihc8zzxg+gArHqDbI6szyg2IH5v
	sP/390N75lNLKxHnFG49nA7BN5SoCkvqnUGJ2p8sgrTsQQ+PEa5awo2u2KRd6DT5la3/
	qmYiu8qPAp+Su0ihPailY2gmweg9zNngLTkMNrszHW28XWZR/Dh0RmBiOAgYP167l5yP
	nne8tN2PBZniZSHPKBO9DTjn2daIiwolIWjeOaAfVJTIHCaH1pSfGN9/D9b8OWcoEw+U
	L/UMlrsVCgjikWXoF7zGC2Mg43PGPfpNhdQ/DCOD0sulsOqEADiNUqg6Ik4ohUC9OxQa
	eOTw==
X-Gm-Message-State: AA6/9Rn4SJlbgGMf9MOul/40eJp1HJUNZ2zZxxR3fFTl4oox/po5phxOsCuZ169zZ08x5g==
X-Received: by 10.98.184.25 with SMTP id p25mr32186164pfe.56.1476642815633;
	Sun, 16 Oct 2016 11:33:35 -0700 (PDT)
Received: from ?IPv6:2600:1010:b026:70df:d54d:70d9:9262:3840?
	([2600:1010:b026:70df:d54d:70d9:9262:3840])
	by smtp.gmail.com with ESMTPSA id
	f81sm41942206pfd.84.2016.10.16.11.33.34
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 16 Oct 2016 11:33:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <63f678382e5d4d6a9c8ce92b0154235b@nalasexr02c.na.qualcomm.com>
Date: Sun, 16 Oct 2016 11:33:26 -0700
Message-Id: <0D0B6937-8FBC-4E43-8253-4283FE2ED84B@gmail.com>
References: <63f678382e5d4d6a9c8ce92b0154235b@nalasexr02c.na.qualcomm.com>
To: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conflict between multilib glibc and non-multlib glibc
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
X-List-Received-Date: Sun, 16 Oct 2016 18:33:38 -0000
X-Groupsio-MsgNum: 32433
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E6795496-1131-4954-901D-A2AA3155F760";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E6795496-1131-4954-901D-A2AA3155F760
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A23E1628-266F-475A-A1F6-CC8E568B4E31"

--Apple-Mail=_A23E1628-266F-475A-A1F6-CC8E568B4E31
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 11, 2016, at 4:53 PM, Stroz, Glenn <gstroz@qti.qualcomm.com> =
wrote:
>=20
> Hi,
>=20
> We have a project running an aarch64 compatible processor. For =
backward compatibility with some internal software packages, we=E2=80=99re=
 using the armv7a-vfp machine type as a multilib lib32 variant. However, =
we have found that when attempting to install both lib32-glibc and glibc =
we encounter a file conflict in the root image.
>=20
> ERROR: Multilib check error: duplicate files =
/local/mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq809=
6-oe-linux/machine-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h =
/local/mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq809=
6-oe-linux/machine- -image/1.0-r0/rootfs/usr/include/fpu_control.h is =
not the same
>=20
> This is because the fpu_control.h file varies based on the machine =
architecture (in this case armv7-vfp and aarch64). Is this a known bug? =
If so, what is the suggested solution? We would like to keep both 32 and =
64 bit libraries if possible.

I think you are first one running into it. packaging part can be easily =
fixed by adding
oe_multilib_header fpu_control.h in do_install_append of glibc or some =
such

Once you do that you have to also ensure that the includes are happening =
properly based upon multilib
in packages.

however keep in mind that multibs were designed to run precompiled =
software not develop/compile
one app in different multilib as you are doing here thats why you see =
the error.

>=20
> -Glenn
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_A23E1628-266F-475A-A1F6-CC8E568B4E31
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 11, 2016, at 4:53 PM, Stroz, Glenn &lt;<a =
href=3D"mailto:gstroz@qti.qualcomm.com" =
class=3D"">gstroz@qti.qualcomm.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D"">Hi,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">We have a =
project running an aarch64 compatible processor. For backward =
compatibility with some internal software packages, we=E2=80=99re using =
the armv7a-vfp machine type as a multilib lib32 variant. However, we =
have found that when attempting to install both lib32-glibc and glibc we =
encounter a file conflict in the root image.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
Multilib check error: duplicate files =
/local/mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq809=
6-oe-linux/machine-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h =
/local/mnt/workspace2/gstroz/LE-UM-yocto2/poky/build/tmp-glibc/work/apq809=
6-oe-linux/machine- -image/1.0-r0/rootfs/usr/include/fpu_control.h is =
not the same<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">This is because the fpu_control.h file varies based on the =
machine architecture (in this case armv7-vfp and aarch64). Is this a =
known bug? If so, what is the suggested solution? We would like to keep =
both 32 and 64 bit libraries if =
possible.</div></div></div></blockquote><div><br class=3D""></div><div>I =
think you are first one running into it. packaging part can be easily =
fixed by adding</div><div>oe_multilib_header fpu_control.h in =
do_install_append of glibc or some such</div><div><br =
class=3D""></div><div>Once you do that you have to also ensure that the =
includes are happening properly based upon multilib</div><div>in =
packages.</div><div><br class=3D""></div><div>however keep in mind that =
multibs were designed to run precompiled software not =
develop/compile</div><div>one app in different multilib as you are doing =
here thats why you see the error.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">-Glenn<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
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

--Apple-Mail=_A23E1628-266F-475A-A1F6-CC8E568B4E31--

--Apple-Mail=_E6795496-1131-4954-901D-A2AA3155F760
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgDx/oACgkQuwUzVZGdMxREIACdECCIX/XVXmoV5faBA2/BK/rP
otAAn3frkkhrdqUBhHYjDUGk5utth1lU
=SeAA
-----END PGP SIGNATURE-----

--Apple-Mail=_E6795496-1131-4954-901D-A2AA3155F760--
