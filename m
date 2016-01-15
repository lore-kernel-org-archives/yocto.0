Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90251E00AB7; Fri, 15 Jan 2016 12:28:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F84EE00928
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 12:28:56 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id n128so122837748pfn.3
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 12:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BIB9qC22w8tddfk1cq5HbMbF2KOJFvUz2z0nnvJjaCQ=;
	b=gZWvA8MLkUyg+oycARBKhySqGBVozrZ3hAyPLwLZNb+Dv33ZXlXTJIdCt18BAIMCkN
	WLLSRja2yv/ACbIjLDsVNYSUVeA/6kL6lC+yKJPC4+rp5B2WOOPRSkYQNlkOI9UVCNXS
	stUW4M1XoqgfZ5A4I1gqbdggLqaHUox27lKR9Ew/Xeyg/MjdO6WbTYi5zsr/TzWZtQBF
	+WqF1DZOR/XRPEQgUJ3l7NPZ5NSmeWFmj31geflk7mYUA5UObITQjnb5NFlacsxVV3nH
	D9BejrjJb7WTxdVP+543U29JT38TPPqGst7WG2nHSoxUuWErxTJWVl4pxY9YbT5BfdNk
	P8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=BIB9qC22w8tddfk1cq5HbMbF2KOJFvUz2z0nnvJjaCQ=;
	b=P8Oh2nhuCWsCbyUshsnTeBY/iUaan+uIxMEFm2dHNPj/O8lKqHekpsq3/6rKOtn41H
	U9tllO2QC+cP3wUqet7WfLiJRejEr3byqo+bVMTFFp8vQLfxB0kkMBjts1ekItInMc4F
	gURdF7wQDXxk5VtmC/rTDArh+TwyaBRLqbLu79RzIWd+Vmid8H9n+1p9xjd1l33Z9YXw
	K+jVoXe1TI7Xu5Wx0oEZivzW+6iTZUG2FENih71kuyfcEhZhFPN4KXStqK7tiSjZTKN9
	HAv5FOOpjumKbfrwJlKL+VtKX80kT/fedoHPxqsOlpWkBwPqpkn5ubtPgJ9EnuvmL/o6
	GxDw==
X-Gm-Message-State: ALoCoQltvhkMaidPMMucFxeuY74KObaPnkfO42t3plaEPZ0VLX7rCU70QVfGH924aQOc1CayJTPel3SyM9iJNED4LCIxNCAu5w==
X-Received: by 10.98.72.135 with SMTP id q7mr17697977pfi.151.1452889735652;
	Fri, 15 Jan 2016 12:28:55 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:84eb:56dc:942:f0f5?
	([2601:646:8802:5d5c:84eb:56dc:942:f0f5])
	by smtp.gmail.com with ESMTPSA id
	e82sm17265420pfb.76.2016.01.15.12.28.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Jan 2016 12:28:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3 (Normal)
In-Reply-To: <1452887980.346115345@apps.rackspace.com>
Date: Fri, 15 Jan 2016 12:28:50 -0800
Message-Id: <A7EDFB66-AD2A-42A1-A966-B7E64B4DC72B@gmail.com>
References: <1452783285.1696717@apps.rackspace.com>
	<E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com>
	<1452870935.80157155@apps.rackspace.com>
	<0BD254ED-B494-4975-B6AB-58FA2E6BDBDA@gmail.com>
	<1452887980.346115345@apps.rackspace.com>
To: Scott Ellis <scott@jumpnowtek.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][coreutils] Add attr build dependency
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
X-List-Received-Date: Fri, 15 Jan 2016 20:28:58 -0000
X-Groupsio-MsgNum: 28011
Content-Type: multipart/signed;
	boundary="Apple-Mail=_53D0C7B0-601A-4C9D-849A-1361C8EE2358";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_53D0C7B0-601A-4C9D-849A-1361C8EE2358
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 15, 2016, at 11:59 AM, Scott Ellis <scott@jumpnowtek.com> =
wrote:
>=20
> Fixes this warning:
>=20
> WARNING: QA Issue: coreutils rdepends on libattr, but it isn't a build =
dependency? [build-deps]
>=20
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
> meta/recipes-core/coreutils/coreutils_8.24.bb | 9 +++++++--
> 1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb =
b/meta/recipes-core/coreutils/coreutils_8.24.bb
> index f042346..6a09c59 100644
> --- a/meta/recipes-core/coreutils/coreutils_8.24.bb
> +++ b/meta/recipes-core/coreutils/coreutils_8.24.bb
> @@ -28,14 +28,19 @@ SRC_URI[manpages.sha256sum] =3D =
"cf0333b5f134a331e0b46e2ddf90666f8bdc3281c1ca2c7cc
> EXTRA_OECONF_class-native =3D "--without-gmp"
> EXTRA_OECONF_class-target =3D "--enable-install-program=3Darch =
--libexecdir=3D${libdir}"
>=20
> -# acl is not a default feature
> +# acl and xattr are not default features
> #
> -PACKAGECONFIG_class-target ??=3D =
"${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
> +PACKAGECONFIG_class-target ??=3D "\
> +    ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)} \
> +    ${@bb.utils.contains('DISTRO_FEATURES', 'xattr', 'xattr', '', d)} =
\
> +=E2=80=9D

Thanks, this one looks good.

> +

> PACKAGECONFIG_class-native ??=3D ""
>=20
> # with, without, depends, rdepends
> #
> PACKAGECONFIG[acl] =3D "--enable-acl,--disable-acl,acl,"
> +PACKAGECONFIG[xattr] =3D "--enable-xattr,--disable-xattr,attr,"
>=20
> # [ df mktemp base64 gets a special treatment and is not included in =
this
> bindir_progs =3D "arch basename chcon cksum comm csplit cut dir =
dircolors dirname du \
> --
> 2.5.0
>=20
> "Khem Raj" <raj.khem@gmail.com> said:
>=20
>>=20
>>> On Jan 15, 2016, at 7:15 AM, Scott Ellis <scott@jumpnowtek.com> =
wrote:
>>>=20
>>> The 'something' would be 'xattr'
>>>=20
>>> PACKAGECONFIG[attr] =3D "--enable-xattr,--disable-xattr,attr,"
>>>=20
>>> What should the default be?
>>>=20
>>> The acl option for coreutils looks in DISTRO_FEATURES.
>>>=20
>>> Should I do the same for this?
>>=20
>> if it depends on some DISTRO_FEATURE then definitely yes. Otherwise =
define the
>> packageconfig
>> and then weakly assign a default with ??=3D
>>=20
>>>=20
>>> "Khem Raj" <raj.khem@gmail.com> said:
>>>=20
>>>> Scott
>>>>=20
>>>> Thanks for patch. You might want to send into to oe-core mailing =
list.
>>>>=20
>>>>> On Jan 14, 2016, at 6:54 AM, Scott Ellis <scott@jumpnowtek.com> =
wrote:
>>>>>=20
>>>>> Fixes this warning:
>>>>>=20
>>>>> WARNING: QA Issue: coreutils rdepends on libattr, but it isn't a =
build
>>>>> dependency? [build-deps]
>>>>>=20
>>>>> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
>>>>> ---
>>>>> meta/recipes-core/coreutils/coreutils_8.24.bb | 2 +-
>>>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>=20
>>>>> diff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb
>>>>> b/meta/recipes-core/coreutils/coreutils_8.24.bb
>>>>> index f042346..47a25f3 100644
>>>>> --- a/meta/recipes-core/coreutils/coreutils_8.24.bb
>>>>> +++ b/meta/recipes-core/coreutils/coreutils_8.24.bb
>>>>> @@ -7,7 +7,7 @@ BUGTRACKER =3D "http://debbugs.gnu.org/coreutils"
>>>>> LICENSE =3D "GPLv3+"
>>>>> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504\
>>>>>                   =
file://src/ls.c;beginline=3D5;endline=3D16;md5=3D38b79785ca88537b75871782a=
2a3c6b8"
>>>>> -DEPENDS =3D "gmp libcap"
>>>>> +DEPENDS =3D "attr gmp lib cap=E2=80=9D
>>>>=20
>>>> while this fix is good. We can make this into a packageconfig knob
>>>>=20
>>>> PACKAGECONFIG[attr] =3D =
"--enable-something,--disable-something,attr,"
>>>>=20
>>>>> DEPENDS_class-native =3D ""
>>>>>=20
>>>>> inherit autotools gettext texinfo
>>>>> --
>>>>> 2.5.0
>>>>>=20
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>=20
>>>>=20
>>>=20
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_53D0C7B0-601A-4C9D-849A-1361C8EE2358
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlaZVoYACgkQuwUzVZGdMxRGegCYtEYp+Wv1w9ZvYfKY3uS3sQUr
QwCeIZ+2c+GzrntN0T3GSsUJKfHUgX8=
=eezJ
-----END PGP SIGNATURE-----

--Apple-Mail=_53D0C7B0-601A-4C9D-849A-1361C8EE2358--
