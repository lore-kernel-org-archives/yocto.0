Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECAF1E00C3D; Wed,  3 Feb 2016 09:29:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99120E00C39
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 09:29:34 -0800 (PST)
Received: from poczta.nazwa.pl (unknown [10.252.0.23])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 8916243FA6D;
	Wed,  3 Feb 2016 18:29:32 +0100 (CET)
Date: Wed, 3 Feb 2016 18:29:32 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: shubham.kumar4@wipro.com, yocto@yoctoproject.org
Message-ID: <1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
In-Reply-To: <SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<1454510985.3990.8.camel@open-rnd.pl>
	<SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.6.2-Rev33
X-Originating-Client: com.openexchange.ox.gui.dhtml
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Feb 2016 17:29:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Dnia 3 luty 2016 o 15:55 shubham.kumar4@wipro.com napisa=C5=82(a):
>
>
> In "final_build/conf/local.conf" , EXTRA_IMAGE_FEATURES =3D "debug-tweaks=
".
>
> So, yes "debug-tweaks" is present.
>

Try running bitbake -e <yourimagename> and check the value of
IMAGE_FEATURES (and where it gets assigned).

You may also want to check if /etc/shadow in the rootfs contains proper
entry. It should look like this:

       root:*:16834:0:99999:7:::

When inspecting the output of bitbake -e, look for IMAGE_ROOTFS, this
will point to the location of the rootfs for your image.

--
Maciej Borz=C4=99cki
Senior Software Engineer at Open-RnD Sp. z o.o.
www.open-rnd.pl, Facebook, Twitter

Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe zawie=
ra=C4=87 chronione prawem
lub poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wi=
adomo=C5=9Bci i
u=C5=BCytku os=C3=B3b, do kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bl=
i wiadomo=C5=9B=C4=87 zosta=C5=82a
otrzymana przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania =
do
os=C3=B3b trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe
zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o zaistnia=C5=82ej
sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej. Dzi=C4=99kujemy.

This message, including any attachments hereto, may contain privileged
or confidential information and is sent solely for the attention and
use of the intended addressee(s). If you are not an intended
addressee, you may neither use this message nor copy or deliver it to
anyone. In such case, you should immediately destroy this message and
kindly notify the sender by reply email. Thank you.

