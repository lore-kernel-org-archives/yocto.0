Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13921.1587063301492244419
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Apr 2020 11:55:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D16DE019FB; Thu, 16 Apr 2020 11:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B35EE019F8
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2020 11:54:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03GIrxpT025535
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 16 Apr 2020 11:54:11 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 16 Apr
 2020 11:53:48 -0700
Subject: Re: [yocto] Building gutenprint recipe
To: Timm <timm@timmedia.de>, <yocto@yoctoproject.org>
References: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <3ee7d1fd-3d27-2f6c-b4f8-2ab008086d82@windriver.com>
Date: Thu, 16 Apr 2020 14:53:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2018-07-07 6:02 a.m., Timm wrote:
> There was a gutenprint recipe back in OE-Classic:
> https://layers.openembedded.org/layerindex/oe-classic/recipe/12076/
>=20
> But currently there is no gutenprint available for Yocto.

Timm,

Did you ever get the gutenprint recipe to work?
Are you able to add it to meta-oe or share
what you have done so far here?

../Randy
>=20
> I tried to build my own recipe. But I got stuck at the stage where the
> build process wants to call some generated binaries:
>=20
>  =C2=A0=C2=A0=C2=A0 | ./extract-strings `cat xml-stamp | sed -e
> 's;^;../../../gutenprint-5.2.11/src/xml/;'` > xmli18n-tmp.h.tmp
>  =C2=A0=C2=A0=C2=A0 | /lib/ld-linux-armhf.so.3: No such file or directo=
ry
>=20
> So, I introduced a "native" recipe, which just compiles the
> "extract-strings" for me:
>=20
> -----------------------------------------------------------------------=
-----------------------------------
>=20
> SECTION =3D "libs"
> require gutenprint_${PV}.bb
> DEPENDS =3D "gettext-native"
> inherit native autotools
>=20
> EXTRA_OECONG =3D "\
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-libgutenprintui2 \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --disabl=
e-samples \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --without-gimp2 \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --without-doc \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-nls \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-nls-macos \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --without-foomatic \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --without-foomatic3 \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-escputil \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-test \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --disable-testpattern \
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 --without-cups \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 "
>=20
> do_compile() {
>  =C2=A0=C2=A0=C2=A0 oe_runmake -C src/xml/ extract-strings
> }
>=20
> -----------------------------------------------------------------------=
------------------------------------------
>=20
> The next step is quite unclear for me? How can I tell the build system
> not to generate the extract-strings again and use the native instead?
>=20
> As reference I used the build scripts from openwrt and buildroot. But
> I'm not able to translate this build steps to Yocto.
>=20
> https://github.com/FranciscoBorges/openwrt-printing-packages/blob/maste=
r/net/gutenprint/Makefile
>=20
> https://github.com/buildroot/buildroot/blob/master/package/gutenprint/g=
utenprint.mk
>=20


--=20
# Randy MacLeod
# Wind River Linux
