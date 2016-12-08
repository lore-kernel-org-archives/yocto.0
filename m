Return-Path: <xbbn@mjolner.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFBDBE00D6A; Thu,  8 Dec 2016 06:21:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 906 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Dec 2016 06:21:10 PST
Received: from mail.mjolner.dk (bifrost.fuz.mjolner.dk [87.116.45.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC15E00BFF
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 06:21:10 -0800 (PST)
Received: from drift35.mia.local (10.16.200.35) by drift35.mia.local
	(10.16.200.35) with Microsoft SMTP Server (TLS) id 15.0.1236.3;
	Thu, 8 Dec 2016 15:06:01 +0100
Received: from drift35.mia.local ([::1]) by drift35.mia.local ([::1]) with
	mapi id 15.00.1236.000; Thu, 8 Dec 2016 15:06:01 +0100
From: Bent Bisballe Nyeng <xbbn@mjolner.dk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel config incremental modification not working.
Thread-Index: AQHSUVw0fyGoDN9Fj0KJMeltOJYcLQ==
Date: Thu, 8 Dec 2016 14:06:00 +0000
Message-ID: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
Accept-Language: en-GB, da-DK, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [87.116.45.78]
x-pmwin-version: 4.0.2, Antivirus-Engine: 3.64.3, Antivirus-Data: 5.34
x-puremessage: [Scanned]
MIME-Version: 1.0
Subject: Kernel config incremental modification not working.
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
X-List-Received-Date: Thu, 08 Dec 2016 14:21:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi list=0A=
=0A=
I am working on a project based on the iMX6UL-EVK using the meta-fsl-arm=0A=
layer for the kernel.=0A=
In a local layer I have a bbappend recipe containing a patch for an=0A=
extra kernel feature (a framebuffer device) in that kernel as well as a=0A=
.cfg enabling said feature.=0A=
The bbappend recipe is located in=0A=
recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:=0A=
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"=0A=
=0A=
SRC_URI +=3D " \=0A=
        file://0001-mxc-4.1.patch \=0A=
        file://ST7789S.cfg \=0A=
"=0A=
=0A=
KERNEL_DEVICETREE =3D "imx6ul-14x14-evk.dtb"=0A=
=0A=
The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg=0A=
and looks like:=0A=
CONFIG_FB_MXS_ST7789S_QVGA=3Dy=0A=
=0A=
The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is either=0A=
ignored or overwritten by some later buyild step since the resulting=0A=
.config after kernel compilation contains:=0A=
# CONFIG_FB_MXS_ST7789S_QVGA is not set=0A=
=0A=
I have tried finding the script in the build/.../temp folder that takes=0A=
care of the .cfg file patching but have not been able to find anything=0A=
useful.=0A=
=0A=
Any hints as to where I should start looking for a solution?=0A=
=0A=
Kind regards=0A=
Bent Bisballe Nyeng=0A=
=0A=

