Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6009FE00945; Sun,  2 Oct 2016 16:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02EA9E0089B
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 16:51:03 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id t6so4042915pae.2
	for <yocto@yoctoproject.org>; Sun, 02 Oct 2016 16:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Kbdhy85DWlNZ/zSyx5M7ZQweH69HsXuTHQpbRtwOeP4=;
	b=H7seV+yTcBnybzHgYxPAxhalE3/K+4Mp8bOlqJwU0cG/UNWyV/qktborVuu8+b35S0
	fuEK+a0v/VX9YzumK4HhCdazDa/H4g4966HK11fpaOCev69F5bgPRwCiDfG2wcNBiMw1
	TSVLiDQJrk0pkkoVMI8SFrg7h763PGjgGggs1BHTSXpGKc+q1BP+1hfMFmSKS6xuZh6l
	GUV8BIW4qGXaL8OBwUEdXZQ8zgIvejiA3aor4Q+VNxjE6t/jRp2HWEObnb4HWL3tlb0G
	ZRQ4hR+ZRZGNCamtLkHIpKXe6kdnRN4b66irEvr1TroxD6bo/TdN17URfo2qXxsiute7
	Y3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Kbdhy85DWlNZ/zSyx5M7ZQweH69HsXuTHQpbRtwOeP4=;
	b=QNgLKB+g24CPpXwRB2sRBRwCbwny6H1C6l7p/FylTFkdOskP8bFQxLsuuvx4HMH0sX
	xNXjNJ5uHXIU6kn0L7HubOFHPssXY8rg099kJTk2hA/2WOnQbf8uODj7BqdSY2vQbQtY
	61mn8ILGiUCFn/IiPvdaNu1JM29NaH/2ekt4W3fN4i3niU284tbUYw6S8smU3hM8cvZ4
	RpnV7mNpRog8CrcLYM4ODct+1/kQNJuaPHUw5Hu1tlYb5c/mscPSdtZIap/StCi5QQhZ
	sN/fFIhXKlwBUhxEvvfcV9WMB2SS3x16mwTnRXPZXEHPGo92uGkTRzVPCXsmXBwYRq0Y
	VPKQ==
X-Gm-Message-State: AA6/9RnOAAZW/YDDJfX38alFJJjw1pOpAotBuYcxXRZ+eYvdamVzUr7ABvKXpeM9jq+ZAw==
X-Received: by 10.66.13.34 with SMTP id e2mr32398816pac.103.1475452263618;
	Sun, 02 Oct 2016 16:51:03 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:4b8:204d:45de:e844?
	([2601:646:8882:b8c:4b8:204d:45de:e844])
	by smtp.gmail.com with ESMTPSA id
	t16sm42277097pfj.76.2016.10.02.16.51.02
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Oct 2016 16:51:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161002143422.GA24664@openSUSE-i7.site>
Date: Sun, 2 Oct 2016 16:51:01 -0700
Message-Id: <DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
References: <20161002143422.GA24664@openSUSE-i7.site>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Sun, 02 Oct 2016 23:51:07 -0000
X-Groupsio-MsgNum: 32160
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5CA8CBCE-E841-4289-80E6-20BE44A5FF0B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5CA8CBCE-E841-4289-80E6-20BE44A5FF0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 2, 2016, at 7:34 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> Hi,
>=20
> For the last week or so my raspberry pi builds have been failing with:
>=20
> ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch =
2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 =
for =
/z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi=
_sdimg
> ERROR: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus =
a47bfc12fdfa29c58fe72cf8e0a28e91 for =
/z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi=
_sdimg
>=20
> This is with both poky and oe+bitbake, master branches all around, and =
fully
> up-to-date. Before sending this email I pulled yet again and re-tested =
just to
> confirm.
>=20

is it due to use of DATE and TIME issue ? I think there was such a patch =
proposed to meta-rpi see
=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=3D4c=
02c7ce07121c2f5367204445f93199d828bb10

> Poky:
>=20
> 	Build Configuration:
> 	BB_VERSION        =3D "1.31.1"
> 	BUILD_SYS         =3D "x86_64-linux"
> 	NATIVELSBSTRING   =3D "SUSELINUX-42.1"
> 	TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> 	MACHINE           =3D "raspberrypi"
> 	DISTRO            =3D "poky"
> 	DISTRO_VERSION    =3D "2.1+snapshot-20161002"
> 	TUNE_FEATURES     =3D "arm armv6  vfp arm1176jzfs =
callconvention-hard"
> 	TARGET_FPU        =3D "hard"
> 	meta
> 	meta-poky         =3D =
"master:3a73fe0efcb7aeefcca7011bba887caad03d4d03"
> 	meta-raspberrypi  =3D =
"master:4817e2c087097c02755d6309304878e42cf61d3c"
>=20
> OE + bitbake:
>=20
> 	Build Configuration:
> 	BB_VERSION        =3D "1.31.1"
> 	BUILD_SYS         =3D "x86_64-linux"
> 	NATIVELSBSTRING   =3D "SUSELINUX-42.1"
> 	TARGET_SYS        =3D "arm-oe-linux-gnueabi"
> 	MACHINE           =3D "raspberrypi"
> 	DISTRO            =3D "nodistro"
> 	DISTRO_VERSION    =3D "nodistro.0"
> 	TUNE_FEATURES     =3D "arm armv6  vfp arm1176jzfs =
callconvention-hard"
> 	TARGET_FPU        =3D "hard"
> 	meta              =3D =
"master:21cc2a3f63ea260dbf6b50e2fd4dd50cacdd9935"
> 	meta-raspberrypi  =3D =
"master:4817e2c087097c02755d6309304878e42cf61d3c"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_5CA8CBCE-E841-4289-80E6-20BE44A5FF0B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfxnWYACgkQuwUzVZGdMxSJXgCfVhiv3qc1aw4Y5PdxMuigRPbH
duIAni5PVD7nrvDWgkujHsFAv09RukSG
=xMit
-----END PGP SIGNATURE-----

--Apple-Mail=_5CA8CBCE-E841-4289-80E6-20BE44A5FF0B--
