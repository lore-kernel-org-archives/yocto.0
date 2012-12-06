Return-Path: <andreas@schweigstill.de>
Received: from kitz.schweigstill.de (kitz.schweigstill.de [195.244.237.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31E7BE0144A
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 04:57:43 -0800 (PST)
Received: from mailserver (192.168.16.41) by mail-extern (Axigen)
	with (AES256-SHA encrypted) ESMTPS id 2E97A9;
	Thu, 6 Dec 2012 13:57:42 +0100
Received: from mailserver (127.0.0.1) by mailserver (Axigen)
	with ESMTPSA id 3FE211; Thu, 6 Dec 2012 13:57:41 +0100
Received: from [80.246.32.33] by schweigstill.de with HTTP;
	Thu, 6 Dec 2012 13:57:41 +0100
From: Andreas Schweigstill <andreas@schweigstill.de>
Date: Thu, 6 Dec 2012 13:57:41 +0100
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1354798661905184500@schweigstill.de>
In-Reply-To: <50BF8FD4.2070207@balister.org>
References: <1354713685799908500@schweigstill.de>
	<50BF8FD4.2070207@balister.org>
Importance: Normal
MIME-Version: 1.0
X-AxigenSpam-Level: 1
X-CTCH-RefID: str=0001.0A0C0203.50C09646.009D,ss=1,fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Thu, 06 Dec 2012 12:57:43 -0000
Content-Type: text/plain;	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello!

Am Mi, 12/05/2012 19:17, hat Philip Balister <philip@balister.org> geschrie=
ben:
> On 12/05/2012 05:21 AM, Andreas Schweigstill wrote:
> > meta-zynq/recipes-kernel-linux-zynq contains the following lines:
> > LINUX_VERSION ?=3D "3.5"
> > LINUX_VERSION_EXTENSION ?=3D "-xilinx"
> >
> > How can I force Yocto to build kernel 3.5-xilinx?
>=20
> Urg, I'll have to take a look at that.

After changing the order of BBLAYERS in build/conf/local.conf to meta, meta=
-zynq,
meta-yocto, meta-yocto-bsp and using Hob to select MACHINE=3Dzynq-zc702,
base image=3Dzc702-proto-image everything works fine. Now I get a proper to=
olchain
for Cortex A9 and a kernel named zynq-zc702 3.5.0-14.3-build1-yocto-standar=
d
which is properly running on my ZC702 board.

> Also, you'll need an updated fsbl in the BOOT.BIN file to work with the=20
> later kernels. We should probably post one somewhere, although I wish=20
> the fsbl license was a little less restrictive.

I haven't built a BOOT.BIN file with Yocto based U-Boot yet. Instead I'm us=
ing
U-Boot from Petalinux 12.9 which is configured to use the QSPI Flash to sto=
re its
environment.

Currently I boot from QSPI Flash, load kernel und DTB files via TFTP and us=
e a
root filesystem stored on a SD card. ;-)

Regards,
Andreas Schweigstill

=E2=80=8B--=20
Dipl.-Phys. Andreas Schweigstill=20
Schweigstill IT | Embedded Systems=20
Schauenburgerstra=C3=9Fe 116, D-24118 Kiel, Germany=20
Phone: (+49) 431 530354-35, Fax: (+49) 431 530354-36=20
Mobile: (+49) 171 6921973, Web: http://www.schweigstill.de/=20

