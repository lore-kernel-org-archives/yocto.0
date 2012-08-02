Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 078AEE01430
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 03:48:42 -0700 (PDT)
Received: by wgx1 with SMTP id 1so6011983wgx.11
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 03:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=/xt4NrBUThZ/l1MNsvE5Qc9k4bHvZIEG1epA8d054ZE=;
	b=XKOcSlOOqn3un3KR+nJPjZFstwTcy4iNlWN8Rc+zBEqUmHaf1sq4sax2EI138KJsnG
	ynqFtYa9+3DF8k+oeJXgkrVDqUv4gChgdJjAqDGCE5/cEk1ViJDI0VAKiDC9EGWZyr8d
	Ugs8MOURkjW00fr8Ef/GrZJIi+flZrI7HfFsKKjXYdl9qVP7spv1RmQX8Q1z+hGwWp7I
	mgZsnbhtufly4P8Kz9q+qMv0Pp0lpHr3EU32Wf51aYqwnlwN/1q2PZ103w1ZOrY1hIbm
	8NXHBBivee6p0jg1VqWnQZgqGVyNDIdgT56zDua4z4h3c+rab7rlSq9B5e8M8wbb8HgL
	Bnog==
Received: by 10.180.85.167 with SMTP id i7mr3697444wiz.8.1343904521719;
	Thu, 02 Aug 2012 03:48:41 -0700 (PDT)
Received: from [94.58.145.229] ([94.58.145.229])
	by mx.google.com with ESMTPS id fr4sm16346158wib.8.2012.08.02.03.48.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Aug 2012 03:48:40 -0700 (PDT)
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
	<782B7761-8D06-489C-B712-49BF9EE27A51@gmail.com>
In-Reply-To: <782B7761-8D06-489C-B712-49BF9EE27A51@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <CB5175DB-66C7-403D-BD90-89D7AFB410BB@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 2 Aug 2012 14:44:12 +0400
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Thu, 02 Aug 2012 10:48:43 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 2, 2012, at 10:09, Khem Raj <raj.khem@gmail.com> wrote:

>=20
> On Aug 1, 2012, at 7:44 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>=20
>> Hi Khem,
>>=20
>> On Aug 2, 2012, at 2:37 AM, Khem Raj wrote:
>>=20
>>> On Aug 1, 2012, at 9:18 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:=

>>>=20
>>>> Hi,
>>>>    Perhaps the reason none of my root file system binaries are not work=
ing or running is because there is no
>>>>=20
>>>> GLIBCTARGETOS ?=3D "linux-gnueabi"
>>>>=20
>>>> in my machine/virtex5.conf or local.conf file?=20
>>>=20
>>> you don't need to set it. it should be automatically computed based on l=
ibc and arch
>>> your problem seems more like console related. Probably you don't have co=
nsole params
>>> set correctly or securetty does not know about your console device.
>>=20
>> You're right. After rebuilding it, with that variable set, it made no dif=
ference in the generated
>> binaries, (e.g. generate a tool chain powerpc-poky-linux-gnueabi-gcc) nor=
 did it=20
>> change the situation with my having no console login or bash prompt.
>>=20
>> The serial port that I am using is ttyS0. There is an entry for ttyS0 und=
er /dev in my ramdisk
>> , and my /etc/device_table also has an entry for ttyS.=20
>>=20
>> I have also checked that my securetty has an entry for ttyS0.
>>=20
>> I have tried all possible option, e.g. try to get inittab running first w=
ith=20
>>=20
>> S:2345:respawn:/sbin/getty 9600 ttyS0
>>=20
>> then with
>>=20
>> S:2345:respawn:/bin/sh 9600 ttyS0
>=20
> well. When I look into virtext configuration then I see
>=20
> SERIAL_CONSOLE ?=3D "115200 ttyUL0"
>=20
> I wonder if you have tried that configuration for serial console.
>=20
>=20

I'm working with my local repo so, I have made the changes locally to ttyS0.=
 As soon as I get something working, I send it to Adrian to commit to the re=
po.

The problem I have with ttyS0 also happens with ttyUL0. I've tried with both=
.

Elvis=

