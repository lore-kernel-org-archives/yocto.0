Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A554DE009EB; Mon, 18 May 2015 19:15:42 -0700 (PDT)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53F61E009D8
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 19:15:41 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so2397886pdb.1
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 19:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=RCefoPe8sWsSo4lzstqnoTM/Ho4Qg3+yMGjAiD5AuUs=;
	b=bLNQc+YhzH/lBMC03h6aXel6zbIIR0JrNdlw2fu4DPR5+31/goJLXnYBkMoTwJCjnY
	UuMjPHpxF1qOn/SOQnbmGmK6m/P94C+kekvsHxkpejui7FONnsyuIJoUdcKaHvKJNGBd
	in5/bb3c/BYk1XyAKD5ZrW8KCtk9t+XlY/RF1sExFuRhZ4h7GYUFUnIwNNBinuoqTZLY
	QDt9TR9FLRfYjNMUMhW7FhEeU9CAKoigTTnv7vrnsLd0HbdvR3GDBKiT4zM7LP66OVn6
	A2sIIc0Gu4hfg/A2WKFJJhvMhqx6HVTmnss1eq+Jt6BKmnoIdkNAb060wRMi2co7N2uy
	QpRA==
X-Received: by 10.66.234.134 with SMTP id ue6mr49028764pac.146.1432001741480; 
	Mon, 18 May 2015 19:15:41 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:d1bd:ca93:84da:dce8?
	([2601:9:3580:84c:d1bd:ca93:84da:dce8])
	by mx.google.com with ESMTPSA id ry9sm11354563pab.2.2015.05.18.19.15.40
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 May 2015 19:15:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1431802650-1340-1-git-send-email-flihp@twobit.us>
Date: Mon, 18 May 2015 19:15:39 -0700
Message-Id: <D723CCDB-4ED0-453E-B346-AC03C3D7AE90@gmail.com>
References: <1431802650-1340-1-git-send-email-flihp@twobit.us>
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
X-List-Received-Date: Tue, 19 May 2015 02:15:42 -0000
X-Groupsio-MsgNum: 24880
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D4FE01BB-23DC-4633-8B88-2E9CD2154E4D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D4FE01BB-23DC-4633-8B88-2E9CD2154E4D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 16, 2015, at 11:57 AM, Philip Tricca <flihp@twobit.us> wrote:
>=20
> Upstream 3.19 isn't supported by meta-selinux yet. Set =
PREFERRED_VERSION
> to 3.14 as a work-around to keep the reference images bootable.
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

same here

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


--Apple-Mail=_D4FE01BB-23DC-4633-8B88-2E9CD2154E4D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVanMsACgkQuwUzVZGdMxRFcwCfZ9TMtUipm/QpD3W3KQ4aEhUM
t/cAoIPOBWpmRmjzgEwbFv6sFmCYCV+5
=TGEL
-----END PGP SIGNATURE-----

--Apple-Mail=_D4FE01BB-23DC-4633-8B88-2E9CD2154E4D--
