Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BAE0E009DA; Mon, 18 May 2015 19:15:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 062B9E0099B
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 19:15:26 -0700 (PDT)
Received: by pdfh10 with SMTP id h10so2257102pdf.3
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 19:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=TNJTiW4tbKs9OxksCMBxw4iTCmbjtYTzJhTqRZdWOlA=;
	b=T1o0uA9nqPESvh4d6BITj2rdOVSgHu+YqnbCg6azTfpqm5mJfiOQdlFaOEfWz75Fwd
	WbDCv0cwskQYjOYjIIKBtU/sLf15WstXW5uWP50ePd6kcQvcSwpoWOEXgnVC0BE+0YO2
	ATdS9UVKaIFyIo9t4NT+xV0Cy6sc+CzoYsUOvU8aPBlFVELD81NWGmKvKrR2RbNla7Hp
	3prOIvkJVmh1zGXakx4vQw7cPePKST9YpqGv6Y0nMlV/mFOaqXL3y+ffcGdccJBjTbJn
	fyBI95GdK5IHSkcE1JEF/YBnDqCamenaodvBSe3s54aY1RLRcIOHfccXFM7XUStUKYKX
	Z0GQ==
X-Received: by 10.70.138.38 with SMTP id qn6mr48635816pdb.119.1432001725841;
	Mon, 18 May 2015 19:15:25 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:d1bd:ca93:84da:dce8?
	([2601:9:3580:84c:d1bd:ca93:84da:dce8])
	by mx.google.com with ESMTPSA id ry9sm11354563pab.2.2015.05.18.19.15.24
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 May 2015 19:15:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1431803087-1601-1-git-send-email-flihp@twobit.us>
Date: Mon, 18 May 2015 19:15:19 -0700
Message-Id: <EBC449ED-D648-4DDD-BB75-55FF8275A3E0@gmail.com>
References: <1431802650-1340-1-git-send-email-flihp@twobit.us>
	<1431803087-1601-1-git-send-email-flihp@twobit.us>
To: Philip Tricca <flihp@twobit.us>
X-Mailer: Apple Mail (2.2098)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] oe-selinux.conf: set preferred kernel version to 3.14
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
X-List-Received-Date: Tue, 19 May 2015 02:15:30 -0000
X-Groupsio-MsgNum: 24879
Content-Type: multipart/signed;
	boundary="Apple-Mail=_40E176BB-BDA5-432E-98DA-47A4BA4CA6D2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_40E176BB-BDA5-432E-98DA-47A4BA4CA6D2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 16, 2015, at 12:04 PM, Philip Tricca <flihp@twobit.us> wrote:
>=20
> Upstream 3.19 isn't supported by meta-selinux yet. Set =
PREFERRED_VERSION
> to 3.14 as a work-around to keep the reference images bootable.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
> conf/distro/oe-selinux.conf | 2 ++
> 1 file changed, 2 insertions(+)
>=20
> diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
> index 6e55a32..ea3adbf 100644
> --- a/conf/distro/oe-selinux.conf
> +++ b/conf/distro/oe-selinux.conf
> @@ -1,4 +1,6 @@
> DISTRO =3D "oe-selinux"
> DISTROOVERRIDES .=3D ":selinux"
>=20
> +PREFERRED_VERSION_linux-yocto =3D "3.14%=E2=80=9D

IMO this looks a wrong place to pin kernel versions. Its BSPs choice =
hence belongs to machine
layers. unless you want to limit the scope of this layer to BSPs using =
linux-yocto only, then you need
to state that in README and still not set this but instead set a =
bbappend and raise a parse error to inform
the user about the layer expecting linux-yocto 3.14

> +

> DISTRO_FEATURES_append =3D " acl xattr pam selinux"
> --
> 2.1.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_40E176BB-BDA5-432E-98DA-47A4BA4CA6D2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVanLsACgkQuwUzVZGdMxQRwACeLF8LhJylGPQeWWpuJsPu6fdf
yEgAnR8B9xzMMOwkoZ/u0c4mj+oT3p7e
=5Ki8
-----END PGP SIGNATURE-----

--Apple-Mail=_40E176BB-BDA5-432E-98DA-47A4BA4CA6D2--
