Return-Path: <prvs=071693d41d=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA727E011BD; Wed, 27 Jun 2018 00:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 169 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jun 2018 00:02:00 PDT
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DC1E0086E
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 00:02:00 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:37352)
	by mailgate.plextek.co.uk with esmtps (TLSv1.2:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1fY4Pr-0006dl-2Y
	for yocto@yoctoproject.org; Wed, 27 Jun 2018 07:58:59 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 27 Jun 2018 07:58:59 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e]) by
	PLEXTEK-EXCH1.plextek.lan ([::1]) with mapi id 15.00.1263.000;
	Wed, 27 Jun 2018 07:58:59 +0100
From: Alan Levy <alan.levy@plextek.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] loading FPGA bitfile with u-boot spl on ZYBO
Thread-Index: AdQN4ZstjzN2ZfoLQaK1hA5N+0C8gQ==
Date: Wed, 27 Jun 2018 06:58:58 +0000
Message-ID: <36cf88623c814f619c16c2f5061783b6@PLEXTEK-EXCH1.plextek.lan>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.12.90]
MIME-Version: 1.0
Subject: Re: loading FPGA bitfile with u-boot spl on ZYBO
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
X-List-Received-Date: Wed, 27 Jun 2018 07:02:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is really a question for the meta-xilinx list but I'll answer it here =
anyway.=20

You need to add the following command (suitably edited) to uEnv.txt on the =
SD card:
=09
	fatload mmc 0 <memory addr> <bitfile> && fpga loadb 0 <memory addr> <bitst=
ream size>

<memory addr> is a location in RAM in which the bitstream is temporarily st=
ored (e.g. 0x100000 but it depends on what else you have in memory)
<bitfile> is the name of the bitstream file (e.g. fpga.bit)
<bitstream size> is the size of the bitstream file.

To get to the U-boot prompt just keep hitting return rapidly during the boo=
t process. If that works then you can set the countdown to (e.g.) 3 seconds=
 using the following command:

	setenv bootdelay 3
	saveenv

This assumes that your version of U-Boot has the FGPA load and boot delay f=
unctionality built in. If not you'll need to rebuild it with the necessary =
options enabled.=20


ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com


>-----Original Message-----
>Date: Tue, 26 Jun 2018 09:05:43 +0000
>From: Simon VII <simon.vii@outlook.com>
>To: Yocto discussion list <yocto@yoctoproject.org>
>Subject: [yocto] loading FPGA bitfile with u-boot spl on ZYBO
>Message-ID:
>	<DB5PR03MB1765165D1234BB2F642CDF21F2490@DB5PR03MB1765.eurprd03.prod.outlo=
ok.com>
>=09
>Content-Type: text/plain; charset=3D"utf-8"
>
>Goodmorning,
>
>
>I hope you can help me with the following matter.
>
>
>I am currently using the poky reference distribution to build a minimal wo=
rking example for the Zybo board (using the meta-xilinx layer), following >=
this<https://www.yoctoproject.org/docs/2.5/brief-yoctoprojectqs/brief-yocto=
projectqs.html> guide.
>
>
>After bitbaking the minimal example and putting everything on a partitione=
d SD card, I can start u-boot and load the kernel.
>
>
>Everything seems fine up until here. My problem now is that before loading=
 the kernel, I would like to load a bitfile (xxx.bit) and program the FPGA.=
 Unfortunatelly I >haven't managed to get this to work.
>
>
>First of all, I am not getting an countdown to interrupt u-boot which I tr=
ied to identify but was unable to. I am attaching the log from the boot pro=
cess in case it helps. I am >not sure if the u-boot spl is
>
>
>loaded (and executed).
>

<example snipped>

>
>
>I would appreciate any suggestion or help to the right direction.
>
>
>Thanks
>
>Simon


