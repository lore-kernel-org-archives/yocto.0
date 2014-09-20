Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB5CE006DB; Sat, 20 Sep 2014 06:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E95E0056A
	for <yocto@yoctoproject.org>; Sat, 20 Sep 2014 06:00:29 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.10.73.118])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 426CB308FFAC;
	Sat, 20 Sep 2014 15:00:26 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Sat, 20 Sep 2014 15:00:25 +0200
Message-ID: <1541757.qLRXd1AgeH@comp-006-thk>
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <CAMCfZKFb9MZFK4mcwxbXn2Kub=wY7M7XdaOzfTZWb84Bv5Lziw@mail.gmail.com>
References: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
	<CAJTo0LZv+ee0DRnfGXtrtx6Q3Pa17pA3TiLmqPvcyf8rBNL16w@mail.gmail.com>
	<CAMCfZKFb9MZFK4mcwxbXn2Kub=wY7M7XdaOzfTZWb84Bv5Lziw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Poky/Yocto drivers for cellular modem
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
X-List-Received-Date: Sat, 20 Sep 2014 13:00:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Saturday 20 of September 2014 05:52:58 Diego Sueiro wrote:
> Take a look at meta-eca:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/

Do you have any clue why it's a separate layer? The recipes mostly seem=
 to=20
overlap with OE-core.

> Regards,
>=20
> --
> *dS
> Diego Sueiro
> sent from mobile.
>=20
> Em 19/09/2014 18:34, "Burton, Ross" <ross.burton@intel.com> escreveu:=

> > On 18 September 2014 17:39, Simon Andrieu <sandrieu@greenflex.com> =
wrote:
> > > Using some Linux distribution, it exists drivers that help recogn=
izing a
> > > cellular modem USB stick and to raise a corresponding network int=
erface.
> > >=20
> > > Would you know please if such a generic cellular modem driver exi=
sts in
> > > Poky/Yocto distribution please?
> >=20
> > Would connman + ofono be suitable?
> >=20
> > Ross
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

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

