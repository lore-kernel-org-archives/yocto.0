Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B51DE01404
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 20:50:22 -0700 (PDT)
Received: from mail134-ch1-R.bigfish.com (10.43.68.235) by
	CH1EHSOBE013.bigfish.com (10.43.70.63) with Microsoft SMTP Server id
	14.1.225.23; Thu, 2 Aug 2012 03:50:20 +0000
Received: from mail134-ch1 (localhost [127.0.0.1])	by
	mail134-ch1-R.bigfish.com (Postfix) with ESMTP id EA84BE0312;
	Thu,  2 Aug 2012 03:50:20 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail134-ch1 (localhost.localdomain [127.0.0.1]) by mail134-ch1
	(MessageSwitch) id 1343879419816184_8517;
	Thu,  2 Aug 2012 03:50:19 +0000 (UTC)
Received: from CH1EHSMHS001.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.242])	by mail134-ch1.bigfish.com (Postfix) with ESMTP id
	BBCD23C0046;	Thu,  2 Aug 2012 03:50:19 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS001.bigfish.com
	(10.43.70.1) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 2 Aug 2012 03:50:19 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Wed, 1 Aug 2012 22:50:18 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
Thread-Index: AQHNcGHuU6fE5lg7yESSthzTBt9tQQ==
Date: Thu, 2 Aug 2012 03:50:17 +0000
Message-ID: <CAEsOVNeU6pz6Pkciymxu+2-JgcEuj=zc7-D+5xCXsjpg7fRuXw@mail.gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
In-Reply-To: <7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Aug 2012 03:50:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C04B9C42471A1747A796EF654ABA8E37@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Are you running with prelinking? You might try disabling that. It's in
local.conf under IMAGE_CLASSES I believe.

-M

On Wed, Aug 1, 2012 at 9:44 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> Hi Khem,
>
> On Aug 2, 2012, at 2:37 AM, Khem Raj wrote:
>
>> On Aug 1, 2012, at 9:18 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>>
>>> Hi,
>>>      Perhaps the reason none of my root file system binaries are not wo=
rking or running is because there is no
>>>
>>> GLIBCTARGETOS ?=3D "linux-gnueabi"
>>>
>>> in my machine/virtex5.conf or local.conf file?
>>
>> you don't need to set it. it should be automatically computed based on l=
ibc and arch
>> your problem seems more like console related. Probably you don't have co=
nsole params
>> set correctly or securetty does not know about your console device.
>
> You're right. After rebuilding it, with that variable set, it made no dif=
ference in the generated
> binaries, (e.g. generate a tool chain powerpc-poky-linux-gnueabi-gcc) nor=
 did it
> change the situation with my having no console login or bash prompt.
>
> The serial port that I am using is ttyS0. There is an entry for ttyS0 und=
er /dev in my ramdisk
> , and my /etc/device_table also has an entry for ttyS.
>
> I have also checked that my securetty has an entry for ttyS0.
>
> I have tried all possible option, e.g. try to get inittab running first w=
ith
>
> S:2345:respawn:/sbin/getty 9600 ttyS0
>
> then with
>
> S:2345:respawn:/bin/sh 9600 ttyS0
>
> and then after that didn't work, tried kernel bootargs with init=3D/bin/s=
h or init=3D/sbin/getty
>
> I have even enabled verbose kernel driver debug messages and it appears t=
o be correctly registering the driver, and doing everything correct at the =
kernel level, but the moment it hits init, it doesn't display anything on t=
he console. This appear to work fine, displaying output on the ttyS0 consol=
e, as specified in the device tree upto the point just before it attempts t=
o run init. As soon as init runs, I get no output on the console, in terms =
of a login prompt or a bash prompt.
>
> You can see detailed kernel bootlogs output from gdb here:
>
> http://forums.xilinx.com/t5/Embedded-Linux/PowerPC-kernel-fails-to-boot-w=
ith-linux-3-3-0-using-xps/td-p/251194/page/2
>
> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


