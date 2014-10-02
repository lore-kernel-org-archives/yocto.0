Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41FFCE00857; Thu,  2 Oct 2014 01:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7DFE0074B
	for <yocto@yoctoproject.org>; Thu,  2 Oct 2014 01:06:01 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 6754A6085E9;
	Thu,  2 Oct 2014 10:05:58 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Thu, 02 Oct 2014 10:05:48 +0200
Message-ID: <3060041.hFv4PNK1BG@comp-006-thk>
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAKC+oqXvCzZNjdYy0J9Dh=0dc5vWKyFne9-fQwk+KSVHMJh1eA@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<5429233B.4030108@galauner.de>
	<CAKC+oqXvCzZNjdYy0J9Dh=0dc5vWKyFne9-fQwk+KSVHMJh1eA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Thu, 02 Oct 2014 08:06:08 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 01 of October 2014 22:36:48 TakkTakk wrote:
> No Andreas. I could not solve the problem.
Using meta-yocto-bsp, revisions:
meta-yocto-bsp    =3D "master:8ac8eca2e3bd8c78e2b31ea974930ed0243258a3"=

meta-oe           =3D "master:28e26a9b0ad37d0c92ba42b2727215eef1edf5a2"=

MACHINE =3D "beaglebone"

Enabled layers:
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-yocto \
  ${TOPDIR}/../poky/meta-yocto-bsp \
  ${TOPDIR}/../meta-openembedded/meta-oe \

The kernel is Linux-3.14.17-yocto-standard.

Image built with wic like this:
wic create -e core-image-minimal sdimage-bootpart

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

