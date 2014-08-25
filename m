Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF06AE006B5; Mon, 25 Aug 2014 06:30:12 -0700 (PDT)
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
	*      [74.125.82.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1900FE004DD
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 06:29:59 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id u57so13132827wes.24
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 06:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=mxfT1Xe+pGDNwhrJA+O+fe8WVN34c8y9uLRwSf5B3Is=;
	b=KqEumi1h5wJZMeKVTvR1YQoJF8KdjfzT4bdlw1kUkHacj//29Q7z5Qoh8Vf4ADhrZm
	ca+AFowUepVEh9JcZeLxWny+f1Dddd4ySHEerHscsjs0fHE+PkXyEayg+SYYSy9RRcas
	dXsoKH3EyYWY6qDdg91H+a6G0qnbuoWuN04tyFjjUo+E1TFPa/LCwynAiHGbJ1lLY410
	Hrd9chqn0fzFWxX4J/zXgD52QWy/5adfS4Bie2IpHuhNPDId4Vw0WJeIZ5MhzxPU/p65
	BDnQQ8YA/Csux71s+nVU8KRs4MeZ5Aha/15AzK4WOv/n/UhgoD33ShHtpjTLepeNTaXj
	jheA==
X-Received: by 10.180.212.77 with SMTP id ni13mr15219759wic.42.1408973398317; 
	Mon, 25 Aug 2014 06:29:58 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	vm1sm51285909wjc.14.2014.08.25.06.29.57 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Aug 2014 06:29:57 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 25 Aug 2014 15:30:04 +0200
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140825133004.GS20524@jama>
References: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
	<20140821172245.GZ3660@jama>
	<85891bd4ce86459c9eec96447388fa5c@EPBYMINSA0001.epam.com>
MIME-Version: 1.0
In-Reply-To: <85891bd4ce86459c9eec96447388fa5c@EPBYMINSA0001.epam.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] update jdk and jre to version 67
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
X-List-Received-Date: Mon, 25 Aug 2014 13:30:12 -0000
X-Groupsio-MsgNum: 21241
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ed2sj0fx90rgoibw"
Content-Disposition: inline

--ed2sj0fx90rgoibw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 25, 2014 at 01:00:08PM +0000, Vladimir Redzhepov wrote:
>=20
>=20
> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
> Sent: Thursday, August 21, 2014 8:23 PM
> To: Vladimir Redzhepov
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-oracle-java][PATCH] update jdk and jre to vers=
ion 67
>=20
> On Thu, Aug 21, 2014 at 05:01:47PM +0000, Vladimir Redzhepov wrote:
> > From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Sep 17 00:00:00 2001
> > From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> > Date: Thu, 21 Aug 2014 19:43:29 +0300
> > Subject: [PATCH] update jdk and jre to version 67
> >=20
> > Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> > ---
> > recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++-=
----
> > recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++-=
----
> > recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++-=
----
> > recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++-=
----
> > recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
> > 5 files changed, 22 insertions(+), 22 deletions(-)
> >=20
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > index 978fbd5..07fa39b 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PR =3D "r1"
> > +PV_UPDATE =3D "67"
>=20
> Does it need PR update?
>=20
> I thought that PR should be updated each time we modify recipe. That's wh=
y I've updated it.

We have automated PR service for that
https://wiki.yoctoproject.org/wiki/PR_Service

so please drop PR variable instead.

> >  require oracle-jse-jdk.inc
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-=
7u25-linux-i586.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-=
7u67-linux-i586.tar.gz"
>=20
> It would be better to use PV_UPDATE variable here and maybe introduce
> another one for build number?
>=20
> Do you mean using PV_UPDATE in SRC_URI like this
> SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${ PV_UPDATE }=
-b01/jdk-7u${ PV_UPDATE }-linux-i586.tar.gz" ?
>=20
> Of course we can use additional variable for build number, for example BU=
ILD_NUM =3D "b01"
> SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u${ PV_UPDATE }=
-${BUILD_NUM}/jdk-7u${ PV_UPDATE }-linux-i586.tar.gz"
>=20

Yes, that's what I meant (without the spaces around PV_UPDATE), that way
it's easier to see what was changed in recipe when reviewing updates like t=
his.

> > -SRC_URI[md5sum] =3D "23176d0ebf9dedd21e3150b4bb0ee776"
> > -SRC_URI[sha256sum] =3D "dd89b20afa939992bb7fdc44837fa64f0a98d7ee1e5706=
fe8a2d9e2247ba6de7"
> > +SRC_URI[md5sum] =3D "715b0e8ba2a06bded75f6a92427e2701"
> > +SRC_URI[sha256sum] =3D "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e=
4348b9a01e9ebaa85c"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.b=
b b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > index 7979401..8bad119 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PR =3D "r1"
> > +PV_UPDATE =3D "67"
> >  require oracle-jse-jdk.inc
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-=
7u25-linux-x64.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-=
7u67-linux-x64.tar.gz"
> > -SRC_URI[md5sum] =3D "83ba05e260813f7a9140b76e3d37ea33"
> > -SRC_URI[sha256sum] =3D "f80dff0e19ca8d038cf7fe3aaa89538496b80950f4d10f=
f5f457988ae159b2a6"
> > +SRC_URI[md5sum] =3D "81e3e2df33e13781e5fac5756ed90e67"
> > +SRC_URI[sha256sum] =3D "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f=
4538c863049e346335"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb =
b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > index 6125025..4165d74 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PR =3D "r1"
> > +PV_UPDATE =3D "67"
> >  require oracle-jse-jre.inc
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-=
7u25-linux-i586.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-=
7u67-linux-i586.tar.gz"
> > -SRC_URI[md5sum] =3D "0e9ccefe49e937e592dbb605f2e8e7d8"
> > -SRC_URI[sha256sum] =3D "4016965536d8607743267812ab04e6d428036dda432893=
748c1df6cb77b09628"
> > +SRC_URI[md5sum] =3D "2a256eb2a91f0084e58c612636342c2b"
> > +SRC_URI[sha256sum] =3D "eadec83a54d3a9d09248a8d16b21c03da9afffc7317e77=
5fb8db962620a0781d"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.b=
b b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > index 4058d23..a1474a9 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb
> > @@ -1,9 +1,9 @@
> > -PR =3D "r0"
> > -PV_UPDATE =3D "25"
> > +PR =3D "r1"
> > +PV_UPDATE =3D "67"
> >  require oracle-jse-jre.inc
> > -SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-=
7u25-linux-x64.tar.gz"
> > +SRC_URI =3D "http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-=
7u67-linux-x64.tar.gz"
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
> > LICENSE =3D "Oracle_Binary_Code_License_Agreement"
> > LIC_FILES_CHKSUM =3D "\
> >                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;m=
d5=3D98f46ab6481d87c4d77e0e91a6dbc15f \
> > -              file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT=
;md5=3D3a11238025bf13b87f04753183ffeb90 \
> > -                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPA=
RTYLICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
> > +             file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;=
md5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \
> > +                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPA=
RTYLICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a079a878cdb \
>=20
> Please mention in commit message what was changed in it.
>=20
> It would be nice to use consistent whitespace for indentation.

I've seen your reply to Khem, but it should be in commit message.

>=20
> >                "
> >  FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> > --
> > 2.1.0
> >=20
>=20
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ed2sj0fx90rgoibw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlP7OlwACgkQN1Ujt2V2gBxIFwCdEGUAA4XHUepb+FMCKzThH8IM
w2IAnjCiOQ/ARNh776bifg0QzoQjf12t
=Kfq7
-----END PGP SIGNATURE-----

--ed2sj0fx90rgoibw--
