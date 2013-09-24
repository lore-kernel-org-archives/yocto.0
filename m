Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED10E015AD
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 13:35:36 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id x10so5131242pdj.1
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 13:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ThpAKTVnJWlKrKFlAeZFrQJM8EYYbN0X8KR2s3WD4l4=;
	b=IEEP/fn/86AwfagjmMX2nICoK0GqXJyCBowXTkJIkTQF5zeu6fRgrs7XwEiS0nptJD
	km/eJMMduKdT5nhmRK7mRG5hWED8sMuxFpiTFZPMjUE+XGQz6TVWT7fbpIj/GihcCXgd
	HwLKo0ysNeIHzv9Iv+8ggGO/OAEfeGniMqQvrKPKWSISIGzpkDr0/AmXyjUysweBFbhd
	l3hpbB829vKZqz24y0XIHLDSjXBcrmySvOSFzdq21tj3I2D4qJJ0v2jBEGWbnBE21Lsj
	LJRaQOwDZdYts237dcsWDtHOf3nddv4Tsh1hkSMGILuiLHCFSUIPAABky9+4Tf6ttEDq
	eodA==
X-Received: by 10.68.76.1 with SMTP id g1mr3630269pbw.109.1380054936652;
	Tue, 24 Sep 2013 13:35:36 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	k4sm42900128pbd.11.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 24 Sep 2013 13:35:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMS2kBF1Ha6tEWpkny1DZRXW5Z3T5YKBkd-GhhBrT3aVmjS8-Q@mail.gmail.com>
Date: Tue, 24 Sep 2013 13:35:34 -0700
Message-Id: <6B64C548-F8DD-45CB-B31C-5FE646D58F76@gmail.com>
References: <CAMS2kBF1Ha6tEWpkny1DZRXW5Z3T5YKBkd-GhhBrT3aVmjS8-Q@mail.gmail.com>
To: Glenn Schmottlach <gschmottlach@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: yocto@yoctoproject.org
Subject: Re: IPK naming oddity for ipkg's containing archived ${PN}-dev files
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
X-List-Received-Date: Tue, 24 Sep 2013 20:35:38 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Sep 24, 2013, at 1:17 PM, Glenn Schmottlach <gschmottlach@gmail.com> =
wrote:

> I've run across what appears to be a naming inconsistency (not sure if =
it's intentional or a bug) that seems to impact the name given to the =
ipk file for recipe's "dev" files.
>=20
>=20
> Let me be more clear. My recipe produces a shared object library =
called:
>=20
> libtts_engine.so

may be this should be something libtts_engine.so.X and libtts_engine.so =
is then a symlink to it which is commonly the
case with shared libraries

>=20
> This shared library is deployed in /usr/lib and the package-split =
directory structure looks like the following in my recipe workdir:
>=20
> package-split/tts-sdk-dev
> package-split/tts-sdk-dev/usr
> package-split/tts-sdk-dev/usr/lib
> package-split/tts-sdk-dev/usr/lib/libtts_engine.so
> package-split/tts-sdk-dev/usr/include
> package-split/tts-sdk-dev/usr/include/tts.h
>=20
> So, when Yocto generates my ipk archive I would expect it to be named =
something like:
>=20
> tts-sdk-dev_${PV}_${PACKAGE_ARCH}.ipk
>=20
> Instead, Yocto is generating the following name for the "dev" ipk:
>=20
> libtts_engine-dev_${PV}_${PACKAGE_ARCH}.ipk

this is because of debian library naming. see =
http://www.debian.org/doc/debian-policy/ch-sharedlibs.html
and http://www.v7w.com/debian/libpkg-guide.html#naminglibpkg

>=20
> This is *not* consistent with how the other ipk are named by Yocto, =
e.g.
>=20
> tts-sdk_${PV}_${PACKAGE_ARCH}.ipk
> tts-sdk-doc_${PV}_${PACKAGE_ARCH}.ipk
> tts-sdk-dbg_${PV}_${PACKAGE_ARCH}.ipk
>=20
> In the poky class file (package_ipk.bbclass) I looked at the =
do_package_ipk() python function and see that there is an explicit query =
for the following variable to determine the base name of the ipk file:
>=20
> pkgname =3D localdata.getVar('PKG_%s' % pkg, True)
>=20
> In most cases, this look-up returns the expected name, e.g. =
tts-sdk-doc, tts-sdk-dbg, etc.... But for some reason, the "dev" package =
name is remapped from tts-sdk to libtts_engine. My only counter-measure =
to correct this is to add the following explicit assignment in my =
recipe:
>=20
> PKG_${PN}-dev =3D "${PN}-dev"
>=20
> This seems to "correct" the name. Can anyone explain to me the =
behavior I am observing? Is there some reason the "dev" package (and =
only the "dev" package) is named differently when the ipk is created. Am =
I breaking an expected behavior by forcing it to use the more consistent =
tts-sdk-dev_${PV}_${PACKAGE_ARCH}.ipk name? I can't find any =
documentation that answers this question.
>=20
> Thanks . . .
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


