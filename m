Return-Path: <283982@ust.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90981C35FFA
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 10:40:50 +0000 (UTC)
Subject: How to build a yocto image with two different python3 versions ? #python #scarthgap #sdk #toolchain #yocto
To: yocto@lists.yoctoproject.org
From: 283982@ust.com
X-Originating-Location: US (136.226.242.122)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Mar 2025 03:40:49 -0700
Message-ID: <NdU8.1742380849995763023.L2UF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qiuU3sOiMaFyOmlqmwaS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 10:40:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64979

--qiuU3sOiMaFyOmlqmwaS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am new to building images using Yocto and am currently working with the S=
TM32MPU157F, which is shipped with OpenSTLinux as the default operating sys=
tem. The default image that comes with OpenSTLinux includes Python version =
3.12.4, but for my project, I need to have Python version 3.11.5 available =
on the same image. I=E2=80=99m looking for guidance on how to modify the Yo=
cto build process to include Python 3.11.5 alongside the default Python 3.1=
2.4, ensuring that both versions coexist in the same image without conflict=
s.

--qiuU3sOiMaFyOmlqmwaS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am new to building images using Yocto and am currently working with =
the STM32MPU157F, which is shipped with OpenSTLinux as the default operatin=
g system. The default image that comes with OpenSTLinux includes Python ver=
sion 3.12.4, but for my project, I need to have Python version 3.11.5 avail=
able on the same image. I&rsquo;m looking for guidance on how to modify the=
 Yocto build process to include Python 3.11.5 alongside the default Python =
3.12.4, ensuring that both versions coexist in the same image without confl=
icts.</div>

--qiuU3sOiMaFyOmlqmwaS--

