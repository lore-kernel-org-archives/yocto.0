Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8293AE00D48; Fri, 26 Feb 2016 00:00:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B81A1E00D3A
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 00:00:14 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id ho8so48460387pac.2
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 00:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=tkDMMTHAlwySHGp1CtaOvvJRzO41MfYzCgpKsZMk7tU=;
	b=nEaoEPHjbtvFr6ipURUc4F3VrS4GiaCePy9ESKTcUUPrZju+/bRHdt4mDwBXf3A3gA
	jIuxXil+2YsWd7uhl9zYEl8Gl1cxr1sB5z88iMghJtSRc1BnaUipWt7XLnPZPQdPbSjE
	G22o3Xs7F2kA9iO2gDVvmjobZbREx2tH+Sy2if+x8xjhSaAIJ5oukqc2Jmh/mbt+TI/y
	YSssvAVFx0KdcrC7kfoGTXW385Q9o8g12+Fy69AuW6oFB9tJv75KmheRobIVoujQE8Wl
	vXMCGDY+71Cqj2QSbr1iXciUkQ/M6hscZfoWtvtOOmZrCxIAXh72S+0uOLY4PAGOjRPg
	uerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=tkDMMTHAlwySHGp1CtaOvvJRzO41MfYzCgpKsZMk7tU=;
	b=QpvEY0g/2GKQrl5Rl0qwv8ckI7pmkxUjo8lbyiQIDV9HspYQFVm7ledrahzrSrfa4+
	/3VAgNCKCJmuc2GmWtWnQdvRDs8kbvQVNuw2TmZ83tuZgU3oU8PGZEbljO4LYzXn0RKO
	c9obuxQC4YNxkezK/SCrK/M5zIkW/UkCKZEKTKzcr4uwEmVX+GaoOsXR+UyLgAwlIuSV
	eVf/QVMgCEvoueP47G0ScPqu/pjB12bNQqw6Ixf280n8cqe3PI1RinycuC/Qj6JIizl0
	6tdiGzkoRdvSer44RYdXrcTSMt75Mrc8LzJv9E8r9dZLQlvAwSOt/jV3rPm0YBdwqiY/
	BY1Q==
X-Gm-Message-State: AD7BkJKCAT/iUoRJyKf+AO4sdrlqCL21xft4uF0MkRwg7GUHClmjJKqJ9MPZA8IUp/3QQA==
X-Received: by 10.66.190.131 with SMTP id gq3mr260940pac.42.1456473613582;
	Fri, 26 Feb 2016 00:00:13 -0800 (PST)
Received: from ?IPv6:2601:646:8800:5a9a:4537:747c:ca81:76b7?
	([2601:646:8800:5a9a:4537:747c:ca81:76b7])
	by smtp.gmail.com with ESMTPSA id
	ss5sm17183908pab.15.2016.02.26.00.00.12
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Feb 2016 00:00:12 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAE_REAud2o+A+HsxieiDSGB8GQT3+M7h8yfSBK9NLPTm2RERkA@mail.gmail.com>
Date: Fri, 26 Feb 2016 00:00:06 -0800
Message-Id: <C22CC5C2-072C-4A62-8987-867909106B55@gmail.com>
References: <CAE_REAud2o+A+HsxieiDSGB8GQT3+M7h8yfSBK9NLPTm2RERkA@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package generates RPM with lib${PN} - how to include in SDK
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
X-List-Received-Date: Fri, 26 Feb 2016 08:00:16 -0000
X-Groupsio-MsgNum: 28630
Content-Type: multipart/signed;
	boundary="Apple-Mail=_57A24DE9-41BB-4D6E-BB0E-2FE820A4AFE8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_57A24DE9-41BB-4D6E-BB0E-2FE820A4AFE8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_914352BD-87AB-41DB-816E-F6E89BAA8677"

--Apple-Mail=_914352BD-87AB-41DB-816E-F6E89BAA8677
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 25, 2016, at 5:45 AM, Gaurang Shastri <gmshastri@gmail.com> =
wrote:
>=20
> Hi Team,
>=20
> I have one package X and recipe as X.bb, which generates RPM as =
lib${X}-*.rpm
>=20
> If I want this package as part of my SDK, what entry should i write in =
meta-toolchain.bb <http://meta-toolchain.bb/> file:

meta-toolchain should not be used, it has been deprecated in favor of -c =
populate_sdk task
so you should create an image and add lib${X}-* to IMAGE_INSTALL and =
then do bitbake -cpopulate_sdk
to generate a SDK.

>=20
> I tried adding "nativesdk-X" in meta-toolchain, but everytime it fails =
with:
> ERROR: nativesdk-X not found in the base feeds (x86_64-nativesdk =
noarch any all).
>=20
> This is because RPM generates with the name libX-*.rpm.
>=20
> Regards,
> Gaurang Shastri
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_914352BD-87AB-41DB-816E-F6E89BAA8677
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 25, 2016, at 5:45 AM, Gaurang Shastri &lt;<a =
href=3D"mailto:gmshastri@gmail.com" class=3D"">gmshastri@gmail.com</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D""><div class=3D"">Hi Team,<br =
class=3D""><br class=3D""></div>I have one package X and recipe as X.bb, =
which generates RPM as lib${X}-*.rpm<br class=3D""><br class=3D""></div>If=
 I want this package as part of my SDK, what entry should i write in <a =
href=3D"http://meta-toolchain.bb/" class=3D"">meta-toolchain.bb</a> =
file:<br =
class=3D""></div></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>meta-toolchain should not be used, it has been =
deprecated in favor of -c populate_sdk task</div><div>so you should =
create an image and add lib${X}-* to IMAGE_INSTALL and then do bitbake =
-cpopulate_sdk&nbsp;</div><div>to generate a SDK.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><br class=3D""></div>I tried adding =
"nativesdk-X" in meta-toolchain, but everytime it fails with:<br =
class=3D"">ERROR: nativesdk-X not found in the base feeds =
(x86_64-nativesdk noarch any all).<br class=3D""><br class=3D""></div>This=
 is because RPM generates with the name libX-*.rpm.<br class=3D""><br =
class=3D""></div>Regards,<br class=3D""></div>Gaurang Shastri<br =
class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_914352BD-87AB-41DB-816E-F6E89BAA8677--

--Apple-Mail=_57A24DE9-41BB-4D6E-BB0E-2FE820A4AFE8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbQBgwACgkQuwUzVZGdMxT6hACaAs2EMl+JJ7AMnDATr6XzYFC7
/skAn2AhY0cfNmRSc2a9esA5D4PGOLgL
=vkCP
-----END PGP SIGNATURE-----

--Apple-Mail=_57A24DE9-41BB-4D6E-BB0E-2FE820A4AFE8--
