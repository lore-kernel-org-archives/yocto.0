Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB3BE00749; Sat, 20 Sep 2014 06:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73739E005BD
	for <yocto@yoctoproject.org>; Sat, 20 Sep 2014 06:36:19 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.10.73.118])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 2BBB7609E17;
	Sat, 20 Sep 2014 15:36:18 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Simon Andrieu <sandrieu@greenflex.com>
Date: Sat, 20 Sep 2014 15:36:17 +0200
Message-ID: <7941014.zzsrkBRl7b@comp-006-thk>
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
References: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 20 Sep 2014 13:36:32 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 18 of September 2014 16:39:33 Simon Andrieu wrote:
> Hi,
>=20
> I work for a company  that develops telemetry boxes, and that uses a
> Poky/Yocto distribution running on the main board. It is planned to
> integrate a cellular module connected via USB or serial link to the m=
ain
> board.
>=20
> Using some Linux distribution, it exists drivers that help recognizin=
g a
> cellular modem USB stick and to raise a corresponding network interfa=
ce.
> Would you know please if such a generic cellular modem driver exists =
in
> Poky/Yocto distribution please? More further, It could be helpful to =
have
> some tutorial notes to integrate it please.

I'm working a similar applications. Most USB devices seem to implement =
CDC ACM=20
that works quite well with kernel drivers. Basically you end up with on=
e of=20
/dev/ttyACM devices that pppd can talk to.=20

In past, due to image size constraints, we had custom code that looked =
at=20
these devices (used libudev to correlated /dev entries with usb devices=
) and=20
started pppd, thus skipping ofono/connman and their deps. The current s=
etups=20
are mostly systemd/systemd-networkd + pppd glue. Without much trouble i=
t's=20
possible to get ~20MB ext3 rootfs image with all the stuff you need.

There were also some dongles that came up as CDC Ether, but I've only s=
een=20
this for some WiMAX modules that I'm not sure are even available on the=
 market=20
anymore.

For transport, you can find rabbitmq-c in meta-oe. I'll also be sending=
 some=20
patches for Paho MQTT libraries and mosquitto next week or so.

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

