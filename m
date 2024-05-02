Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C626DC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 10:18:35 +0000 (UTC)
Subject: Verity hash in kernel bootscript
To: yocto@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (81.250.230.22)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 02:28:03 -0700
Message-ID: <pS1t.1714642083190660050.4DTn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jJHlzBTE66wLJXbLEY00"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 10:18:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63017

--jJHlzBTE66wLJXbLEY00
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a project where I want to implement dm-verity on my rootfs (no initr=
amfs here).

I modify image recipe to split rootfs in multiple partition (weird this is =
not supported upstream).
I generate rootfs as a squashfs with verity has table at the end.
I also obtain a verity.env file as output in ${TMPDIR}/work-shared/${MACHIN=
E}/dm-verity/

My idea is to convert verity.env into a bootscript and inject it inside fit=
image using UBOOT_ENV variable.

My issue is the overall dependency. I need my rootfs before creating my boo=
tfs (/boot) containing my fitimage.

Ideally I want to

* generate a first rootfs without uboot and fitimage (not possible as it is=
 defined using KERNEL_IMAGETYPES).
* convert verity.env into bootscript.txt and configure UBOOT_ENV
* generate fitimage and create my bootfs

I explore several ideas like multiconfig without success, multiple images (=
works but recompile several elements twice, not perfect), define new fstype=
 or image (no success for now)

Any advice or suggestion are welcomed.

Additional question: why UBOOT_ENV is linked to UBOOT as it is only generat=
ed in u-boot recipe and then injected in do_assemble_fitimage. Maybe an ind=
ependent recipe could be simpler.

--jJHlzBTE66wLJXbLEY00
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have a project where I want to implement dm-verity on m=
y rootfs (no initramfs here).<br /><br />I modify image recipe to split roo=
tfs in multiple partition (weird this is not supported upstream).<br />I ge=
nerate rootfs as a squashfs with verity has table at the end.<br />I also o=
btain a verity.env file as output in ${TMPDIR}/work-shared/${MACHINE}/dm-ve=
rity/<br /><br />My idea is to convert verity.env into a bootscript and inj=
ect it inside fitimage using UBOOT_ENV variable.<br /><br />My issue is the=
 overall dependency. I need my rootfs before creating my bootfs (/boot) con=
taining my fitimage.<br /><br />Ideally I want to <br />
<ul>
<li>generate a first rootfs without uboot and fitimage (not possible as it =
is defined using KERNEL_IMAGETYPES).</li>
<li>convert verity.env into bootscript.txt and configure UBOOT_ENV</li>
<li>generate fitimage and create my bootfs</li>
</ul>
I explore several ideas like multiconfig without success, multiple images (=
works but recompile several elements twice, not perfect), define new fstype=
 or image (no success for now)<br /><br />Any advice or suggestion are welc=
omed.<br /><br />Additional question: why UBOOT_ENV is linked to UBOOT as i=
t is only generated in u-boot recipe and then injected in do_assemble_fitim=
age. Maybe an independent recipe could be simpler.

--jJHlzBTE66wLJXbLEY00--

