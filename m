Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D2EE008DC; Thu, 23 Apr 2015 16:44:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC51DE00306
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 16:44:08 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Fri, 24 Apr 2015 09:44:05 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 09:44:03 +1000
Thread-Topic: Deploy rootfs image within another rootfs image
Thread-Index: AdB+Hz6AVo90ZRu6QJ29aibNZP+8VA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F4FA51D@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21498.007
x-tm-as-result: No--30.763200-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Deploy rootfs image within another rootfs image
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
X-List-Received-Date: Thu, 23 Apr 2015 23:44:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've got two scenarios where I want to put a rootfs image within another ro=
otfs image.

One scenario is for factory programming: My target is a BeagleBone Black ty=
pe of system. I want to make a simple programmer to boot from SD card, whic=
h will partition and format the on-board eMMC and then write the bootloader=
s onto one partitions, and a rootfs image onto the other partition. So I wa=
nt to make a recipe to build the programmer image, which contains another p=
reviously-built rootfs image at say /lib/firmware/rootfs.tar.gz.=20

Another scenario is to implement firmware upgrade in-the-field. I am consid=
ering making a rootfs as a read-only SquashFS image. That image would then =
be put into a writable ext4 filesystem. An initramfs would use OverlayFS to=
 mount the writable ext4 filesystem over the SquashFS image that is loop-ba=
ck mounted.

What is necessary to make a Yocto recipe to make an image, that will build =
another image, and then copy its deployed .tar.gz image into its own rootfs=
 image?

--=20
Craig McQueen


