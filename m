Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B291E0071C; Tue,  1 Nov 2016 16:35:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E172E006E9
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 16:35:46 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id a136so9461920pfa.0
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 16:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=QB5/mViZspfKdf3I8Ye7/4CZF74nYeI0s5oFPp91BAQ=;
	b=iaItKQcBLzqjBD6M2sljHZ3lSVI/BXXDX2FuSGnk5sh27Ck5jek5LQXEUAG1pITsc5
	9xDG4vskkmrw4NXLMYsFv3J63TrmGU7BTAyovtDe6/SCZ+Ym95PxImGXoIII8WP8orjp
	Sd1z88qmur/xMrBQqjGL9oh+ZtqP1m5TTjul2f04K/l23XUuRTJEtOfX0fyTChSFGUii
	KMZfQOm4Ux/rY8ag8hvrv+hhIoHaRh4VAFm9gR4ZJtsMsASdXIzqcH2qGnEsvETZ6IN4
	nkV4gbGlvNR8nHY+1b24ig053ZzlpLnHur79pvxXihovsarVOGJOKM4gm5ig2fCg7QZg
	ea7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=QB5/mViZspfKdf3I8Ye7/4CZF74nYeI0s5oFPp91BAQ=;
	b=MVU+UFb948v7JGiJxRVEQ/aPKagourKZXQrpysKCWYpCCJCL335bqscp/CccWvizWX
	oq9BRkzhYXwSVqdQKcD+rfuAa/0X2h2QCYeVgTn64LU3nuie/K5oHSdJFOZwN0HOEuRi
	OxSAhbAsayI2ynqCodUzYJcBGzQ1rrkG76Or/QXSgFaXegMWmCsIe3FQzTPSkBXiF1ld
	FtdwkF2NTKex/GBUGrnXQPoqb1xU/Iwdf78/2rotWuBFYpUFpR4azQQ9lx80cOIi/f5+
	RNe2/V3DucvJg+6try5YRAowdR0TI+3gd0MlKX3uukxfXzoieW0acfvNfRFL0c2/UtR6
	J5wg==
X-Gm-Message-State: ABUngveTRkNmgBBBsUG5zNg/R/TwaBvEKnypRayRxG5SzVJicjtCgnPXahgRPyAmDRS28A==
X-Received: by 10.98.88.5 with SMTP id m5mr1115328pfb.9.1478043346298;
	Tue, 01 Nov 2016 16:35:46 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:18f5:b6d7:3c24:7ad1?
	([2601:646:8882:b8c:18f5:b6d7:3c24:7ad1])
	by smtp.gmail.com with ESMTPSA id
	rx1sm20919460pab.32.2016.11.01.16.35.45
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 01 Nov 2016 16:35:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
Date: Tue, 1 Nov 2016 16:35:41 -0700
Message-Id: <43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
	<CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
	<CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 23:35:49 -0000
X-Groupsio-MsgNum: 32762
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E36E960C-B5D4-4DC1-8CB1-24BD6AD4BDC6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E36E960C-B5D4-4DC1-8CB1-24BD6AD4BDC6
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_210332B6-2D79-40F5-BD73-AEA0E1B05D45"

--Apple-Mail=_210332B6-2D79-40F5-BD73-AEA0E1B05D45
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 1, 2016, at 4:22 PM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 1 November 2016 at 22:20, Daniel. <danielhilst@gmail.com =
<mailto:danielhilst@gmail.com>> wrote:
> Just as a note, I've been using archlinux for about a year and have =
never faced "distro related problems", except when the gcc6 comes out. =
Anyway I'm using daisy in my work. I think that making old releases =
supported by X distro doesn't make any sense...
>=20
> The supported list of distros is just the list of distros that are =
known to work, and if something breaks then we'll notice and fix it.  If =
you want to use arch and face the periodic problems such as new =
toolchain meaning you can't build gcc-cross, then go for it.

Another option perhaps is to use a debian stable container with docker =
(https://hub.docker.com/r/cbrake/oe-build/ =
<https://hub.docker.com/r/cbrake/oe-build/>)
and you can use your favorite distro for stuff you usually do and at =
same time let OE/YP build on  a known/supported distro e.g.
Its a bit of mind shift but I am happily using it, while my distro stays =
bleeding edge arch.

e.g. see

http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds =
<http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds>
>=20
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_210332B6-2D79-40F5-BD73-AEA0E1B05D45
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 1, 2016, at 4:22 PM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 1 November 2016 at 22:20, Daniel. <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:danielhilst@gmail.com" =
target=3D"_blank" class=3D"">danielhilst@gmail.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"">Just=
 as a note, I've been using archlinux for about a year and have never =
faced "distro related problems", except when the gcc6 comes out. Anyway =
I'm using daisy in my work. I think that making old releases supported =
by X distro doesn't make any sense...<br =
class=3D""></div></blockquote></div><br class=3D""></div><div =
class=3D"gmail_extra">The supported list of distros is just the list of =
distros that are known to work, and if something breaks then we'll =
notice and fix it.&nbsp; If you want to use arch and face the periodic =
problems such as new toolchain meaning you can't build gcc-cross, then =
go for it.&nbsp;</div></div></div></blockquote><div><br =
class=3D""></div><div>Another option perhaps is to use a debian stable =
container with docker (<a =
href=3D"https://hub.docker.com/r/cbrake/oe-build/" =
class=3D"">https://hub.docker.com/r/cbrake/oe-build/</a>)</div><div>and =
you can use your favorite distro for stuff you usually do and at same =
time let OE/YP build on &nbsp;a known/supported distro =
e.g.</div><div>Its a bit of mind shift but I am happily using it, while =
my distro stays bleeding edge arch.</div><div><br =
class=3D""></div><div>e.g. see</div><div><br class=3D""></div><div><a =
href=3D"http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds" =
class=3D"">http://bec-systems.com/site/1281/using-docker-for-oeyocto-build=
s</a></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_210332B6-2D79-40F5-BD73-AEA0E1B05D45--

--Apple-Mail=_E36E960C-B5D4-4DC1-8CB1-24BD6AD4BDC6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgZJtEACgkQuwUzVZGdMxSymwCgiRfIxoYuuHQ69/ZkqYXoK4rY
BYwAn0ZRv/3LOtA5kpfI9xh/2Bxg1BEh
=UH0r
-----END PGP SIGNATURE-----

--Apple-Mail=_E36E960C-B5D4-4DC1-8CB1-24BD6AD4BDC6--
