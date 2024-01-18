Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C395C4707B
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 07:53:03 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web11.6517.1705564380971179367
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 23:53:01 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id D8EC93CAB5;
	Thu, 18 Jan 2024 08:52:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1oX8UV2ni0C; Thu, 18 Jan 2024 08:52:58 +0100 (CET)
Message-ID: <82bc0af4-830e-4533-953b-057618c54df5@koansoftware.com>
Date: Thu, 18 Jan 2024 08:52:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] initramfs and system logs
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
References: <uhKG.1705499030825235144.H40Y@lists.yoctoproject.org>
 <CAMKF1sp-5xrok4oopAnOBEdTM95aL4u2fVZmRiPSA3RO4wxZ1A@mail.gmail.com>
Content-Language: en-US, it
Cc: raj.khem@gmail.com
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <CAMKF1sp-5xrok4oopAnOBEdTM95aL4u2fVZmRiPSA3RO4wxZ1A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 07:53:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62185

On 17/01/24 18:49, Khem Raj wrote:
> On Wed, Jan 17, 2024 at 5:43=E2=80=AFAM jguittet.opensource via
> lists.yoctoproject.org
> <jguittet.opensource=3Dwitekio.com@lists.yoctoproject.org> wrote:
>>
>> Dear community,
>>
>> I'm currently building a professional yocto project.
>> There are 2 variants of the image I'm building: the first one is using=
 classical rootfs on SD card (dev and test purpose). The other one is bui=
lding an initramfs fitImage (production). I'm using INITRAMFS_IMAGE to in=
dicate the name of the recipe building the initramfs + INITRAMFS_IMAGE_BU=
NDLE =3D "1".
>>
>> Problem I get is that the initramfs image produces no logs (except ker=
nel logs) in the console while the dev with the rootfs on the SD card hav=
e logs printed in the console. I don't understand why and where I should =
patch to have logs. The wanted logs are logs from init.d scripts for exam=
ple (creating ssh keys, setting hwclock etc) + logs from my own applicati=
ons that are properly output on the serial console with the "classic" ima=
ge.
>=20
> check if /dev/console is created in the initramfs init script which
> runs as /sbin/init
>=20
>>
>> Thanks for any feedbacks!
>> Joel

Hi Joel,

how many console=3D arguments do you have on the kernel cmdline?
Kernel logs are shown on all of the declared consoles, but userspace=20
logs (initrd script logs, init manager logs) are shown only on last=20
console=3D specified in kernel cmdline.

Regards

--=20
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
http://KoanSoftware.com


