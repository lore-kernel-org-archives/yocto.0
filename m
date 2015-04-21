Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50289E009AD; Tue, 21 Apr 2015 06:56:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE9BE00954
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 06:56:07 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-31.us.mimecast.lan; Tue, 21 Apr 2015 09:56:05 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 21 Apr 2015 06:56:04 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 21 Apr 2015 06:56:04 -0700
Thread-Topic: [yocto] U-Boot with a different default device tree, for
	BeagleBone-similar system
Thread-Index: AdB78viqlJ5qJYybRMyc3PkOSJJQuQARyS9Q
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA587CD@MSXBEBVT12.planar.net>
References: <5500469A22567C4BAF673A6E86AFA3A402227F4FA218@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FA218@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: wYOgxFoUQRenQo10d6Kz1g-1
Subject: Re: U-Boot with a different default device tree, for BeagleBone-similar system
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
X-List-Received-Date: Tue, 21 Apr 2015 13:56:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Craig McQueen
> Sent: Monday, April 20, 2015 10:23 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] U-Boot with a different default device tree, for
> BeagleBone-similar system
>=20
> I'm working on a system based on the TI Sitara AM335x similar to the
> BeagleBone Black, but with various custom hardware. I've got a custom
> device tree for it, and it's working well.
>=20
> In Yocto, I've defined a custom machine in a custom layer under
> conf/machine, derived from the BeagleBone Black machine with
> modifications. The kernel is compiling my device tree named something
> like am335x-myfantasticdevice.dtb, due to a KERNEL_DEVICETREE... line.
> However, U-Boot is still looking for the stock BeagleBone Black device
> tree named am335x-boneblack.dtb.
>=20
> How can I modify my Yocto build so that U-Boot by default will expect a
> device tree with the name am335x-myfantasticdevice.dtb? I can see
> UBOOT_MACHINE but I'm not sure what I can do with it.
>=20
> --

Hi Craig,

Your setup sounds just like mine.=20
You need to modify u-boot itself to load your fdt file. The beaglebone blac=
k u-boot init routines reads some data from a eeprom at boot up to detect t=
he board type and then configure things appropriately, including loading th=
e appropriate fdt file.

In my layer I created a .bbappend file for u-boot to add board specific con=
figuration header/source files with init routines for my board. In my case =
I just hardcoded the fdt file to load to my board file.=20

I hope this helps.=20

Matt S.=20

> Craig McQueen
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


