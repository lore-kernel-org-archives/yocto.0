Return-Path: <andreas@schweigstill.de>
Received: from kitz.schweigstill.de (kitz.schweigstill.de [195.244.237.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAA24E006C2
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 06:17:55 -0800 (PST)
Received: from mailserver (192.168.16.41) by mail-extern (Axigen)
	with (AES256-SHA encrypted) ESMTPS id 18B6E7;
	Thu, 10 Jan 2013 15:17:54 +0100
Received: from mailserver (127.0.0.1) by mailserver (Axigen)
	with ESMTPSA id 1698D7; Thu, 10 Jan 2013 15:17:54 +0100
Received: from [80.246.32.33] by schweigstill.de with HTTP;
	Thu, 10 Jan 2013 15:17:54 +0100
From: Andreas Schweigstill <andreas@schweigstill.de>
Date: Thu, 10 Jan 2013 15:17:54 +0100
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1357827474442417500@schweigstill.de>
In-Reply-To: <50EEC56A.2030006@balister.org>
References: <1357813615700846500@schweigstill.de>
	<50EEC56A.2030006@balister.org>
Importance: Normal
MIME-Version: 1.0
X-AxigenSpam-Level: 1
X-CTCH-RefID: str=0001.0A0C0204.50EECD93.0009,ss=1,fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
Subject: Re: Recipes for Xilinx ZC706 (Zynq 7045) and Avnet Zedboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jan 2013 14:17:56 -0000
Content-Type: text/plain;	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Dear Philip,

I just checked the Xilinx Linux kernel and found out that all configuration
items for Zynq development boards have been removed, so we can already use =
a
unified kernel for ZC702/706/770 and Zedboard. DTS files for all flavours a=
re
located in arch/arm/boot/dts.

We just received the first ZC706 board a few days ago.

With best regards,
Andreas Schweigstill

Am Do, 01/10/2013 14:43, hat Philip Balister <philip@balister.org> geschrie=
ben:
> On 01/10/2013 05:26 AM, Andreas Schweigstill wrote:
> > Hello,
> >=20
> > after successfully using the recipe for the ZC702 development board I w=
ould
> > like to know if anybody is working on recipes for the Xilinx ZC706 (Zyn=
q 7045)
> > and Avnet Zedboard.
>=20
>=20
> Trying ....
>=20
> I am looking at the best way to do this. My goal is to get one kernel in
> meta-zynq that is pretty good across the public boards and do the board
> selection via the device tree.
>=20
> In the meantime, you can build a rootfs for the zc702 and use a kernel
> built outside OE. Do you know if there is support for the zc706 in the
> code on the public Xilnx git repo.
>=20
> Philip
>=20
>=20
> >=20
> > Thank you very much in advance!
> >=20
> > With best regards,
> > Andreas Schweigstill
> >=20
> > =E2=80=8B--=20
> > Dipl.-Phys. Andreas Schweigstill=20
> > Schweigstill IT | Embedded Systems=20
> > Schauenburgerstra=C3=9Fe 116, D-24118 Kiel, Germany=20
> > Phone: (+49) 431 530354-35, Fax: (+49) 431 530354-36=20
> > Mobile: (+49) 171 6921973, Web: http://www.schweigstill.de/=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

