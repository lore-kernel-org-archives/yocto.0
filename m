Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 402C8E00C8B; Wed, 20 Jul 2016 12:14:09 -0700 (PDT)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D12F5E00C2D
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 12:14:07 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id x72so21845290pfd.2
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 12:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=UwzznrNotUObIm7Ajk7+rxXpPaLeUSPHDVZpkhYHS5s=;
	b=oeQdakiErYFwFqz71tOO32OWL73dP0OXTfAuM1I6K5qIUrQxSzyX8ocZyNUkO5TeY4
	QHlPFAt7vnkpB7gQQPU7HBFywjqURm5A5MEtpdOyUqSqkua5iTFzROj+dktJ7F/QsvFZ
	Yz5bg02hd0jc3sOZqaGvjiXgwACyIXBsbqglVKWfp/SuKi9lUFT5nCqIiV68SQhH68S5
	DY8+mfWphKueBy0Pp3tCNoTRiv9yN4+6lDcWOKGz5FdJDgOmWNM2njSC2KLt7nWuqCgv
	PTxo2SM4ydBd0wE72q3+JUN2QWZhbcdk+L4cF4Zwple/p3ebTq+rP1Qp5FhJZk5D7Bed
	+Odg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=UwzznrNotUObIm7Ajk7+rxXpPaLeUSPHDVZpkhYHS5s=;
	b=eDyOGOCP+JXEkJw4ywMa2+HrXJCWYrmvR4UcZWKxPJikAuzKUTEIK4eSiHOjImzDh/
	46uz40w1DRRpAM6YaZfILz9UOUnYhdgtTDSTCGBLcYzCtCuH3ErXc7UZWt4ElfdQYmEW
	Inm5a63BBidBQESkIC3N6qDaPnVsi1XHhWkfFSEk8tHXSvQYJlw/OaGBzq6poPbU8n/a
	t4POgXOv/zkT3S0uMfBzubIzCzcYDs+HpavaYWNE5yZNeRHhP/7sqHJtX3MB4NFQoVW+
	3qHlgFZdKvl/LGTEEUwed+13rlYL4IBtBE+eswVT0lq2Gxwz8Lc7UAvM+v/3u7YG2g4s
	yE7Q==
X-Gm-Message-State: ALyK8tLoAYPbTv7WxAYudiV+2EGgD/oolzKyUH2oliSKtlmJVWdwuSaJRCnUqki7zNvJjQ==
X-Received: by 10.98.149.131 with SMTP id c3mr67987672pfk.73.1469042046972;
	Wed, 20 Jul 2016 12:14:06 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:e800:ab06:7d73:85ce?
	([2601:646:8882:b8c:e800:ab06:7d73:85ce])
	by smtp.gmail.com with ESMTPSA id
	f84sm6391910pfd.87.2016.07.20.12.14.05
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jul 2016 12:14:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LYw26iyqNpypnnjfCEdiAP4z+XTWpzj2rKCB+mm3mKpPQ@mail.gmail.com>
Date: Wed, 20 Jul 2016 12:13:58 -0700
Message-Id: <72568F76-FAE9-4D95-B7C1-0366DAD285BB@gmail.com>
References: <nmocev$1gg$1@ger.gmane.org>
	<CAJTo0LYw26iyqNpypnnjfCEdiAP4z+XTWpzj2rKCB+mm3mKpPQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: Robert Berger <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: custom internal toolchain/glibc
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
X-List-Received-Date: Wed, 20 Jul 2016 19:14:09 -0000
X-Groupsio-MsgNum: 31125
Content-Type: multipart/signed;
	boundary="Apple-Mail=_825F145D-BE24-4BF8-A3CF-618C7B67CE07";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_825F145D-BE24-4BF8-A3CF-618C7B67CE07
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E1ED80B7-3B3C-4DA5-BC47-62CE9325FB4C"

--Apple-Mail=_E1ED80B7-3B3C-4DA5-BC47-62CE9325FB4C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 20, 2016, at 11:31 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 20 July 2016 at 18:30, Robert Berger =
<gmane@reliableembeddedsystems.com =
<mailto:gmane@reliableembeddedsystems.com>> wrote:
> I was wondering what's the process if someone wanted to use, say =
Jethro
> or Krogoth, but with different/custom versions of gcc, binutils, glibc
> e.g. to cook some syscalls and to compile ancient Linux kernels.
>=20
> I came across tcmode-default.inc[1] where such things are defined:
>=20
> GCCVERSION ?=3D "6.1%"
> SDKGCCVERSION ?=3D "${GCCVERSION}"
> BINUVERSION ?=3D "2.26%"
> GDBVERSION ?=3D "7.11%"
> GLIBCVERSION ?=3D "2.24"
> UCLIBCVERSION ?=3D "1.0%"
> LINUXLIBCVERSION ?=3D "4.4"
>=20
> Would hacking/duplicating and hacking this be a good starting point?
>=20
> Absolutely - if you provide your own gcc/binutils/etc recipes then =
these are the variables to change to use them.  It's not unusual for =
oe-core to ship with more than one GCC version for example.
>=20

Looks at meta-linaro how they do it

> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E1ED80B7-3B3C-4DA5-BC47-62CE9325FB4C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 20, 2016, at 11:31 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 20 July 2016 at 18:30, Robert Berger <span =
dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:gmane@reliableembeddedsystems.com" target=3D"_blank" =
class=3D"">gmane@reliableembeddedsystems.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4v7" =
class=3D"a3s aXjCH m156095d0ffc9f9a9">I was wondering what's the process =
if someone wanted to use, say Jethro<br class=3D"">
or Krogoth, but with different/custom versions of gcc, binutils, =
glibc<br class=3D"">
e.g. to cook some syscalls and to compile ancient Linux kernels.<br =
class=3D"">
<br class=3D"">
I came across tcmode-default.inc[1] where such things are defined:<br =
class=3D"">
<br class=3D"">
GCCVERSION ?=3D "6.1%"<br class=3D"">
SDKGCCVERSION ?=3D "${GCCVERSION}"<br class=3D"">
BINUVERSION ?=3D "2.26%"<br class=3D"">
GDBVERSION ?=3D "7.11%"<br class=3D"">
GLIBCVERSION ?=3D "2.24"<br class=3D"">
UCLIBCVERSION ?=3D "1.0%"<br class=3D"">
LINUXLIBCVERSION ?=3D "4.4"<br class=3D"">
<br class=3D"">
Would hacking/duplicating and hacking this be a good starting =
point?</div></blockquote></div><br class=3D"">Absolutely - if you =
provide your own gcc/binutils/etc recipes then these are the variables =
to change to use them.&nbsp; It's not unusual for oe-core to ship with =
more than one GCC version for example.</div><div class=3D"gmail_extra"><br=
 class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>Looks at meta-linaro how they do it</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_E1ED80B7-3B3C-4DA5-BC47-62CE9325FB4C--

--Apple-Mail=_825F145D-BE24-4BF8-A3CF-618C7B67CE07
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlePzX0ACgkQuwUzVZGdMxQ28gCfaWq/6MO66fxb5rP8B0uwylMO
T6sAnRAnzKYKxUNN040kaKTSCinEJwWx
=yo30
-----END PGP SIGNATURE-----

--Apple-Mail=_825F145D-BE24-4BF8-A3CF-618C7B67CE07--
