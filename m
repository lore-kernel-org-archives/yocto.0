Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51266E01404
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 19:44:20 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so2003090ggc.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 19:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=yo8SZc5fKTBIXWK2o9e7eEdrc2qxBungV+ncRxDTsAg=;
	b=cQStHex+VGoHHP6dO4aWWM/F7Zqze49yjwhL06Sn5JSNc7Xdd8IoHFIBw3pZnl+dBK
	jTrjwrAgugG61dJ3SQYlnRDTS4ERlwmIqAGPBIUhJrMW8EeGjDsrXVvfZS/eY3nzBf+X
	fre2YEkiv56aT33swhM5gatgezrKlrHRBw8iyAHtRSMZ39uPGatTfoV3Hr+AtqpqeFny
	38XvSN+bh8OEWXMd3JeqXNy5thhh17FKOSIB9uuFWePgJfA9hWCrjKwkgZXrblOf1hiS
	d+Ko55DcOmGNnIeE4RESdOndRH62DiWg2ezNxuyFxFynmWWQEhooyChzSA6v1Mmnr29b
	F8tw==
Received: by 10.50.41.201 with SMTP id h9mr550759igl.37.1343875458965;
	Wed, 01 Aug 2012 19:44:18 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pp4sm9503695igb.5.2012.08.01.19.44.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 19:44:18 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
Date: Thu, 2 Aug 2012 06:44:13 +0400
Message-Id: <7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Thu, 02 Aug 2012 02:44:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Aug 2, 2012, at 2:37 AM, Khem Raj wrote:

> On Aug 1, 2012, at 9:18 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>=20
>> Hi,
>>      Perhaps the reason none of my root file system binaries are not =
working or running is because there is no
>>=20
>> GLIBCTARGETOS ?=3D "linux-gnueabi"
>>=20
>> in my machine/virtex5.conf or local.conf file?=20
>=20
> you don't need to set it. it should be automatically computed based on =
libc and arch
> your problem seems more like console related. Probably you don't have =
console params
> set correctly or securetty does not know about your console device.

You're right. After rebuilding it, with that variable set, it made no =
difference in the generated
binaries, (e.g. generate a tool chain powerpc-poky-linux-gnueabi-gcc) =
nor did it=20
change the situation with my having no console login or bash prompt.

The serial port that I am using is ttyS0. There is an entry for ttyS0 =
under /dev in my ramdisk
, and my /etc/device_table also has an entry for ttyS.=20

I have also checked that my securetty has an entry for ttyS0.

I have tried all possible option, e.g. try to get inittab running first =
with=20

S:2345:respawn:/sbin/getty 9600 ttyS0

then with

S:2345:respawn:/bin/sh 9600 ttyS0

and then after that didn't work, tried kernel bootargs with init=3D/bin/sh=
 or init=3D/sbin/getty

I have even enabled verbose kernel driver debug messages and it appears =
to be correctly registering the driver, and doing everything correct at =
the kernel level, but the moment it hits init, it doesn't display =
anything on the console. This appear to work fine, displaying output on =
the ttyS0 console, as specified in the device tree upto the point just =
before it attempts to run init. As soon as init runs, I get no output on =
the console, in terms of a login prompt or a bash prompt.

You can see detailed kernel bootlogs output from gdb here:

=
http://forums.xilinx.com/t5/Embedded-Linux/PowerPC-kernel-fails-to-boot-wi=
th-linux-3-3-0-using-xps/td-p/251194/page/2

Best regards,

Elvis Dowson


