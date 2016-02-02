Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EDEAE00C10; Tue,  2 Feb 2016 08:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Feb 2016 08:36:20 PST
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E45DBE00BD0
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 08:36:20 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Tue, 2 Feb 2016 08:35:11 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 2 Feb 2016 08:35:12 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Tue, 2 Feb 2016 08:35:12 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Todd Efflam <todd.efflam@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem installing ath10k firmware
Thread-Index: AQHRXVdToiMx0V4P9EmmNMKOunt3q58Y9HGX
Date: Tue, 2 Feb 2016 16:35:11 +0000
Message-ID: <1454430798277.69358@seescan.com>
References: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
In-Reply-To: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.98]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: Re: Problem installing ath10k firmware
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
X-List-Received-Date: Tue, 02 Feb 2016 16:36:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

http://linuxwireless.org/en/users/Drivers/ath10k/firmware/=0A=
=0A=
Seems like you should get the firmware here:=0A=
=0A=
https://github.com/kvalo/ath10k-firmware/tree/master/=0A=
=0A=
and copy it here:=0A=
=0A=
 $ cp firmware-2.bin_10.1.467.2-1 /lib/firmware/ath10k/QCA988X/hw2.0/firmwa=
re-2.bin=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Todd Efflam <todd.efflam@gmail.com>=0A=
Sent: Monday, February 1, 2016 5:14 PM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] Problem installing ath10k firmware=0A=
=0A=
Hello,=0A=
We're having a problem getting the ath10k firmware to run with a new=0A=
wireless card.  The card uses chip QCA9882.  We've tried installing=0A=
ath10k firmware using:=0A=
IMAGE_INSTALL_append +=3D linux-firmware-ath10k=0A=
=0A=
in combination with the following kernel configs:=0A=
CONFIG_FIRMWARE_IN_KERNEL=3Dy=0A=
CONFIG_EXTRA_FIRMWARE_DIR=3D"/lib/firmware"=0A=
=0A=
we tried adding=0A=
CONFIG_EXTRA_FIRMWARE=3D"ath10k/QCA988X/hw2.0/firmware-2.bin=0A=
ath10k/QCA988X/hw2.0/board.bin" but this failed as it wasn't able to=0A=
locate the files.=0A=
=0A=
After building, we receive the following error when booting our cpu:=0A=
ath10k: Could not fetch firmware file 'firmware-2.bin': -2=0A=
=0A=
We then realized lib/firmware.... contained firmware-4.bin and=0A=
firmware-5.bin instead of firmware-2.bin, but after copying=0A=
firmware-4.bin to 2 we still received the same error from our cpu.=0A=
=0A=
Has anyone had success getting ath10k to run with firmware-2.bin?  Any=0A=
help would be appreciated!=0A=
=0A=
Best,=0A=
Todd=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

