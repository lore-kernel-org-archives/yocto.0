Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C00E00C1A; Tue, 15 Nov 2016 22:48:07 -0800 (PST)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D15E00BF8
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:48:03 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id i88so9253450pfk.2
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=SjK+ZToLuYGB1MHuUnlWk2IJg6lIxaKR3nOMOxKG8/U=;
	b=ikkvy44QMZjOquRVTe2gWPrbtpi1FnYlUIEgG4DqE7p5g6UM8nZC3f7XJmnFeUXD3W
	0Vlq6M/eJLegzC4Lh1ISReAxfK+SRzI20wnpYLKMToLtat8aO5ht9nvQMwWe29ryEU+5
	KT/TyixTOuo8Y3hMFEce7jmxYDDGXt7Kl1kA093x3udqYLKKo0DlUQkXUVUiokk8MfD1
	pmaHwGmEeN52LOfhc2wocx2DImH8eIyOqQHfWjOpw5+wRpMCVuwxyB+9+QAAhF86DVxO
	Vk932G6ZAe4WuLRDJiDd+6JRhaYfNvE6DxaHk7pz2R3ZJ/XXIaPkZiB0VqjjiYX9dYDx
	jFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=SjK+ZToLuYGB1MHuUnlWk2IJg6lIxaKR3nOMOxKG8/U=;
	b=Kuc8rgA7+n7B4xRHTRwhDHut0NoJLNMjtykJNV5fsuROfKQLwpk6r9KsX6Hd1GCtz/
	L/WAMSohaJoG17nm1HDauIBASqxtphdelrsLbcipTsNnCHnyPkndezY1yVdZNYjCwWG6
	u6JslA1ZVeTGF1TkiC3fiDOneveZwCNfrvjDzBqWTQ8mf4L7JfFJPMRJlGqwdrCflM/D
	CyDRSwAtHqdYHFyasnSNbY/PIJoOzKo2xzXU7AcJVMpN1r21oIWBwx6bbiUUCr9FEt6o
	qeTCoaJSGqtqGaDDM581lJn3uB6o7339/49zwWJ5SbHCYZW60vD6GmcUXUvpmy4YLPlB
	bh5A==
X-Gm-Message-State: ABUngve4F8p04I3Bwtogi9pGMnvO/TwExXVutEBSWoFJZJsgkilRjKMHl7/x5OHapzT1lQ==
X-Received: by 10.99.53.195 with SMTP id c186mr4908011pga.125.1479278883094;
	Tue, 15 Nov 2016 22:48:03 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:3c7d:de15:1971:ad3c])
	by smtp.gmail.com with ESMTPSA id
	65sm49449674pfn.12.2016.11.15.22.48.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Nov 2016 22:48:01 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
Date: Tue, 15 Nov 2016 22:47:52 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
Subject: Re: New error
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
X-List-Received-Date: Wed, 16 Nov 2016 06:48:07 -0000
X-Groupsio-MsgNum: 32990
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="9BNDadVJq4nQ3K0jk6nj0Q0mkSVU9XvCh"

--9BNDadVJq4nQ3K0jk6nj0Q0mkSVU9XvCh
Content-Type: multipart/mixed; boundary="MRQXuGTlfW8lejqSWMEbLMIhAMDp8I0K4";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
Subject: Re: [yocto] New error
References: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
In-Reply-To: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>

--MRQXuGTlfW8lejqSWMEbLMIhAMDp8I0K4
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Can you test out this patch for OE-Core

https://github.com/kraj/openembedded-core/commit/b2d345d0217db0c2dda3b9b4=
0824829116599568


On 11/15/16 4:41 AM, Gary Thomas wrote:
> I just ran a new build for one of my PowerPC targets and I'm getting er=
rors
> like these:
>=20
> ERROR: openssh-7.3p1-r0 do_package: runstrip:
> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=3D.comment
> --remove-section=3D.note
> '/build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/open=
ssh/7.3p1-r0/package/usr/bin/scp.openssh''
> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
> /build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/opens=
sh/7.3p1-r0/package/usr/bin/strW48QK:
> Not enough room for program headers, try linking with
> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/=
work/p1022ds-amltd-linux-gnuspe/openssh/7.3p1-r0/package/usr/bin/strW48QK=
[.interp]:
> Bad value\n')
> ERROR: coreutils-8.25-r0 do_package: runstrip:
> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=3D.comment
> --remove-section=3D.note --strip-unneeded
> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/co=
reutils/8.25-r0/package/usr/lib/coreutils/libstdbuf.so''
> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/cor=
eutils/8.25-r0/package/usr/lib/coreutils/std1tFcO:
> Not enough room for program headers, try linking with
> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/=
work/ppce500v2-amltd-linux-gnuspe/coreutils/8.25-r0/package/usr/lib/coreu=
tils/std1tFcO[.note.gnu.build-id]:
> Bad value\n')
> ERROR: eudev-3.2-r0 do_package: runstrip: ''powerpc-amltd-linux-gnuspe-=
strip'
> --remove-section=3D.comment --remove-section=3D.note --strip-unneeded
> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/eu=
dev/3.2-r0/package/lib/libudev.so.1.6.3''
> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/eud=
ev/3.2-r0/package/lib/stxt1rac:
> Not enough room for program headers, try linking with
> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tmp/=
work/ppce500v2-amltd-linux-gnuspe/eudev/3.2-r0/package/lib/stxt1rac[.note=
=2Egnu.build-id]:
> Bad value\n')
>=20
> Actually, I got 438 of them :-(
>=20
> Build Configuration:
> BB_VERSION        =3D "1.32.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal"
> TARGET_SYS        =3D "powerpc-amltd-linux-gnuspe"
> MACHINE           =3D "p1022ds"
> DISTRO            =3D "amltd"
> DISTRO_VERSION    =3D "2.2+snapshot-20161115"
> TUNE_FEATURES     =3D "m32 spe ppce500v2"
> TARGET_FPU        =3D "ppc-efd"
> meta              =3D "master:43e652f3d1fee5ce7fad67e6400315eab1b34270"=

> meta-amltd        =3D "master:697b2bc1467a311233f1da362aa4c8a2cccf52bf"=

> meta-diskstation  =3D "master:0839596be89af4da67fb7c5ab41337f1a382e5b5"=

> meta-freescale    =3D "master:979d079732949c49f7a859e93278287eb95fa056"=

>=20
>=20
> Questions:
> * What's the best way to fix them?  I assume it's just some
>   compiler/binutils option I need to adjust.  I tried comparing
>   this build against the stock qemuppc, but it got no such errors
>   and I don't see the difference (except for the CPU tuning of
>   e500v2 vs 7400).
> * If these are labeled 'ERROR', why do the packages continue
>   to be built?  Indeed, I ended up with a complete build image
>   (which I've not been able to test yet so I don't know if these
>   errors actually break things)
>=20
> Thanks for any pointers
>=20


--MRQXuGTlfW8lejqSWMEbLMIhAMDp8I0K4--

--9BNDadVJq4nQ3K0jk6nj0Q0mkSVU9XvCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgsAR4ACgkQuwUzVZGdMxRHWwCcDBGVcDpbFSljATJerzqiNTpe
jEsAn0F3b3BTHOFYlEJGucsghiDaglok
=sLQR
-----END PGP SIGNATURE-----

--9BNDadVJq4nQ3K0jk6nj0Q0mkSVU9XvCh--
