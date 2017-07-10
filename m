Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2875E00C35; Mon, 10 Jul 2017 11:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C95E00BB6
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:27:32 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id u62so53465232pgb.3
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=g4OEDhv67Ot8bIZSZo7TwReFVAlGYP3PkEdN7wMN1hI=;
	b=uxgqeQZDeyB2XxJWlplVLIWPi8691xDfxQf/pcSiLOnVszrYM+SWq2Lp6LJ8uZghmF
	cR/wqYM7BAYKl8i8ILZ6deGgiSK0mh6U78bgDkv9BHBz4DbitjSLmDtk5dOnZAva9eu5
	ASZ5dxyI2KK7YLIiSCfdZmtF3d+suG1J7/Hw/9ibFi5NuoxJyFXjZMqc7HV0DId79GUn
	3/ZcO5n/S4HOGKCzCEcmFpjUAh7H3xuA/gHXzGsUt0xVQpKBQUSOef+92mAPiAe4jOYf
	6UyS9Y/DGuV2Oee0Nl5AZRNNtBZkyQbXPlhQXA7Vt4o5DPL/I6vrQIjZMxfDUnBtKpVa
	HLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=g4OEDhv67Ot8bIZSZo7TwReFVAlGYP3PkEdN7wMN1hI=;
	b=LZWS2s1DWxHzV9IYOn130aUZJP3PxS1goxQGHOBgPC0SV/7K1k19V9L87vKepGL8JS
	14JaMb8DwnD0ew/NTFqoXJvBJJUFBWMfgdFbug2sy/cNRFdItWww85pCx5rRFYC7ykyF
	Zngqi91Xsl6EvVA0F5PKJZA6PURxdtpCJPBco+QR7nnxXlaloQ9FRpT9n5Ywm8JjswCx
	CWMh4byWR21nqtfrAii+D73OpAPq587A4mYyW8iLAxqKEIZDSkiolTistXQKxMZHOk8V
	r7DarroumH6BohMwVOTtg2BDmu/uK2OfQazhfdu6rqKLGOOx+pBCU3yRqnAyGrIhLKdO
	yHBw==
X-Gm-Message-State: AIVw1136kg+J9DBr2BQ5udbmp5rS8rHI4F/igRS68FsNPmIIHXL5hTWP
	3Obd2gDyhv5vX1Kl4Fw=
X-Received: by 10.84.198.3 with SMTP id o3mr19542204pld.84.1499711251698;
	Mon, 10 Jul 2017 11:27:31 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:916c:598f:a4d5:4c49?
	([2601:646:8882:b8c:916c:598f:a4d5:4c49])
	by smtp.gmail.com with ESMTPSA id
	t67sm26445998pfj.98.2017.07.10.11.27.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jul 2017 11:27:30 -0700 (PDT)
To: Jack Kiefer <jack.c.kiefer@gmail.com>, yocto@yoctoproject.org
References: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
	<96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
	<CAJQwCK95Fwjh5q+8FvhjNWChHdHDQi_WOtZCaQwzGv50qBzU-A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <a5968787-5f72-1b16-7b70-4c04ea5340fc@gmail.com>
Date: Mon, 10 Jul 2017 11:27:25 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <CAJQwCK95Fwjh5q+8FvhjNWChHdHDQi_WOtZCaQwzGv50qBzU-A@mail.gmail.com>
Subject: Re: Openssh patch being overriden by original unpatched file
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
X-List-Received-Date: Mon, 10 Jul 2017 18:27:35 -0000
X-Groupsio-MsgNum: 36985
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="K69n7fVoTnXEOcxTD9rbt4dxovpdudEs0"

--K69n7fVoTnXEOcxTD9rbt4dxovpdudEs0
Content-Type: multipart/mixed; boundary="aCkxw4pcmbdsugwx76gPgCsBMH0mGcGVT";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Jack Kiefer <jack.c.kiefer@gmail.com>, yocto@yoctoproject.org
Message-ID: <a5968787-5f72-1b16-7b70-4c04ea5340fc@gmail.com>
Subject: Re: [yocto] Openssh patch being overriden by original unpatched file
References: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
 <96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
 <CAJQwCK95Fwjh5q+8FvhjNWChHdHDQi_WOtZCaQwzGv50qBzU-A@mail.gmail.com>
In-Reply-To: <CAJQwCK95Fwjh5q+8FvhjNWChHdHDQi_WOtZCaQwzGv50qBzU-A@mail.gmail.com>

--aCkxw4pcmbdsugwx76gPgCsBMH0mGcGVT
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/10/17 11:16 AM, Jack Kiefer wrote:
> Ah, yes, apologies if I wasn't very clear. That is what I ended up
> doing. What I was originally after was trying to modify the file in a
> way such that if an update to openssh were to change the way the config=

> file is laid out there would be a better chance that my modifications
> would still be compatible. That is, a potential update to the default
> config file is unlikely to change the way a specific option I'm
> modifying is handled, but if any other major/breaking changes are made
> to how the config file works then my own layer's entire sshd_config
> would be inappropriate for the new version of openssh and would need to=

> be manually replaced and updated. This manual work is what I am trying
> to avoid.=20

we could turn those files into patches in oe-core, however that might
break existing layers which might already be using current override metho=
d.

>=20
> On Mon, Jul 10, 2017 at 12:02 PM Khem Raj <raj.khem@gmail.com
> <mailto:raj.khem@gmail.com>> wrote:
>=20
>     On 7/10/17 10:48 AM, Jack Kiefer wrote:
>     > Howdy all,
>     >
>     > I've been having a bit of an interesting time trying to ship a
>     modified
>     > sshd_config file to my images using Yocto Morty. I first tried
>     adding a
>     > .bbappend to the openssh recipe in which I prepended a patch file=
 that
>     > would modify sshd_config to my liking. Interestingly, Yocto would=

>     > definitely run do_patch and presumably patch the file successfull=
y (I
>     > ensured the patch was correct by manually using the patch
>     command), but
>     > somehow the patched file was still overridden by the original fil=
e in
>     > the final version of the image.
>     >
>     > I've been able to temporarily remedy this by using the .bbappend =
to
>     > simply use an entire modified sshd_config file from its FILES
>     directory
>     > rather than applying a patch.
>     >
>     > Is this how Yocto is supposed to behave? Is there a more correct
>     way of
>     > providing fairly version-agnostic modifications to config files
>     like this?
>     >
>=20
>     this file is specified in SRC_URI as a whole to be copied from reci=
pe
>     area to build area
>=20
>     SRC_URI =3D
>     "http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.=
tar.gz
>     <http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-$%7BPV=
%7D.tar.gz>
>     \
>                file://sshd_config \
>                file://ssh_config \
>     ...
>=20
>     when you want to override such cases where a conf file is provides =
via
>     the metadata on top of original sources then you can create a .bbap=
pend
>     in your own layer and let bitbake parse it via adding
>=20
>=20
>     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
>     and then put your sshd_config file in your own layer e.g under
>     recipes-connectivity/openssh/openssh/
>=20
>     This will instruct bitbake to use the config file from your overlay=

>     also pay attention to layer priority, usually you want your own lay=
er
>     to have higher priority and appear before other layers in BBPATH
>=20
>=20
>     > Thanks!
>     > Jack
>     >
>     >
>=20
>=20



--aCkxw4pcmbdsugwx76gPgCsBMH0mGcGVT--

--K69n7fVoTnXEOcxTD9rbt4dxovpdudEs0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlljxxEACgkQuwUzVZGdMxS/RgCdGI7xdC3Ri2c8XfHYmV7ZKkag
5UcAoIa1+DZvF7Dvm0X52OkeoSMi77jc
=wZSJ
-----END PGP SIGNATURE-----

--K69n7fVoTnXEOcxTD9rbt4dxovpdudEs0--
