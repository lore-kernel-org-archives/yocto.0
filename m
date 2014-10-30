Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42DB5E008CA; Thu, 30 Oct 2014 02:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340CEE008C6
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 02:47:13 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [46.170.72.194])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 9D3F72D6859;
	Thu, 30 Oct 2014 10:47:10 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Thu, 30 Oct 2014 10:47:09 +0100
Message-ID: <3084764.geF1bKoAFi@comp-006-thk>
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
	<CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
MIME-Version: 1.0
Cc: Chris Elledge <celledge@digitallumens.com>,
	Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Thu, 30 Oct 2014 09:47:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 10 of September 2014 13:53:14 Ilya Dmitrichenko wrote:
> Just a quick update, thought I'd let you know that I have a basic
> working layer here:
>=20
> https://github.com/errordeveloper/oe-meta-go

There's also https://github.com/digitallumens/meta-golang

Based on that I've prepped some patches not long ago that integrate go =
into=20
OE-core base on what Chris did in meta-golang. The patches are for both=
 meta--
golang and OE-core. OE-core piece enables Go GCC frontend and libgo sam=
e way=20
as Fortran or Java is handled. Also, Chris has already defined a usable=
=20
golang.bbclass that handles gccgo build for you. So far it seems to wor=
k with=20
some simple use cases on BeagleBone Black and Raspberry.

If there's interest I can update the patches to current master and post=
 them=20
to the list.

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

