Return-Path: <prvs=0554c38a12=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02E1CE00E22; Mon, 15 Jan 2018 23:51:02 -0800 (PST)
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
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Jan 2018 23:51:00 PST
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7610E00C0E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 23:51:00 -0800 (PST)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:39070)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1ebLzE-0001zn-0o; Tue, 16 Jan 2018 07:48:48 +0000
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Tue, 16 Jan 2018 07:48:47 +0000
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e%18]) with mapi id
	15.00.0847.030; Tue, 16 Jan 2018 07:48:29 +0000
From: Alan Levy <alan.levy@plextek.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Halt problem
Thread-Index: AdOOnJE2kZrNM/jgRjKxm66IfZXxSw==
Date: Tue, 16 Jan 2018 07:48:29 +0000
Message-ID: <c6a26befa32d4285a034c49304494f61@PLEXTEK-EXCH1.plextek.lan>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.11.254]
MIME-Version: 1.0
Subject: Re: Halt problem
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
X-List-Received-Date: Tue, 16 Jan 2018 07:51:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Shutdown is supposed to terminate all processes/threads so it's probably no=
t about the watchdog daemon. It sounds more like the classic distro was dis=
abling the hardware watchdog during shutdown and your new distro doesn't do=
 that. Try comparing the kernel watchdog drivers in the two distros because=
 that's the most likely culprit.

=3D=3D=3D
ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com


-----Original Message-----

>Date: Mon, 15 Jan 2018 16:39:40 +0100
>From: Ryan Meulenkamp <Ryan.Meulenkamp@nedap.com>
>To: yocto@yoctoproject.org
>Subject: [yocto] Halt problem
>Message-ID: <f635d9dd-76fb-fc81-5dc0-fda98d50f35e@nedap.com>
>Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed
>
>Hi y'all,
>
>I ran into a problem using shutdown -h (or halt) on an openembedded-core
> (yocto) distro running on the Atmel at91sam9g45.
>
>We used to run an openembedded-classic (angstr?m) based OS with kernel ver=
sion 2.6.35.14+. Here, halting the system would cause it to shutdown withou=
t resetting, or >turning the power off, to await a manual reset.
>
>Now we are building a new distro based on openembedded-core and yocto.=20
>Halting the system now causes a watchdog intervention. I tried all differe=
nt arguments for both the shutdown and the halt command. It looks if though=
 the classic based >distro left the watchdog daemon running during a halt.
>
>What could be the cause of this problem? In what direction should I look (=
e.g. kernel config, sysvinit config, openembedded config, processor specifi=
c code etc.)?
>
>I'm not sure if this is the right mailing list to ask this question, but I=
 guess one of you could point me in the right direction.
>
>Thanks in advance and kind regards,
>
>Ryan Meulenkamp


