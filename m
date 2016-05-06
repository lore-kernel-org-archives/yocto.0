Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D681E00E68; Fri,  6 May 2016 06:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7786BE00E68
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 06:55:47 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id xk12so48242236pac.0
	for <yocto@yoctoproject.org>; Fri, 06 May 2016 06:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=/+64/ZIPpYjlFG7HQ75fB+/GRUhFxH/DBnJiIdSYoNg=;
	b=N+YFlJKXFC+icTjb3Ud4kgQ4EAEBEe1WNXzELoM/lqjidxsaB+Ls7kOAFd/a4ZxgCl
	XEywIKOpmvre8u+YGenunQ075QUVSlN+7Vr313DH0nlyINgoLgHaOzz0kNhj5HT+y54M
	yYM5e6fePlqnLG47f3NRD3+pAE/RVtkv9ha647WSBrdmQc2pXZSfP2tSB7E3Nz3sDftp
	X6kKDW5wALyhSZWfGpi0FKcn7omuZk+U5VlrLCPZJqyNB1CJ9NUznvH9wc6e1HV/0Uq+
	Un7ECuiaj22Z4RBWsYFslVZpkjAqAuZbGo/piHoQ5gdboqNd9Lah13nLDOvSDwtHi8T9
	wapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/+64/ZIPpYjlFG7HQ75fB+/GRUhFxH/DBnJiIdSYoNg=;
	b=W573oekwIdBXT2a44PywZub5+RyZvFL8/wMroFlKSQ5pXTBkPPjodRM2qrQZTze/gh
	R2ky47gLW66PN5NVSbtOdAmxclPwai3bVyk663xaZs1AE1aU8ANQP2AEOE35G0zWnM3T
	IB25zTqM7CYOlnLyf6seZ1vvQj2CrioiDP3mVxuzyRGWNySqOT9W27XF1rqOE1j0+n20
	2M5xHSgHF9nKlju5I7tH2WbciDS8TT3GBQc/HUj9TR8GX+2hgegMlA2iQs9ekfoNFTIF
	N/Rztdlhruc+kPYgI9Dc8IuMqhkOmWyaZpvhKn9k5an1ACMSoAEMV4LNRxPdoUi7/DC6
	rXtA==
X-Gm-Message-State: AOPr4FUzI+xBjnolV3IeOw0TDXps/+IHPaGki29XwOcpBhbGnylfT/AS3TNynfQ6dYPgAw==
X-Received: by 10.66.21.102 with SMTP id u6mr29136275pae.118.1462542946727;
	Fri, 06 May 2016 06:55:46 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7d5a:e5f2:4cd9:25ad?
	([2601:646:8800:5a9a:7d5a:e5f2:4cd9:25ad])
	by smtp.gmail.com with ESMTPSA id 28sm21420559pfs.1.2016.05.06.06.55.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 06 May 2016 06:55:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAEjjRe+wKU5Aa3BgTuFPLTLdCu+LCMqS=APqUGZXetWV4bw6wA@mail.gmail.com>
Date: Fri, 6 May 2016 06:55:40 -0700
Message-Id: <1C3E490A-CAB1-4487-AED1-5919690AB6D9@gmail.com>
References: <CAEjjReLxsQAPSp9J+LejheRv=oxzC4nZfLo_Q+tgZf+Dhb00Tg@mail.gmail.com>
	<CAEjjRe+wKU5Aa3BgTuFPLTLdCu+LCMqS=APqUGZXetWV4bw6wA@mail.gmail.com>
To: "Chris Z." <winotu.email@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Native packages compiled with host gcc set in PATH and with LD_LIBRARY_PATH to libstd++
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
X-List-Received-Date: Fri, 06 May 2016 13:55:49 -0000
X-Groupsio-MsgNum: 29880
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3A31D7F2-0499-4DEE-9F14-835599CB0AED";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3A31D7F2-0499-4DEE-9F14-835599CB0AED
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5FE9EA16-5338-4262-B5E6-8EE656B40482"

--Apple-Mail=_5FE9EA16-5338-4262-B5E6-8EE656B40482
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 6, 2016, at 1:43 AM, Chris Z. <winotu.email@gmail.com> wrote:
>=20
> Hi,
>=20
> Any tips ?

you need to insert your non-standard install of gcc-4.9 and glibc into =
OE build via BUILD_CFLAGS
and prepending it to your PATH variable that bitbake will see.

>=20
> On Fri, Mar 4, 2016 at 4:13 PM, Chris Z. <winotu.email@gmail.com =
<mailto:winotu.email@gmail.com>> wrote:
> Hi,
>=20
> I have set newer gcc(4.9) in PATH and with proper LD_LIBRARY_PATH. =
Default system gcc is 4.4.
>=20
> Bulding cmake-native fails when bootstrap cmake tries to compile cmake =
native binary.
>=20
> This is due to the fact that bootstrap was compiled with newer glibcxx =
and it can't be found in system/host /usr/lib, /usr/lib64 nor in -rpath.
>=20
> rpath is set to
>                         -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \
>                         -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \
>=20
> from BUILD_LDFLAGS var in bitbake.conf which is expand in native =
class.
>=20
> What is the correct approach to fix this ? Or I shouldn't use gcc from =
PATH for compilation of native packages ?
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_5FE9EA16-5338-4262-B5E6-8EE656B40482
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 6, 2016, at 1:43 AM, Chris Z. &lt;<a =
href=3D"mailto:winotu.email@gmail.com" =
class=3D"">winotu.email@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">Hi,<br class=3D""><br class=3D""></div>Any =
tips ?<br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>you need to insert your non-standard install of =
gcc-4.9 and glibc into OE build via BUILD_CFLAGS</div><div>and =
prepending it to your PATH variable that bitbake will see.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Fri, =
Mar 4, 2016 at 4:13 PM, Chris Z. <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:winotu.email@gmail.com" target=3D"_blank" =
class=3D"">winotu.email@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D"">Hi,<br class=3D""><br =
class=3D""></div>I have set newer gcc(4.9) in PATH and with proper =
LD_LIBRARY_PATH. Default system gcc is 4.4.<br class=3D""><br =
class=3D""></div>Bulding cmake-native fails when bootstrap cmake tries =
to compile cmake native binary.<br class=3D""><br class=3D""></div>This =
is due to the fact that bootstrap was compiled with newer glibcxx and it =
can't be found in system/host /usr/lib, /usr/lib64 nor in -rpath.<br =
class=3D""><br class=3D""></div>rpath is set to<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \<br class=3D""><br =
class=3D""></div>from BUILD_LDFLAGS var in bitbake.conf which is expand =
in native class.<br class=3D""><br class=3D""></div>What is the correct =
approach to fix this ? Or I shouldn't use gcc from PATH for compilation =
of native packages ?<br class=3D""></div>
</blockquote></div><br class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_5FE9EA16-5338-4262-B5E6-8EE656B40482--

--Apple-Mail=_3A31D7F2-0499-4DEE-9F14-835599CB0AED
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcsomAACgkQuwUzVZGdMxRYCACgj/SdM4AlYIzK2fWEM4P7Ib/6
NKYAnA4V+xfqMyEy+6rsOMllsuB0kKR3
=7/MQ
-----END PGP SIGNATURE-----

--Apple-Mail=_3A31D7F2-0499-4DEE-9F14-835599CB0AED--
