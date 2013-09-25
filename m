Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDF6E01621
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 12:32:14 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w62so133828wes.29
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 12:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:content-transfer-encoding:message-id:references:to;
	bh=eV/qgrhPYXijRvXdUd9xfnB1G7DTiUQmTAO6EW9BZSI=;
	b=Kvo8SVNk0XFwafVttU5zL+5Tlip+tITeVQKsQAk8A+EfLmnNuZmwHHhEg+EUXnkw/Y
	+pyASBeQ4oixQ/w7+pTlu5NXBdDO/Hanhopwer6Ve1dPxTigyBfEUU2RMpISknZXUsSZ
	4q1kCLy9hJRClEQvbvEE6sDEH6AGHTu1Pgip9q6eZgXQKicQ95XKqLczZngewRBMBpDh
	vvN155pCiu/0EKM93/zdBx4jmsWmNbLJoaFhkrix7osEV/tEih6bLQ7MEVOKIyRKwXcN
	58mMTPs/ccu+UtOqCzJytJ9dq6NAHd3tq6plY6Y8CYmcwn54mNXlOt3aPjbMJv63poiS
	2XmQ==
X-Gm-Message-State: ALoCoQltruN/Nd60aB9voKe3Z04pdmnN312rKAqK4E6sBxSPWXJQjPu/3Ylel4LITR9BcXY/Z2rY
X-Received: by 10.180.98.105 with SMTP id eh9mr24125640wib.56.1380137533474;
	Wed, 25 Sep 2013 12:32:13 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94]) by mx.google.com with ESMTPSA id
	iz19sm20940740wic.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 25 Sep 2013 12:32:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: =?iso-8859-1?Q?Jean-Charles_JC_Verdi=E9?= <jc@vtkloud.com>
In-Reply-To: <52348262.6060706@vtkloud.com>
Date: Wed, 25 Sep 2013 21:32:10 +0200
Message-Id: <ACB3EB40-42EC-4F93-925B-284095121BF9@vtkloud.com>
References: <52348262.6060706@vtkloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1510)
Subject: Re: Trying to install some cpan modules - dumper.so wrong ELF class???
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
X-List-Received-Date: Wed, 25 Sep 2013 19:32:15 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Yoctoers,

Anyone got any idea about this previous mail ?=20

On 14Sep 2013, at 5:36 PM, JC <jc@vtkloud.com> wrote:

> I need a few CPAN modules. For most of them I had no issue with a =
common recipe, but I end up with issues on Net::SDP
>=20
> here's my recipe :
> SUMMARY =3D "Collection of Perl modules for working with shairport."
> SECTION =3D "libs"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de2042=
0"
>=20
> SRC_URI =3D =
"http://www.cpan.org/modules/by-module/Net/${BPN}-${PV}.tar.gz "
>=20
> SRC_URI[md5sum] =3D "bb70cb8ebb7ca57c20ac134ac4499e66"
> SRC_URI[sha256sum] =3D =
"f43fa0f8f9705ae66a4084d13691c2ad7724b381424d368404c3d825bc5782f0"
>=20
> require cpan.inc
>=20
> and cpan.inc is :
> S=3D "${WORKDIR}/${BPN}-${PV}"
>=20
> inherit cpan
>=20
> do_compile() {
>    export LIBC=3D"$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name =
'libc-*.so')"
>    cpan_do_compile
> }
>=20
>=20
> Here's the error message:
>=20
> Can't load =
'/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/p=
erl/5.14.3/auto/Data/Dumper/Dumper.so' for module Data::Dumper: =
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/pe=
rl/5.14.3/auto/Data/Dumper/Dumper.so: wrong ELF class: ELFCLASS32 at =
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/l=
ib/perl-native/perl/5.14.3/XSLoader.pm li
>=20
>=20
> Does it ring a bell to anyone ???
>=20

I'd be willing to fix it, but I simply have no clue where to start :(


Regards
Jay


