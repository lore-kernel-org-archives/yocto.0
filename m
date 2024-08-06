Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34F1C52D70
	for <webhook@archiver.kernel.org>; Tue,  6 Aug 2024 17:59:12 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.13729.1722967151316457995
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Aug 2024 10:59:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TkBZg9UC;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-260f81f7fb5so496530fac.0
        for <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 10:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967150; x=1723571950; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yHoC40R5FlMuyE9B4SCZSDmcz9LdnQPuEo+NjiYqrrI=;
        b=TkBZg9UCQ0DD/D6ET8br477jgBtHnAEJDH3Wkgx1m9uxnxGlwQbH+wh4d8gSRhwnpH
         tMID8uaZ/nQlE/4X5kE5vLL1VxZ7XjY6p3lbQqFyq/IouFAbJehOfKzcQhG+PqP1waYF
         E81PKKdlJCM0Wmwpm626MmLMDQPHCBrs8tsk+gp0IscKmz+jG7wD6xTHAeBuf4hJ/ERv
         slvDI4rPodocd99tYuK/DCgbKAfEbSxt8VZL3/ddOa7aM8ssVo8InD/tKI9euTmCrBe9
         9CjXJvDLOEfMf2I6mYXKI/icezBIfOcN/VWVA++jxqc++9e3+Qzl2ykR+yOyA35zgjXv
         fuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967150; x=1723571950;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yHoC40R5FlMuyE9B4SCZSDmcz9LdnQPuEo+NjiYqrrI=;
        b=XJ1yu877OVxXUNjmzXye+7/Fnn18dTf7KOcd0jXwRkoBi/qxwn2++oUejkn5OWsDOP
         TxPQSDm3JKMQIJOKrNztWNjpG/uT2jhdBwI0Ldxz6zbrpk8coZTx3s/UVqkBBx9HIBRx
         e4q27dSt1CrJrfEC/NbDDkbGCaLD/QcuwDLxpztQhVxDSqXTXjoKlRsGn9mvOuqrek7A
         W8smJndv27h6xOcZg26+4d9qRxhsUfiLRtpWy3YxDszZUs6szLuwhcimI8mB0zyaXbnx
         E3rM2s+zyRhUp1XrDGdm8R/d+OM94QJE3YYjGbK/Csld8c+t4VljzlhIGTq+oU1n3CRQ
         JrBA==
X-Gm-Message-State: AOJu0YxkBydz7hM8oSxhWxeUsxVJHEFEwF1ETj09rEJMmlsJQvxW8N4b
	m02UQk9nagYF6CRbcI28AdCJKfh7lqtPQDflS3rwU7E2S6dwWTLkOKInduF4p0Qx8qu2Ycb+f+n
	ZrW/fnui504hSm6ZIyl25EAY8SUw+0z9l
X-Google-Smtp-Source: AGHT+IGV8m7b0PjkprpFhHkAtK/kX/S7l6pxzELzOnVubz8QLdjIo31uTf9Mb18yoULQIhZux9Wb7AWbrGs9blbZF3Q=
X-Received: by 2002:a05:6870:ed87:b0:260:3c60:4e2e with SMTP id
 586e51a60fabf-26891a807e1mr19249413fac.4.1722967150237; Tue, 06 Aug 2024
 10:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <c66f0a874abf8e3530ea66f5de7a8b7c896e15db.camel@vrag.ch>
In-Reply-To: <c66f0a874abf8e3530ea66f5de7a8b7c896e15db.camel@vrag.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Aug 2024 10:58:58 -0700
Message-ID: <CAMKF1sqLXLgVL614XmHpLXgH5=tPSh3cCYZOqvqsM7159LRLfA@mail.gmail.com>
Subject: Re: [yocto] vmlinux has relocations in .text
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Content-Type: multipart/alternative; boundary="000000000000f31f42061f078c05"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 17:59:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63665

--000000000000f31f42061f078c05
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 2:49=E2=80=AFAM David Daniel via lists.yoctoproject.=
org
<david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:

> Hi everybody
>
> I am updating my setup for a custom system and I'm getting an error now
> with the kernel. Everything works until packaging of the kernel, I now
> get the error that the kernel image contains relocations in .text:
>
> ERROR: linux-bf133-6.6.44-r0 do_package_qa: QA Issue: kernel-vmlinux: ELF
> binary /boot/vmlinux-6.6.44-rt38-vrag has relocations in .text [textrel]
> ERROR: linux-bf133-6.6.44-r0 do_package_qa: Fatal QA errors were found,
> failing task.
> ERROR: Logfile of failure stored in:
> /mnt/data/yocto/bf133/build/tmp/work/bf133-vrag-linux/linux-bf133/6.6.44/=
temp/log.do_package_qa.417292
> ERROR: Task
> (/mnt/data/yocto/bf133/meta-bf133/recipes-kernel/linux/linux-bf133_6.6.44=
.bb:do_package_qa)
> failed with exit code '1'
>
> I am using the exakt same way to build the kernel as I was before when
> using Nanbield. I couldn't find anything related to the kernel recipes
> in the migration guides for 5.0, can anyone give me a hint? What am I
> doing wrong, what am I missing?
>
> For completeness here is my kernel recipe:
>
> ----
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> LICENSE =3D "GPL-2.0-only"
> LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D801f80980d171dd642561083=
3a22dbe6"
>
> SRC_URI =3D "\
>     git://
> git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git;protocol=3Dhttps=
;tag=3Dv6.6.44;branch=3Dlinux-6.6.y;name=3Dkern
> \
>     file://0001-6.6.44-RT.patch;subdir=3Dgit;name=3Drtpatch \
>     file://defconfig;name=3Dconfig \
>     file://0002-6.6.44-MSR_DE-for-booke64.patch;name=3Drtpatch \
>     file://bf133.dts;name=3Ddts;subdir=3Dgit/arch/${ARCH}/boot/dts/fsl \
> "
>
> SRC_URI_config[sha256sum] =3D
> "9bcd116d4a1001d09e60722935b34f5c337e721c50d67b20abe6cdde4cfa16b2"
> SRC_URI_dts[sha256sum] =3D
> "abfb61598e384165e2c2e597e236d533a62465a47c18f4b44ba385210dc43a08"
> SRC_URI_rtpatch[sha256sum] =3D
> "3ac1384b690c6adae36b3ca34ae3cc05f13bcde8cde88c2408d16cfc5ac75a61"
> SRC_URI_msrpatch[sha256sum] =3D
> "e6e31c7d70e98829f90df8e8567c0b45fb8efaa37a7fc8285a4fb96602c838ba"
>
> KERNEL_DEVICETREE =3D "fsl/bf133.dtb"
>
> LINUX_VERSION =3D "6.6.44"
> PV =3D "6.6.44"
>
> LINUX_KERNEL_TYPE =3D "rt"
> LINUX_VERSION_EXTENSION =3D "-vrag"
>
>
> # Override COMPATIBLE_MACHINE to include your machine in a copy of this
> recipe
> # file. Leaving it empty here ensures an early explicit build failure.
> COMPATIBLE_MACHINE =3D "(bf133)"


What is the cpu architecture under this machine
Iirc we disable this QA error for some eg ppc64

>
>
> ----
>
> Thanks for any hint!
>
> BR
> Dave
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63663):
> https://lists.yoctoproject.org/g/yocto/message/63663
> Mute This Topic: https://lists.yoctoproject.org/mt/107748225/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f31f42061f078c05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Aug 6, 2024 at 2:49=E2=80=AFAM David Daniel via <a =
href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;david=
.daniel=3D<a href=3D"mailto:vrag.ch@lists.yoctoproject.org">vrag.ch@lists.y=
octoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi e=
verybody<br>
<br>
I am updating my setup for a custom system and I&#39;m getting an error now=
<br>
with the kernel. Everything works until packaging of the kernel, I now<br>
get the error that the kernel image contains relocations in .text:<br>
<br>
ERROR: linux-bf133-6.6.44-r0 do_package_qa: QA Issue: kernel-vmlinux: ELF b=
inary /boot/vmlinux-6.6.44-rt38-vrag has relocations in .text [textrel]<br>
ERROR: linux-bf133-6.6.44-r0 do_package_qa: Fatal QA errors were found, fai=
ling task.<br>
ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/build/tmp/work/b=
f133-vrag-linux/linux-bf133/6.6.44/temp/log.do_package_qa.417292<br>
ERROR: Task (/mnt/data/yocto/bf133/meta-bf133/recipes-kernel/linux/linux-bf=
133_6.6.44.bb:do_package_qa) failed with exit code &#39;1&#39;<br>
<br>
I am using the exakt same way to build the kernel as I was before when<br>
using Nanbield. I couldn&#39;t find anything related to the kernel recipes<=
br>
in the migration guides for 5.0, can anyone give me a hint? What am I<br>
doing wrong, what am I missing?<br>
<br>
For completeness here is my kernel recipe:<br>
<br>
----<br>
inherit kernel<br>
require recipes-kernel/linux/linux-yocto.inc<br>
<br>
LICENSE =3D &quot;GPL-2.0-only&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D=
801f80980d171dd6425610833a22dbe6&quot;<br>
<br>
SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/g=
it/stable/linux.git;protocol=3Dhttps;tag=3Dv6.6.44;branch=3Dlinux-6.6.y;nam=
e=3Dkern" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/linux=
/kernel/git/stable/linux.git;protocol=3Dhttps;tag=3Dv6.6.44;branch=3Dlinux-=
6.6.y;name=3Dkern</a> \<br>
=C2=A0 =C2=A0 file://0001-6.6.44-RT.patch;subdir=3Dgit;name=3Drtpatch \<br>
=C2=A0 =C2=A0 file://defconfig;name=3Dconfig \<br>
=C2=A0 =C2=A0 file://0002-6.6.44-MSR_DE-for-booke64.patch;name=3Drtpatch \<=
br>
=C2=A0 =C2=A0 file://bf133.dts;name=3Ddts;subdir=3Dgit/arch/${ARCH}/boot/dt=
s/fsl \<br>
&quot;<br>
<br>
SRC_URI_config[sha256sum] =3D &quot;9bcd116d4a1001d09e60722935b34f5c337e721=
c50d67b20abe6cdde4cfa16b2&quot;<br>
SRC_URI_dts[sha256sum] =3D &quot;abfb61598e384165e2c2e597e236d533a62465a47c=
18f4b44ba385210dc43a08&quot;<br>
SRC_URI_rtpatch[sha256sum] =3D &quot;3ac1384b690c6adae36b3ca34ae3cc05f13bcd=
e8cde88c2408d16cfc5ac75a61&quot;<br>
SRC_URI_msrpatch[sha256sum] =3D &quot;e6e31c7d70e98829f90df8e8567c0b45fb8ef=
aa37a7fc8285a4fb96602c838ba&quot;<br>
<br>
KERNEL_DEVICETREE =3D &quot;fsl/bf133.dtb&quot;<br>
<br>
LINUX_VERSION =3D &quot;6.6.44&quot;<br>
PV =3D &quot;6.6.44&quot;<br>
<br>
LINUX_KERNEL_TYPE =3D &quot;rt&quot;<br>
LINUX_VERSION_EXTENSION =3D &quot;-vrag&quot;<br>
<br>
<br>
# Override COMPATIBLE_MACHINE to include your machine in a copy of this rec=
ipe<br>
# file. Leaving it empty here ensures an early explicit build failure.<br>
COMPATIBLE_MACHINE =3D &quot;(bf133)&quot;</blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">What is the cpu architecture under this machine</=
div><div dir=3D"auto">Iirc we disable this QA error for some eg ppc64=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
----<br>
<br>
Thanks for any hint!<br>
<br>
BR<br>
Dave<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63663): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63663" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63663</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107748225/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107748225/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f31f42061f078c05--

