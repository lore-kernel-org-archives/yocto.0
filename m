Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B122E007DC; Fri, 17 Oct 2014 12:18:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,URIBL_BLACK
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63080E00796
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 12:17:57 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.8.237.45])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 9FCF03FCCBA;
	Fri, 17 Oct 2014 21:17:54 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Chris Tapp <opensource@keylevel.com>
Date: Fri, 17 Oct 2014 21:17:53 +0200
Message-ID: <12089180.Y153nkpj4z@comp-006-thk>
User-Agent: KMail/4.14.2 (Linux/3.16.4-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <4608AA16-9CBF-46C9-9C01-D78ED6A0C7C6@keylevel.com>
References: <4608AA16-9CBF-46C9-9C01-D78ED6A0C7C6@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to get autotools to use C++11 under 'danny'
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
X-List-Received-Date: Fri, 17 Oct 2014 19:18:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Friday 17 of October 2014 17:47:29 Chris Tapp wrote:
> Does anybody know what I need to add to my configure.ac to get C++11 =
(or
> C++0x) support added to the gcc flags at compile time?
>=20
> I've tried using:
>=20
>    AC_LANG([C++])
>    AC_PROG_CXX
>    AX_CXX_COMPILE_STDCXX_11([noext])
>=20
> But that fails at configure time.
Care for posting how exactly that fails?

Besides AX_CXX_COMPILE_STDCXX_11 is part of autoconf-archive. Adding au=
toconf-
archive to DEPENDS might help. You could also dump the macro directly i=
nto say=20
m4 dir in your source package and add EXTRA_AUTORECONF_append =3D "-I${=
S}/m4"=20
the recipe.

--=20

Maciej Borz=C4=99cki=20
Senior Software Engineer Open-RnD Sp. z o.o.=20
www.open-rnd.pl, Facebook, Twitter=20
mobile: +48 telefon, fax: +48 42 657 9079=20

Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe z=
awiera=C4=87 chronione prawem lub=20
poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wi=
adomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzec=
ich. W takim przypadku=20
uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poin=
formowanie=20
nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwro=
tnej. Dzi=C4=99kujemy.=20

This message, including any attachments hereto, may contain privileged =
or=20
confidential information and is sent solely for the attention and use o=
f the=20
intended addressee(s). If you are not an intended addressee, you may ne=
ither=20
use this message nor copy or deliver it to anyone. In such case, you sh=
ould=20
immediately destroy this message and kindly notify the sender by reply =
email.=20
Thank you. 

