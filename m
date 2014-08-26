Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0CB0E007AD; Tue, 26 Aug 2014 06:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478B3E00655
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 06:42:54 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id s18so15084169lam.14
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 06:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=pK+QdrYI5QyNXoBRbe4Le8s+9e9T4UXz+EHSguY+Xng=;
	b=FFu8NmjLrZ9mSD+F0BymUXm28QQa/0IlQvil+TEPsHul/DF7Sl4FZJYhpyAfu3NK+i
	Sd5hErg211ckCtJgNWZhhWIaGWyO+Fd3EWDdnSqJwYCti9oLafaf+8BIKJ6I35zC8ZUK
	n2L3fd/w7pm3/hzErYmIS7OWGa6w/rnJtZIbidKBlZlWgQaDxWqSGB2+B146gR/8Hl5s
	ljSGNcwYw2kLcabV8KxlmvdnKhYXaY/zhBxq+MYuWRqfnZLBqt1nV0F4esrB4kTsEhO5
	4vzJsooC8zdYjdCo8n6H9A7bkYIano+H/QbSpyojEPJo/WW5lv2yhbTeRvYzvyr5lL75
	v4Lg==
X-Received: by 10.152.21.98 with SMTP id u2mr14667254lae.80.1409060573490;
	Tue, 26 Aug 2014 06:42:53 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	bw3sm5279044lbd.14.2014.08.26.06.42.51 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 06:42:52 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 26 Aug 2014 15:42:59 +0200
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140826134259.GZ20524@jama>
References: <3d37d63f09a2413593a16754d0ecbb80@EPBYMINSA0001.epam.com>
	<20140826110720.GX20524@jama>
	<78e72bd2bd244c5b98c2c2b487a9b631@EPBYMINSA0001.epam.com>
MIME-Version: 1.0
In-Reply-To: <78e72bd2bd244c5b98c2c2b487a9b631@EPBYMINSA0001.epam.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] Update jdk and jre to version 67
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
X-List-Received-Date: Tue, 26 Aug 2014 13:43:04 -0000
X-Groupsio-MsgNum: 21260
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="m1G908gh+QHqN0Gd"
Content-Disposition: inline

--m1G908gh+QHqN0Gd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 26, 2014 at 01:02:34PM +0000, Vladimir Redzhepov wrote:
>=20
>=20
> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
> Sent: Tuesday, August 26, 2014 2:07 PM
> To: Vladimir Redzhepov
> Cc: yocto@yoctoproject.org; Maxin B. John
> Subject: Re: [meta-oracle-java][PATCH] Update jdk and jre to version 67
>=20
> On Tue, Aug 26, 2014 at 10:39:43AM +0000, Vladimir Redzhepov wrote:
> > From 27a16047d97c3c49f889ccf2a89895b98eb55a39 Mon Sep 17 00:00:00 2001
> > From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> > Date: Tue, 26 Aug 2014 13:22:49 +0300
> > Subject: [PATCH] Update jdk and jre to version 67
> >=20
> > 1. Add BUILD_NUMBER variable.
> > 2. Change SRC_URI for all recipes.
> > 3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
> > 4. Update checksums for license files.
> >=20
> > Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> > ---
> >  recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++=
-----
> >  recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++=
-----
> >  recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++=
-----
> >  recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++=
-----
> >  recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
> >  5 files changed, 22 insertions(+), 22 deletions(-)
> >=20
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > index 978fbd5..0667161 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PV_UPDATE =3D "67"
> > +BUILD_NUMBER =3D "01"
> > =20
> >  require oracle-jse-jdk.inc
> > =20
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-=
7u25-linux-i586.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE=
}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-i586.tar.gz"
> > =20
> > -SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
> > -SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706=
fe8a2d9e2247ba6de7"
> > +SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
> > +SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e=
4348b9a01e9ebaa85c"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.b=
b b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > index 7979401..f18ce55 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PV_UPDATE =3D "67"
> > +BUILD_NUMBER =3D "01"
> > =20
> >  require oracle-jse-jdk.inc
> > =20
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-=
7u25-linux-x64.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE=
}-b${BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-x64.tar.gz"
> > =20
> > -SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
> > -SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10f=
f5f457988ae159b2a6"
> > +SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
> > +SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f=
4538c863049e346335"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > index 6125025..d0a9300 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PV_UPDATE =3D "67"
> > +BUILD_NUMBER =3D "01"
> > =20
> >  require oracle-jse-jre.inc
> > =20
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-=
7u25-linux-i586.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE=
}-b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-i586.tar.gz"
> > =20
> > -SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
> > -SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda432893=
748c1df6cb77b09628"
> > +SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
> > +SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e77=
5fb8db962620a0781d"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.b=
b b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > index 4058d23..0d5f157 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PV_UPDATE =3D "67"
> > +BUILD_NUMBER =3D "01"
> > =20
> >  require oracle-jse-jre.inc
> > =20
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-=
7u25-linux-x64.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE=
}-b${BUILD_NUMBER}/jre-7u${PV_UPDATE}-linux-x64.tar.gz"
> > =20
> > -SRC_URI[md5sum] =3D "743ee0ebf73ce428c912866d84e374e0"
> > -SRC_URI[sha256sum] =3D "3c4496316fb413d5ab0590e9971676a521b9a600b3ceaa=
c311f04c18c98a98c0"
> > +SRC_URI[md5sum] =3D "9007c79167be0177fb47e5313c53d5cb"
> > +SRC_URI[sha256sum] =3D "726c37c07bb389b5b96674b7bcbc288e39fb8fbcd42369=
afa364a18e66248b1f"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devt=
ools/oracle-java/oracle-jse.inc
> > index 3a4e20d..38ceef0 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse.inc
> > +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> > @@ -2,8 +2,8 @@ LICENSE_FLAGS =3D "oracle_java"
> >  LICENSE =3D "Oracle_Binary_Code_License_Agreement"
> >  LIC_FILES_CHKSUM =3D "\
> >  	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab6=
481d87c4d77e0e91a6dbc15f \
> > -	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a1123=
8025bf13b87f04753183ffeb90 \
> > -	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADM=
E.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
> > +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5=
d47a7dcfb78f142f487afb34bb \
> > +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADM=
E.txt;md5=3Df3a388961d24b8b72d412a079a878cdb \
> >  	"
>=20
> Please describe the changes in commit message (it was requested in
> previous patch sets).
>=20
> 	I remember about it and in this patch I've added the changes:
> 	> 1. Add BUILD_NUMBER variable.
> 	> 2. Change SRC_URI for all recipes.
> 	> 3. Recipe cleanup - remove redundant PR =3D "r0" from all recipes.
> 	> 4. Update checksums for license files.

Ah I see, but me and Khem meant the changes in COPYRIGHT,
THIRDPARTYLICENSEREADME.txt, you've sent them in separate e-mail, but it
should be described in commit message.

> Also LIC_FILES_CHKSUM paths can be relative to ${S}, which is set to
> WORKDIR in the .inc files, so you should be able to just drop
> ""${WORKDIR}/" here.
>=20
> 	Yes, I agree. I've just removed "${WORKDIR}/" from LIC_FILES_CHKSUM.
>=20
> One last comment, while reading .inc file I've noticed:
> # get the java update version in the resulting package
> PR =3D. "u${PV_UPDATE}"
>=20
> Would it make sense to append it to PV instead?
>=20
> 	Maybe. Could you please show me how to implement your idea?

PV =3D. "u${PV_UPDATE}"

>=20
> Maybe easier to read with recipes renamed from _1.7.0.bb to _1.7.bb.
>=20
> 	Yes, I agree with you. I'll rename them.
>=20
> Thanks

BTW: your e-mail client doesn't distinguish your text from the text
you're replying to (mine). It's very hard to read.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--m1G908gh+QHqN0Gd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlP8juMACgkQN1Ujt2V2gByjMgCgr63ntYC8dzBDHOCKlQLQijdF
6vsAoKHp7m8gX/2j91r+3/o4fYvk3NKO
=VV+M
-----END PGP SIGNATURE-----

--m1G908gh+QHqN0Gd--
