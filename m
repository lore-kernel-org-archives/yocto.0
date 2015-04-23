Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B40F4E009AE; Thu, 23 Apr 2015 00:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8118E00994
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 00:10:28 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Thu, 23 Apr 2015 17:10:23 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 Apr 2015 17:10:21 +1000
Thread-Topic: Location of U-Boot environment for BeagleBone Black
Thread-Index: AdB9kjRdUEnhi3pfQK645tRI4dUdkA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F4FA4DF@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21498.004
x-tm-as-result: No--40.210700-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Location of U-Boot environment for BeagleBone Black
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
X-List-Received-Date: Thu, 23 Apr 2015 07:10:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm building Yocto for BeagleBone using the meta-ti layer and the kernel an=
d U-Boot provided by that layer.

I'm having some trouble understanding the location where U-Boot saves its e=
nvironment for BeagleBone Black.

After doing some reading, it looks as though it might be saving environment=
 on a "special" eMMC boot partition (which is not the same as the FAT16 par=
tition 1 I created to store MLO and u-boot.img).

However, this is only when booting from the on-board eMMC I think. When boo=
ting from SD card, where is environment stored? I can do "saveenv" command =
in U-Boot, and it says it's saving it to MMC.

U-Boot# saveenv
Saving Environment to MMC...
Writing to MMC(1)... done

But then after a reboot, it says:

MMC: block number 0x100 exceeds max(0x0)
MMC: block number 0x200 exceeds max(0x0)
*** Error - No Valid Environment Area found
Using default environment

So does that mean that U-Boot can't use a saved environment when booting fr=
om SD card?

Actually, based on some simple testing, it seems that it _is_ writing to th=
e boot partition of the on-board eMMC, and loading it when it reboots from =
SD card, despite the error message. This is confusing.

What about the case of a board with no eMMC, such as BeagleBone White? Wher=
e would it save environment then?

How can I erase the saved environment when booting from eMMC, to ensure tha=
t U-Boot defaults will be used? I see that when Linux boots, there are bloc=
k devices /dev/mmcblk0boot0 and /dev/mmcblk0boot1. But it seems I can't wri=
te to them:

# dd if=3D/dev/zero of=3D/dev/mmcblk0boot1 bs=3D1k count=3D1k
dd: writing '/dev/mmcblk0boot1': Operation not permitted
1+0 records in
0+0 records out

--=20
Craig McQueen


