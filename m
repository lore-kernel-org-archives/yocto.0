Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FC5DE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 23:09:39 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so9582721yhf.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 23:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=crPvpPEdZ93nIohQk/CRQ+ZPjcOET9Qb2qxwV/xR464=;
	b=KBf1RX8N/1YXsk4YYY0Lfb6XCnLUlOlLUBJqiGklmXM9FEp2dsECKbDWcVpI0gL6XD
	X86Vep7LJAHTvZPlMAHda+T5AxiIoB0HmO7kcBT1Eu/1VJ9VX9Ybpxhuxq1zdFkXR842
	VYlfdp14Hfi9svaONK2Bevip7HztWaW38A+Cbh1Lg3TaVgGZSEgAjy/qbipRMUudGarU
	2aU3MEwrThdC47mTWY9ZNs252y9QHjo08Kz0vj1hNNLiNLnZ3q2DrbK+YkpcoFBq8Fr3
	xEOwWimFgnmbcRznGQDU2WthulBuSXjgbXk9menBUO9EHDs8+4aoaeug8XYJblYZal4i
	mwqw==
Received: by 10.50.46.232 with SMTP id y8mr1357386igm.57.1343887778267;
	Wed, 01 Aug 2012 23:09:38 -0700 (PDT)
Received: from [192.168.1.67] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id ua2sm10692935igb.7.2012.08.01.23.09.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 23:09:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
Date: Wed, 1 Aug 2012 23:09:35 -0700
Message-Id: <782B7761-8D06-489C-B712-49BF9EE27A51@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1485)
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
X-List-Received-Date: Thu, 02 Aug 2012 06:09:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 1, 2012, at 7:44 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> Hi Khem,
>=20
> On Aug 2, 2012, at 2:37 AM, Khem Raj wrote:
>=20
>> On Aug 1, 2012, at 9:18 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>=20
>>> Hi,
>>>     Perhaps the reason none of my root file system binaries are not =
working or running is because there is no
>>>=20
>>> GLIBCTARGETOS ?=3D "linux-gnueabi"
>>>=20
>>> in my machine/virtex5.conf or local.conf file?=20
>>=20
>> you don't need to set it. it should be automatically computed based =
on libc and arch
>> your problem seems more like console related. Probably you don't have =
console params
>> set correctly or securetty does not know about your console device.
>=20
> You're right. After rebuilding it, with that variable set, it made no =
difference in the generated
> binaries, (e.g. generate a tool chain powerpc-poky-linux-gnueabi-gcc) =
nor did it=20
> change the situation with my having no console login or bash prompt.
>=20
> The serial port that I am using is ttyS0. There is an entry for ttyS0 =
under /dev in my ramdisk
> , and my /etc/device_table also has an entry for ttyS.=20
>=20
> I have also checked that my securetty has an entry for ttyS0.
>=20
> I have tried all possible option, e.g. try to get inittab running =
first with=20
>=20
> S:2345:respawn:/sbin/getty 9600 ttyS0
>=20
> then with
>=20
> S:2345:respawn:/bin/sh 9600 ttyS0

well. When I look into virtext configuration then I see

SERIAL_CONSOLE ?=3D "115200 ttyUL0"

I wonder if you have tried that configuration for serial console.



