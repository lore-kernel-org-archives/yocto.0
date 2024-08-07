Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FA7FC3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 06:32:07 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web11.27612.1723012317129621907
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Aug 2024 23:31:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bkhQf6kS;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-260f033fda3so835057fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 23:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723012316; x=1723617116; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4OF5DChjlA5TvzlZQli+1cDA3F04ewrKHgG1WPu9T+U=;
        b=bkhQf6kShyWW5JpcuPOPAdsYe6Q9gaIKcCK83i9iG0Fl8f3W6vwCI+ZMUAbOh8Rvv7
         pLIBS6g6FWV86+UaurIHRw5p40ZRoq4WAfw8cDgwjMijl0pXaB6y0bbpvq5o74VZ1JmY
         T8cAiqHtP2BX5l/cJXdHh8FQ0o4gYSuMAhG7JIk91B3AmxQJmQV/o8XC5YkUNeqv147v
         Ye4IFlBBcYdm5AEEsTQkYfcevILCrOAlJcdNerg/9qMzGRDxrgrvSkeFS4k8DsqXLgwy
         d2+8Dgsvayavcj+P1UO7pSpxP1aOndEY1vASD2SVDTLQySCKZJmstX4Mjvdey6q2kPLb
         gC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723012316; x=1723617116;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4OF5DChjlA5TvzlZQli+1cDA3F04ewrKHgG1WPu9T+U=;
        b=uvj3rIAQKFfZykfbvgMCz13eAch9f+d7BJv+14b3oHNe7BcY3pFNzQ05uQ+rx924Ps
         afvdSVnB7rs+dKNKPESTBlTb9ynUOXKFYzXL9LKFeEV3crpFcoSNQfkMQEezLXQbzH9t
         Yk+YRaOpbOEMyiz2j4mwQShQ7r6nk1SvCq3ubfra2CmZ8rrAC31v24SDM69z3U23DTu+
         S1Do+wiShyOkWqRLIZ9SA2Ut55OkblgnUODleBUVioAH8Bmyc2WjucvLy9lcKs2sSKUL
         zDRkGbVqJHEL/f8TN6IH2u08P/q8f9hD6N4dEAd4td1Uh8j4F2QlKoZLx63wRWxdBKWP
         F7ew==
X-Gm-Message-State: AOJu0YzLxqZavp0OjPemRsD4wTQh9S0aud+SQQABs1I1aAAtvoZl5fYh
	pbfab3DqBEtPXZO4Vh7MuMl+QYFY0HxAvVjfc4idAliOeKp+ggOYwIeKUYeVW2KCeNA78yfC5AV
	GrpOm6imAwtHpsIIQdEGWuXVfHIg=
X-Google-Smtp-Source: AGHT+IEe4C4WjwE2mYRdNl7ISfIAaO4h2lryTKoUMWGLgrDwURjh/DG26qpxzbq/RixJBT/rekW6+KvUBMQlq9cf/ng=
X-Received: by 2002:a05:6870:65a0:b0:25d:fab0:b6f4 with SMTP id
 586e51a60fabf-26891a844ccmr19638691fac.1.1723012315923; Tue, 06 Aug 2024
 23:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <c66f0a874abf8e3530ea66f5de7a8b7c896e15db.camel@vrag.ch>
 <CAMKF1sqLXLgVL614XmHpLXgH5=tPSh3cCYZOqvqsM7159LRLfA@mail.gmail.com> <075232576774ec3c205754516f2270ef56d775a2.camel@vrag.ch>
In-Reply-To: <075232576774ec3c205754516f2270ef56d775a2.camel@vrag.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Aug 2024 23:31:44 -0700
Message-ID: <CAMKF1sqmQN-qigVK97bctxcNNt6dYrU0Os4=KfL_RogMTnNWVg@mail.gmail.com>
Subject: Re: [yocto] vmlinux has relocations in .text
To: David Daniel <david.daniel@vrag.ch>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000008cd15061f12118e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 06:32:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63668

--00000000000008cd15061f12118e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 11:14=E2=80=AFPM David Daniel <david.daniel@vrag.ch>=
 wrote:

> Thanks for your reply! It is indeed ppc64. I could work around it by
> disabling this check as you mentioned by adding
>
>     INSANE_SKIP +=3D "textrel"
>
>
> to the kernel recipe. Is there a reason, why I cannot use
> INSANE_SKIP:${PV} in the kernel recipe? If I specify ${PV} the error
> still pops up. Does this now mean that my build ignores the QA of textrel
> for *all* packages?
>


PV is not an override for this you need something like

https://github.com/yoctoproject/poky/blob/master/meta/recipes-kernel/linux/=
linux-yocto_6.6.bb#L73


> Am Dienstag, dem 06.08.2024 um 10:58 -0700 schrieb Khem Raj:
>
>
>
> On Tue, Aug 6, 2024 at 2:49=E2=80=AFAM David Daniel via lists.yoctoprojec=
t.org
> <david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
>
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
>
>
> What is the cpu architecture under this machine
> Iirc we disable this QA error for some eg ppc64
>
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
>

--00000000000008cd15061f12118e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Aug 6, 2024 at 11:14=E2=80=AFPM David Daniel &lt;<a=
 href=3D"mailto:david.daniel@vrag.ch">david.daniel@vrag.ch</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)">




<div>
<div>Thanks for your reply! It is indeed ppc64. I could work around it by d=
isabling this check as you mentioned by adding=C2=A0</div>
<div><br>
</div>
<pre style=3D"font-family:monospace">=C2=A0 =C2=A0=C2=A0<font face=3D"monos=
pace" style=3D"font-family:monospace;color:rgb(0,0,0)">INSANE_SKIP +=3D &qu=
ot;textrel&quot;</font></pre>
<div><br>
</div>
<div>to the kernel recipe. Is there a reason, why I cannot use <font face=
=3D"monospace" style=3D"font-family:monospace;color:rgb(0,0,0)">
INSANE_SKIP:${PV}</font> in the kernel recipe? If I specify <font face=3D"m=
onospace" style=3D"font-family:monospace;color:rgb(0,0,0)">
${PV}</font> the error still pops up. Does this now mean that my build igno=
res the QA of textrel for
<i>all</i>=C2=A0packages?</div></div><div>
<div></div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"=
><br></div><div dir=3D"auto">PV is not an override for this you need someth=
ing like</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div><a href=3D=
"https://github.com/yoctoproject/poky/blob/master/meta/recipes-kernel/linux=
/linux-yocto_6.6.bb#L73">https://github.com/yoctoproject/poky/blob/master/m=
eta/recipes-kernel/linux/linux-yocto_6.6.bb#L73</a></div><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,2=
04,204)"><div><div><br>
</div>
<div>Am Dienstag, dem 06.08.2024 um 10:58 -0700 schrieb Khem Raj:</div>
<blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:2px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(114,1=
59,207)">
<div><br>
</div>
<div><br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 6, 2024 at 2:49=E2=80=AFA=
M David Daniel via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;david.daniel=3D<a href=3D"mailto:vrag.ch@lists.yoctoproject=
.org" target=3D"_blank">vrag.ch@lists.yoctoproject.org</a>&gt; wrote:<br>
</div>
<blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:2px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(114,1=
59,207)">
<div>Hi everybody<br>
</div>
<div><br>
I am updating my setup for a custom system and I&#39;m getting an error now=
<br>
with the kernel. Everything works until packaging of the kernel, I now<br>
get the error that the kernel image contains relocations in .text:<br>
</div>
<div><br>
ERROR: linux-bf133-6.6.44-r0 do_package_qa: QA Issue: kernel-vmlinux: ELF b=
inary /boot/vmlinux-6.6.44-rt38-vrag has relocations in .text [textrel]<br>
ERROR: linux-bf133-6.6.44-r0 do_package_qa: Fatal QA errors were found, fai=
ling task.<br>
ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/build/tmp/work/b=
f133-vrag-linux/linux-bf133/6.6.44/temp/log.do_package_qa.417292<br>
ERROR: Task (/mnt/data/yocto/bf133/meta-bf133/recipes-kernel/linux/linux-bf=
133_6.6.44.bb:do_package_qa) failed with exit code &#39;1&#39;<br>
</div>
<div><br>
I am using the exakt same way to build the kernel as I was before when<br>
using Nanbield. I couldn&#39;t find anything related to the kernel recipes<=
br>
in the migration guides for 5.0, can anyone give me a hint? What am I<br>
doing wrong, what am I missing?<br>
</div>
<div><br>
For completeness here is my kernel recipe:<br>
</div>
<div><br>
----<br>
inherit kernel<br>
require recipes-kernel/linux/linux-yocto.inc<br>
</div>
<div><br>
LICENSE =3D &quot;GPL-2.0-only&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=3D=
801f80980d171dd6425610833a22dbe6&quot;<br>
</div>
<div><br>
SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/g=
it/stable/linux.git;protocol=3Dhttps;tag=3Dv6.6.44;branch=3Dlinux-6.6.y;nam=
e=3Dkern" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/linux=
/kernel/git/stable/linux.git;protocol=3Dhttps;tag=3Dv6.6.44;branch=3Dlinux-=
6.6.y;name=3Dkern</a>
 \<br>
=C2=A0 =C2=A0 file://0001-6.6.44-RT.patch;subdir=3Dgit;name=3Drtpatch \<br>
=C2=A0 =C2=A0 file://defconfig;name=3Dconfig \<br>
=C2=A0 =C2=A0 file://0002-6.6.44-MSR_DE-for-booke64.patch;name=3Drtpatch \<=
br>
=C2=A0 =C2=A0 file://bf133.dts;name=3Ddts;subdir=3Dgit/arch/${ARCH}/boot/dt=
s/fsl \<br>
&quot;<br>
</div>
<div><br>
SRC_URI_config[sha256sum] =3D &quot;9bcd116d4a1001d09e60722935b34f5c337e721=
c50d67b20abe6cdde4cfa16b2&quot;<br>
SRC_URI_dts[sha256sum] =3D &quot;abfb61598e384165e2c2e597e236d533a62465a47c=
18f4b44ba385210dc43a08&quot;<br>
SRC_URI_rtpatch[sha256sum] =3D &quot;3ac1384b690c6adae36b3ca34ae3cc05f13bcd=
e8cde88c2408d16cfc5ac75a61&quot;<br>
SRC_URI_msrpatch[sha256sum] =3D &quot;e6e31c7d70e98829f90df8e8567c0b45fb8ef=
aa37a7fc8285a4fb96602c838ba&quot;<br>
</div>
<div><br>
KERNEL_DEVICETREE =3D &quot;fsl/bf133.dtb&quot;<br>
</div>
<div><br>
LINUX_VERSION =3D &quot;6.6.44&quot;<br>
PV =3D &quot;6.6.44&quot;<br>
</div>
<div><br>
LINUX_KERNEL_TYPE =3D &quot;rt&quot;<br>
LINUX_VERSION_EXTENSION =3D &quot;-vrag&quot;<br>
</div>
<div><br>
</div>
<div><br>
# Override COMPATIBLE_MACHINE to include your machine in a copy of this rec=
ipe<br>
# file. Leaving it empty here ensures an early explicit build failure.<br>
COMPATIBLE_MACHINE =3D &quot;(bf133)&quot;</div>
<br>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">What is the cpu architecture under this machine</div>
<div dir=3D"auto">Iirc we disable this QA error for some eg ppc64=C2=A0</di=
v>
<blockquote dir=3D"auto" type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:2px;border-left-style:solid;padding-left:1ex;border-left-co=
lor:rgb(114,159,207)">
<div><br>
</div>
<div><br>
----<br>
</div>
<div><br>
Thanks for any hint!<br>
</div>
<div><br>
BR<br>
Dave<br>
</div>
<div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63663): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63663" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/63663</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107748225/199=
7914" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/107748225/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</div>
<div><br>
</div>
</blockquote>
</div>
</div>
</blockquote>
<div><br>
</div>
<div><span></span></div>
</div>

</blockquote></div></div>

--00000000000008cd15061f12118e--

