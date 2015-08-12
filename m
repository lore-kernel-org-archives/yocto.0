Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 142D0E00AB3; Wed, 12 Aug 2015 00:43:58 -0700 (PDT)
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
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF0FCE00A92
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 00:43:38 -0700 (PDT)
Received: by pacrr5 with SMTP id rr5so9050100pac.3
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 00:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=VZFFmKlSqgSavdpaaWLbblnruUD7cChcpsL4nYhvlao=;
	b=A/PU54KPHv8nUVhDdDvIi9yWOUJrq1KOIm6Uq1/bFM0SMN50bg+Tlqku8pkrG4Mlvn
	hAdk78t/IQ+lIBvT+q1o1fPgcvpUcG/tZqc+0W8mBGyi9YR1SzG04ywnMU1k7ZIQR52y
	8HQBb9/uE7E/v3j9vDnJNMtnhcRivSe7vKyrVZe9NtNEptYL4yxdhaoyrXsPLt2Ortsg
	5rK22TpB2vjPw2do7gNv42I4B8RlpG2yWP012IbzGz7B6JnC9YP9HjHhhdGAcEOa4Y3J
	mRFNE1AnVNDFHWjhoWYuNUk17r2d1fppFymr62FjvWfJRKmPpwAfXRvy9RLgv3+xlyKD
	hcsA==
X-Received: by 10.66.136.102 with SMTP id pz6mr65342861pab.52.1439365418067;
	Wed, 12 Aug 2015 00:43:38 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:b9e7:cb72:7ff1:d60c?
	([2601:646:8601:4580:b9e7:cb72:7ff1:d60c])
	by smtp.gmail.com with ESMTPSA id
	bu1sm5291076pdb.35.2015.08.12.00.43.37
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 12 Aug 2015 00:43:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1419557501.51458.1437527255727.JavaMail.yahoo@mail.yahoo.com>
Date: Wed, 12 Aug 2015 00:43:35 -0700
Message-Id: <F1B35B4E-9392-4BD6-A76B-A824D4229E89@gmail.com>
References: <1419557501.51458.1437527255727.JavaMail.yahoo@mail.yahoo.com>
To: Edward Vidal <develone@sbcglobal.net>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: core-image-sato raspberrypi2
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
X-List-Received-Date: Wed, 12 Aug 2015 07:43:58 -0000
X-Groupsio-MsgNum: 26041
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7C7ADA74-C07F-41AC-8DA0-D5260B91AA94";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_7C7ADA74-C07F-41AC-8DA0-D5260B91AA94
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0582D984-6AA0-4692-B5E3-B44E0C613C1A"

--Apple-Mail=_0582D984-6AA0-4692-B5E3-B44E0C613C1A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 21, 2015, at 6:07 PM, Edward Vidal <develone@sbcglobal.net> =
wrote:
>=20
> Hi all,
> In the file poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb
> I tried to add --disable-egl, with no success
>=20
>=20
> PACKAGECONFIG[x11] =3D "--enable-glx, --disable-glx, virtual/libx11"
> | checking for EGL... no
> | configure: error: Package requirements (egl) were not met:
> |
> | No package 'egl=E2=80=99 found
>=20

Please update to latest on meta-raspberrypi and apply

https://lists.yoctoproject.org/pipermail/yocto/2015-August/026035.html =
<https://lists.yoctoproject.org/pipermail/yocto/2015-August/026035.html>

if you want you can also apply below patch but is not must

https://lists.yoctoproject.org/pipermail/yocto/2015-August/026074.html =
<https://lists.yoctoproject.org/pipermail/yocto/2015-August/026074.html>



--Apple-Mail=_0582D984-6AA0-4692-B5E3-B44E0C613C1A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2015, at 6:07 PM, Edward Vidal &lt;<a =
href=3D"mailto:develone@sbcglobal.net" =
class=3D"">develone@sbcglobal.net</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D""><div =
style=3D"background-color: rgb(255, 255, 255); font-family: =
HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', =
sans-serif; font-size: 16px;" class=3D""><div =
id=3D"yui_3_16_0_1_1437526876305_5063" class=3D""><span class=3D"">Hi =
all,</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437526876305_5084" =
class=3D"">In the file =
poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb <br =
class=3D""></div><div id=3D"yui_3_16_0_1_1437526876305_5209" dir=3D"ltr" =
class=3D"">I tried to add --disable-egl, with no success</div><div =
id=3D"yui_3_16_0_1_1437526876305_5231" dir=3D"ltr" class=3D""><br =
class=3D""></div><div dir=3D"ltr" class=3D""><br class=3D""></div><div =
id=3D"yui_3_16_0_1_1437526876305_5197" dir=3D"ltr" =
class=3D"">PACKAGECONFIG[x11] =3D "--enable-glx, --disable-glx, =
virtual/libx11"</div><h3 id=3D"yui_3_16_0_1_1437526876305_5087" =
class=3D""> <span class=3D"" title=3D"core-image-sato raspberrypi2">| =
checking for EGL... no<br class=3D"">| configure: error: Package =
requirements (egl) were not met:<br class=3D"">| <br class=3D"">| No =
package 'egl=E2=80=99 found<br =
class=3D""></span></h3></div></div></div></blockquote><div><br =
class=3D""></div><div>Please update to latest on meta-raspberrypi and =
apply&nbsp;</div><div><br class=3D""></div><div><a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015-August/026035.=
html" =
class=3D"">https://lists.yoctoproject.org/pipermail/yocto/2015-August/0260=
35.html</a></div><div><br class=3D""></div><div>if you want you can also =
apply below patch but is not must</div><div><br class=3D""></div><div><a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015-August/026074.=
html" =
class=3D"">https://lists.yoctoproject.org/pipermail/yocto/2015-August/0260=
74.html</a></div><div><br class=3D""></div></div><br =
class=3D""></body></html>=

--Apple-Mail=_0582D984-6AA0-4692-B5E3-B44E0C613C1A--

--Apple-Mail=_7C7ADA74-C07F-41AC-8DA0-D5260B91AA94
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXK+SgACgkQuwUzVZGdMxQFlgCfTMmd22UD/kMxq1Q62UCwDYHN
fXQAmwQ6tcUyQPfBh0ZcbICW3aMt3PGC
=A69A
-----END PGP SIGNATURE-----

--Apple-Mail=_7C7ADA74-C07F-41AC-8DA0-D5260B91AA94--
