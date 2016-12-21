Return-Path: <hamish.guthrie@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E70E00D5F; Wed, 21 Dec 2016 08:52:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.223.79.45 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Dec 2016 08:52:04 PST
Received: from mx2.kistler.com (mx2.kistler.com [91.223.79.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BA8E00A4D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 08:52:04 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; 
   d="scan'208";a="4534612"
Received: from kihagsepp01.int.kistler.com ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	21 Dec 2016 17:50:59 +0100
Received: from mx2.kistler.com (kihagciip02.int.kistler.com [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 17:50:59 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; 
   d="scan'208";a="4534611"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	21 Dec 2016 17:50:58 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%14]) with mapi
	id 14.03.0266.001; Wed, 21 Dec 2016 17:50:58 +0100
From: Hamish Guthrie <Hamish.Guthrie@kistler.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: fitImage and initramfs
Thread-Index: AdJbqVNnBUCbCbYDS66rJ3mlKS7xKQ==
Date: Wed, 21 Dec 2016 16:50:58 +0000
Message-ID: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: fitImage and initramfs
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
X-List-Received-Date: Wed, 21 Dec 2016 16:52:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi List,

I am trying to create a fitImage including an initramfs. I am able to creat=
e a fitImage without an initramfs, and I am able to create a zImage with an=
 initramfs. If I try to create a fitImage with an initramfs, I receive the =
following error:

| Creating a kernel image with a bundled initramfs...
| Copying initramfs into ./usr ...
| xz decompressing image
| xz: /home/hamish/build/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto=
/4.8.12+gitAUTOINC+926c93ae07_85dc85153c-r0/linux-beaglebone-standard-build=
/usr/core-image-minimal-beaglebone.cpio.xz: Unexpected end of input

I have added the following to my machine .conf file:

KERNEL_IMAGETYPES =3D "zImage fitImage"
KERNEL_CLASSES +=3D "kernel-fitimage"

INITRAMFS_IMAGE =3D "core-image-minimal"
INITRAMFS_IMAGE_BUNDLE =3D "1"

Any ideas would be most welcome.

Hamish
-

