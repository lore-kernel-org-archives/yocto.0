Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57138E00A49; Wed, 14 Oct 2015 23:51:00 -0700 (PDT)
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
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F96E006D5
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 23:50:56 -0700 (PDT)
Received: by pabws5 with SMTP id ws5so14680145pab.3
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 23:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=eW1UdLiTNL3HW/RSUEoajCd+eAJsgZRQOS9OOszIoA0=;
	b=OP8rMnqvinR4xd2lP/Mtw5iUEYXGDth1k86+/8GRL3bgf+gZadl8VJcIAHxY61shuD
	095ixn+9ZnHffHWUtkEjloI+WR3YorrRjkqL1LwffZz0BENNbHL4uTJmnt2VaJHQ2ZzS
	3M6It9AC1XOGxOjnRiu0dC5ufGZgAn91o7lYIc4E86UxAP5MFg8qX80mvE8cWBj48egI
	nwTSWBQGFb4ubmfhXflDLb26JGNHjnsWxl1oeWxPPj9qOxnDEC801NqVlRJZy5c/cwse
	f7dCIAUxnAJY4aUvVb97vNDydKx6PCVq4eWlz2+MF3dNchBDz+9T9eH0OJbHXe9miSwD
	aMtQ==
X-Received: by 10.68.201.168 with SMTP id kb8mr8329009pbc.95.1444891856572;
	Wed, 14 Oct 2015 23:50:56 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:fd3d:cb0b:3cd1:e450?
	([2601:646:8601:4580:fd3d:cb0b:3cd1:e450])
	by smtp.gmail.com with ESMTPSA id
	qk7sm7644116pbb.80.2015.10.14.23.50.55
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 14 Oct 2015 23:50:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3096.1\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAH21_vH74c9-yzXiQjJmxgOPKvBvqta9RQDBcWrr1CfHK_r1ug@mail.gmail.com>
Date: Wed, 14 Oct 2015 23:50:50 -0700
Message-Id: <35660350-1A02-4081-91AD-0D50DAA3783E@gmail.com>
References: <CAH21_vFPe9XChKr3VaGdwt+6Vscpux-ic3mWcgzB2qLXTdtRpA@mail.gmail.com>
	<CAH21_vFC5NEwgpWOtXsb1dURUnvFGPZiQB=59PNAWL=-0NphFA@mail.gmail.com>
	<CAH21_vH74c9-yzXiQjJmxgOPKvBvqta9RQDBcWrr1CfHK_r1ug@mail.gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
X-Mailer: Apple Mail (2.3096.1)
Cc: yocto@yoctoproject.org
Subject: Re: Toolchain with debug support
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
X-List-Received-Date: Thu, 15 Oct 2015 06:51:00 -0000
X-Groupsio-MsgNum: 26846
Content-Type: multipart/signed;
	boundary="Apple-Mail=_16434B6C-2865-4F80-A2C5-C962B83C45A3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_16434B6C-2865-4F80-A2C5-C962B83C45A3
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C544B9CD-1BB0-4556-852A-8FE7A618D33D"

--Apple-Mail=_C544B9CD-1BB0-4556-852A-8FE7A618D33D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 12, 2015, at 12:57 AM, atulkumar singh =
<atul.singh008@gmail.com> wrote:
>=20
> Hi All,
>=20
> Can anyone please tell me how to build a meta toolchain with debug =
support by setting CFLAGS to "-g -O0=E2=80=9D.
>=20
Read
=
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-DEBUG_=
BUILD =
<http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-DEBUG=
_BUILD>
> I tried adding this into gcc recipe but that didn't worked out for me =
as another option I even tried adding CFLAGS_gcc =3D "-g -O0".
> But no success, actually I wish to debug inside a function.
>=20
> Thanks and regards,
> Atul
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C544B9CD-1BB0-4556-852A-8FE7A618D33D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 12, 2015, at 12:57 AM, atulkumar singh &lt;<a =
href=3D"mailto:atul.singh008@gmail.com" =
class=3D"">atul.singh008@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p dir=3D"ltr" =
class=3D"">Hi All,</p><p dir=3D"ltr" class=3D"">Can anyone please tell =
me how to build a meta toolchain with debug support by setting CFLAGS to =
"-g -O0=E2=80=9D.</p></div></blockquote>Read</div><div><a =
href=3D"http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#va=
r-DEBUG_BUILD" =
class=3D"">http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html=
#var-DEBUG_BUILD</a><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><p dir=3D"ltr" class=3D"">I tried adding this =
into gcc recipe but that didn't worked out for me as another option I =
even tried adding CFLAGS_gcc =3D "-g -O0".<br class=3D"">
But no success, actually I wish to debug inside a function.</p><p =
dir=3D"ltr" class=3D"">Thanks and regards,<br class=3D"">
Atul</p>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_C544B9CD-1BB0-4556-852A-8FE7A618D33D--

--Apple-Mail=_16434B6C-2865-4F80-A2C5-C962B83C45A3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYfTM4ACgkQuwUzVZGdMxQrwQCfS6W8AAAumiuXmbXb3vE9qMlc
8E0AoJRBBRrC/ea7HJijQmZyD1CG4+nn
=pJb+
-----END PGP SIGNATURE-----

--Apple-Mail=_16434B6C-2865-4F80-A2C5-C962B83C45A3--
