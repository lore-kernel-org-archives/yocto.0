Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F07E6E00C09; Sun, 13 Dec 2015 10:57:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59046E00985
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 10:57:09 -0800 (PST)
Received: by pfbu66 with SMTP id u66so49227351pfb.3
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 10:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vDPlCUEvzmAUqj1o6RNjBzjRRpS3vDTB7GparKTyQZM=;
	b=niqunKsnOc/fy6JNkzeCyOmTDHCSLoN1O1wMf42Z6Wq5MvW5MOUce7M/jgNrRUtTNc
	wyws7kTzp85hOJ7VObL6c8a2zLQ8wuDDyDtEfnFNjnYRw8lgqiekcMVIILfL39jvXR5j
	rS8BCtJSwM2ejkM89zHwd9KM25snsHRZHoveu4QgyHQnoA6BIs0+3IXsgoYmfmR6oeKS
	D+kLGwugHnCj7RVzcCbZP3FnzGStt8PSxNJcM/NtNtUSnR2nIj770Ob5/6kHBpDxyj2A
	GbEhirGXaOekO6Ugey+vPiyGLJUKdCazRKAPeLWi6oGxYgG1o2RcTioAKm7PpttdySjd
	Quqg==
X-Received: by 10.98.42.9 with SMTP id q9mr30228546pfq.142.1450033029554;
	Sun, 13 Dec 2015 10:57:09 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:a058:d75b:39f7:90fe?
	([2601:646:8802:5d5c:a058:d75b:39f7:90fe])
	by smtp.gmail.com with ESMTPSA id
	73sm37472721pfh.14.2015.12.13.10.57.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 13 Dec 2015 10:57:08 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <566DBA83.8010506@montgomery1.com>
Date: Sun, 13 Dec 2015 10:57:04 -0800
Message-Id: <30C0DEC6-AB2D-406C-ACC3-CEAAE0DE796C@gmail.com>
References: <566DBA83.8010506@montgomery1.com>
To: "Clay D. Montgomery" <clay@montgomery1.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Which OpenSSH packages to use?
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
X-List-Received-Date: Sun, 13 Dec 2015 18:57:12 -0000
X-Groupsio-MsgNum: 27699
Content-Type: multipart/signed;
	boundary="Apple-Mail=_88E26BB9-50E1-4047-BAED-EF01184E2CEF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_88E26BB9-50E1-4047-BAED-EF01184E2CEF
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C4DD3779-687F-4C62-9B64-29043F73927A"

--Apple-Mail=_C4DD3779-687F-4C62-9B64-29043F73927A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Dec 13, 2015, at 10:35 AM, Clay D. Montgomery =
<clay@montgomery1.com> wrote:
>=20
> I'm trying to understand which of these OpenSSH package options I =
should use with the CORE_IMAGE_EXTRA_INSTALL option:
>=20
>     openssh
>     openssh-sshd
>     openssh-sftp
>     openssh-sftp-server
>=20
> I want OpenSSH server functionality that supports both the scp and =
sftp protocols. I first tried just 'openssh' and found that it provides =
scp but not sftp.
> So then I tried the latter 3 options and I got sftp, but not scp. Do I =
really need all 4 of these to get scp and sftp?
>=20
> I checked this recipe guide and found it lists yet another package =
named 'packagegroup-core-ssh-openssh =
<http://recipes.yoctoproject.org/rrs/recipedetail/122/>' but it says =
nothing about sftp.
>     http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/ =
<http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/>
>=20
> I would appreciate some advise.

you can just do

EXTRA_IMAGE_FEATURES +=3D =E2=80=9Cssh-server-openssl=E2=80=9D in =
local.conf

or

IMAGE_FEATURES +=3D "ssh-server-openssl"

via a bbappend in your layer if you hinging on to same image recipe =
otherwise if you have your own image recipe
then add it to that.

>=20
> Thanks, Clay Montgomery
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C4DD3779-687F-4C62-9B64-29043F73927A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 13, 2015, at 10:35 AM, Clay D. Montgomery &lt;<a =
href=3D"mailto:clay@montgomery1.com" =
class=3D"">clay@montgomery1.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20

    <meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8" class=3D"">
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    I'm trying to understand which of these OpenSSH package options I
    should use with the CORE_IMAGE_EXTRA_INSTALL option:<br class=3D"">
    <br class=3D"">
    &nbsp;&nbsp;&nbsp; openssh<br class=3D"">
    &nbsp;&nbsp;&nbsp; openssh-sshd<br class=3D"">
    &nbsp;&nbsp;&nbsp; openssh-sftp<br class=3D"">
    &nbsp;&nbsp;&nbsp; openssh-sftp-server<br class=3D"">
    <br class=3D"">
    I want OpenSSH server functionality that supports both the scp and
    sftp protocols. I first tried just 'openssh' and found that it
    provides scp but not sftp.<br class=3D"">
    So then I tried the latter 3 options and I got sftp, but not scp. Do
    I really need all 4 of these to get scp and sftp?<br class=3D"">
    <br class=3D"">
    I checked this recipe guide and found it lists yet another package
    named '<a =
href=3D"http://recipes.yoctoproject.org/rrs/recipedetail/122/" =
class=3D"">packagegroup-core-ssh-openssh</a>'
    but it says nothing about sftp.<br class=3D"">
    &nbsp;&nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" =
href=3D"http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/">http://recipe=
s.yoctoproject.org/rrs/recipes/2.1/M2/</a><br class=3D"">
    <br class=3D"">
    I would appreciate some advise.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>you =
can just do&nbsp;</div><div><br class=3D""></div><div>EXTRA_IMAGE_FEATURES=
 +=3D =E2=80=9Cssh-server-openssl=E2=80=9D in =
local.conf&nbsp;</div><div><br class=3D""></div><div>or</div><div><br =
class=3D""></div><div>IMAGE_FEATURES +=3D =
"ssh-server-openssl"</div><div><br class=3D""></div><div>via a bbappend =
in your layer if you hinging on to same image recipe otherwise if you =
have your own image recipe</div><div>then add it to that.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    <br class=3D"">
    Thanks, Clay Montgomery<br class=3D"">
    <br class=3D"">
    <br class=3D"">
  </div>

-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_C4DD3779-687F-4C62-9B64-29043F73927A--

--Apple-Mail=_88E26BB9-50E1-4047-BAED-EF01184E2CEF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZtv4QACgkQuwUzVZGdMxSqSgCeMdpyo+hQWaNeUH38Nk1YEUC2
IpUAnAo6M/F1WGZlEARxakQWqecOPFgi
=a6Ie
-----END PGP SIGNATURE-----

--Apple-Mail=_88E26BB9-50E1-4047-BAED-EF01184E2CEF--
