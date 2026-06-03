Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2040ECD6E57
	for <webhook@archiver.kernel.org>; Wed,  3 Jun 2026 18:10:29 +0000 (UTC)
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.26530.1780510223907710189
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2026 11:10:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=Qq2RMFnQ;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=hzP9WTLU;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.151, mailfrom: paul@pbarker.dev)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id 04502EC01C4;
	Wed,  3 Jun 2026 14:10:23 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Wed, 03 Jun 2026 14:10:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1780510222; x=1780596622; bh=2TQyXNVKj9
	gDK7FBgahD4XbllVSuxcQ8cqiMCZB66Hw=; b=Qq2RMFnQ6/qy1DM5QyvZ/rDudN
	UdihQMR3W2CaYNiMHuA8vuL8VOKDzo5Xma4U19opwPq6AW8M3l13TaGYhH2xOUTB
	nYTmQd0irjM4kedlhnEVwvpzYClY2q+gc0sS6xxOnC82AE/VDwwn7pV6ePHBv+6Z
	oEiYPfxr+blrGhxGWOy2YwtZcynQmtyjN4VXj7G0sxG8MZnzswJC7zq0bE9chLKj
	kbLA/uJP4/KQ1Tm32vxT7fkhQp1Nvw72o7IAbVQjMJZ36nJ7joVd5LlcFYXld4Rd
	/cyhbJnPNdy5zuZCF0Q40O4wbH4zqH4h3643BtgOXA9FEBAKmQ+gJem1Vg2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1780510222; x=1780596622; bh=2TQyXNVKj9gDK7FBgahD4XbllVSuxcQ8cqi
	MCZB66Hw=; b=hzP9WTLUBUuiDjwClaJFQonRg09mDWwcURGcgxOf9JTqlGIb9ys
	t42kjzBJ3c5iZp0u2zosEOYdP94HQK2B0gVy8KHHFi6ca70XYLXo2SnAHLOq//pa
	1IQKKjdZfsdZSuZ3bsA2Pw9wZnaSIOV9JejLxNM6JbSgJ5r3//g8c9dN+oiq28ux
	D9EvaRFUGN3li/rV1JdNc8nYEq6OKeVQs5L3xcJUeRHKVni0YPWMEKmQNEnpVWZr
	VpmN+DViE6JjyOKiUs1YC1m3all0AqGLOC1nTrmXH5Wj4symbCtd5SAZwgJARHiw
	SwR6noNnsayE+NfnpHg6wceOaYIMlO8rNQw==
X-ME-Sender: <xms:Dm4gapJlW3sRoO3zcoJT201zQZwKtm5gHALmF15d6cQ_IOTSa5gieQ>
    <xme:Dm4garIKV7qyim1-uIQ0V59onsl1pGZsKfg_cXGoIKYurS_CkuAh8nllKcDksRgql
    aRm1BPHL4vZONXCru_jLScZ2uGpzVsUehTc743t8arbGPO0aoEnYHI>
X-ME-Received: <xmr:Dm4gavVvDPfbaWL3AMJlEtU1GIqp8roDzoN2el-m8ZlYYMOEOqjRBBKkDHcbqyVxEn4ht3S_He_jts7B-cuEfL4zxneXnlCvt_qknujLXO_8gAVD-Vqc0oZ_D-ZJ6XkM>
X-ME-Proxy-Cause: dmFkZTEjpI2ArnoJizrC/ptGMlinEYg1W+ep4l13hD+Fm0KK9Oi9bR31oL2wZQEbfsfTga
    ihsj9iMiWvCqwcOP2dHdVR24URYFMRjyAJ9dIKAzYaUeJkGXBjyQkM6jK8c9296b4gkhE/
    ZKB1EspTBq1pMlBvmZXeT/CYqIp+C9rPUYhNyCx0Plk7r0MyrU/5Nc1FuwR18oKLAxMx1P
    d7LO/TwiuJBtP/M2AbPxX7kSIsLqtt2uPqbk3XnvY7iF9wbyL4AvqhkGyhLFdhO1SH2vh8
    4Qp31a8blvGQukMJvZKtNGlB2asWAKxwU9agVSyu3vbrJZLPU/lAvsvkfakwPhJCvascRA
    Wi73YHPmYxGbtH+4hZv6ZfFadBAZM5kvQaQ53OOxUPsBoGmmGKHVbqCHuZlt/VBdfqWlLv
    ihlfqHnMWMAfNVDbk0NUOIWCbEWP3aio0UXpvx/P8CJ6/k4ufzgOxrB6HH/Z9XF+nd5EKr
    z1ddJI3V+tp3/Q13qBoopRSeVSapb8a3wWakD/Hzuc4gypd6RovMxdKDBSTNhsY0e9wgKl
    qQ2KWdlaorRLHAwptVWc3oycxKu1TNFGOVZ61EfgS900sCb6bIwNzsRX9HYzaRVo4pd05y
    t6+sKiYqLvBOodl7TEol4m6k2xI4cvrnrRn+BrmeMgeEv9u9K4qDA55sFj0Q
X-ME-Proxy: <xmx:Dm4galgSmDBs8rBo5y9HeOkaY9m1jNtSMkWP8ooz4ZJQAQS6y-1T5A>
    <xmx:Dm4gai9dIXRXNYQC-G6K7MDiUVTYHU2cOh8jd-I0s06l09tHqyuoVg>
    <xmx:Dm4ganDS2LIZfhYiUKVdNTHq4j1UxA-0jtxm3qwj8CLbDnjVrjgIzw>
    <xmx:Dm4ganLsNu4W-jxkNMKJaIBNVCSi1cZDsYFRgtghMTY4_8FuC2zG7w>
    <xmx:Dm4gaiT4-zmnEvZcPHcMVrW6OHckQTWFJr8kYQlsMD7VCHH0DgMePBSx>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jun 2026 14:10:22 -0400 (EDT)
Message-ID: <e3cd9995fc428cb092e88419be866d6ac7b7dce9.camel@pbarker.dev>
Subject: Re: [yocto] Task chain for population to sysroot-native?
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org, H.Wulff@kruss.de
Date: Wed, 03 Jun 2026 19:10:20 +0100
In-Reply-To: <2QUP.1780507826891383486.LNlm@lists.yoctoproject.org>
References: <2QUP.1780507826891383486.LNlm@lists.yoctoproject.org>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-dyyxDuXT5GBAhnvTFNcu"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2026 18:10:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66588


--=-dyyxDuXT5GBAhnvTFNcu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-06-03 at 10:30 -0700, H. Wulff via lists.yoctoproject.org
wrote:
> Hi!
>=20
> We have the need to modify some fonts at Yocto build time. So, I created =
a recipe for [fonttools python module](https://github.com/fonttools/fonttoo=
ls) on which our recipe `DEPENDS`. The goal is to have the font tools avail=
able at build time of our recipe by populating to `recipe-sysroot-native`. =
Our recipe depends on fonttools like this:
>=20
> ```
> DEPENDS =3D+ "fonttools-native"
> ```
>=20
> And the fonttools recipe looks like this:
>=20
> ```
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D211c9e4671bde3881351f22a2901f6=
92"
>=20
> PV =3D "4.63.0"
>=20
> SRC_URI =3D "git://github.com/fonttools/fonttools.git;protocol=3Dhttps;br=
anch=3Dmain"
> SRCREV =3D "7fc2aa089b1bdc0d03157de2423e9b6681d22c20"
>=20
> S =3D "${WORKDIR}/git"
>=20
> inherit setuptools3
>=20
> BBCLASSEXTEND =3D "native"
>=20
> do_install:append() {
>     install -d ${D}${bindir}
>     for PYFILE in ${S}/Snippets/*.py
>     do
>         install -m 0755 ${PYFILE} ${D}${bindir}
>     done
> }
> ```
> The problem is that nothing gets populated to `recipe-sysroot-native` whe=
n our receipe gets build. But the font tools package gets perfectly build s=
tand alone.
>=20
> So the question is what tasks are called when doing populate sysroot nati=
ve. Where does the populate-sysroot-native task gets the files from? I had =
a look at `${SYSROOT_DIRS_NATIVE}` and `${D}${bindir}` is one of the folder=
s. So, at least the files I added via `do_install:append()` should be avail=
able in `recipe-sysroot-native`.
>=20
> Can please someone shine some light on this?

Adding native to BBCLASSEXTEND allows you to build a -native variant of
your recipe, in this case it would be named 'fonttools-native-native'.

What you want instead is 'inherit native', as this is a native-only
recipe and already has -native in the name it should use the native
bbclass directly.

See for example meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
in openembedded-core.

Best regards,

--=20
Paul Barker


--=-dyyxDuXT5GBAhnvTFNcu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaiBuDBEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bpTkAQD4XqwTRn/D6UeKiLm6+9W10NiTiPjypmul
WiBBxTu4pgEA3DDqsNV+BEdZQk6sEKYTh2l+EbieW+jBOM3WI8d1xg8=
=s7/z
-----END PGP SIGNATURE-----

--=-dyyxDuXT5GBAhnvTFNcu--

