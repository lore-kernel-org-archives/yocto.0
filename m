Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8302AD68B2A
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 14:29:49 +0000 (UTC)
Subject: Re: [yocto] kernel headers missing head files when using SDK generated from populate_sdk
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Nov 2024 06:29:46 -0800
References: <29094.1731350335316967481@lists.yoctoproject.org>
In-Reply-To: <29094.1731350335316967481@lists.yoctoproject.org>
Message-ID: <18918.1731594586526186591@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UKFFIpeY1FLPYzxIq3xR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 14:29:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64276

--UKFFIpeY1FLPYzxIq3xR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After further investigation, it looks like this is not the issue. The issue=
s are:

1. Make looks for asm/types.h, but there is only asm-generic/types.h in inc=
lude/uapi/linux folder. This can be addressed by creating a symbolic link t=
o asm-generic in the same folder. It does address the kernel module buildin=
g error, but is it supposed to addressed this way?
2. Most header files in arch/arm/include/asm in the kernel source are not c=
opied to SDK. It is not relevant to the kernel module building so far, but =
is it is supposed to be like this?
3. Some header files that don't exist in the kernel source and supposed to =
be generated during building process, like arch/arm64/include/asm/cpucaps.h=
, are not generated in the SDK. So, h ow to control the Yocto SDK generatio=
n so that these files are generated in SDK?

Any input will be appreciated. Thanks!

Crane

--UKFFIpeY1FLPYzxIq3xR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>After further investigation, it looks like this is not the issue. The =
issues are:</div>
<div>&nbsp;</div>
<div>1. Make looks for asm/types.h, but there is only asm-generic/types.h i=
n include/uapi/linux folder. This can be addressed by creating a symbolic l=
ink to asm-generic in the same folder. It does address the kernel module bu=
ilding error, but is it supposed to addressed this way?</div>
<div>2. Most header files in arch/arm/include/asm in the kernel source are =
not copied to SDK. It is not relevant to the kernel module building so far,=
 but is it is supposed to be like this?</div>
<div>3. Some header files that don't exist in the kernel source and suppose=
d to be generated during building process, like arch/arm64/include/asm/cpuc=
aps.h, are not generated in the SDK. So, h<span style=3D"background-color: =
var(--light-mode-body-color);">ow to control the Yocto SDK generation so th=
at these files are generated in SDK?</span></div>
<div>&nbsp;</div>
<div>Any input will be appreciated. Thanks!</div>
<div>&nbsp;</div>
<div>Crane</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--UKFFIpeY1FLPYzxIq3xR--

