Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20027CEACCA
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 14:14:00 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web11.82871.1727792037097141326
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Oct 2024 07:13:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VT7FwGBC;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3e2a1049688so2762378b6e.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 07:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727792036; x=1728396836; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wVfTvrAA0WBvrOVsDhZ/GoP4dpty6uZRvqwIadArPBI=;
        b=VT7FwGBCh9DzH/iMyUn1miFMLVoHcD4rnYLwT12jUKZvwKaMfTik11TMyf+3IOplR4
         XT7ISuXqAqJG5jNpVXGA+qAZGhRs36K4NO1F7NUZ5R2sMxyIwUBxySGYmB7Is3S2I002
         ZhdnEoCLWW1/n4Btru2jzSaKbLaERbUyueGAe9cbkC15jVNgzVEMSO/+a19o0B3sDHzH
         WGf5fWIWAG+IVbv47dD2biwKPsczJr+2sp2sWccEiW1Qlw6LDrO5OsGGXnk+hthEASAk
         cigrcvwXhclyjD3Qp+o5aumDqrNKuC3QzC0A/eCCVaMlYt8SnNem2IoC/zLgEhLjjVLo
         w+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727792036; x=1728396836;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wVfTvrAA0WBvrOVsDhZ/GoP4dpty6uZRvqwIadArPBI=;
        b=L0Ff3M/MEScsLqCUGWs519WA7yxROtxY2ukZRtwJmCzPLGiIt17RM/Xly9yPo41/UH
         LLeiDAsfdw8U7N6O58EXqMJhTTqYAUy2uIyMDPvnPK+7T8xItwvEO81JHgExJj5b1eg2
         rM51b3ikMCrRkslKc63Nab5RlUnSJT70qRY7Ic1qfeyzSg8rYmElL+u5ZVHEVNInS1Wb
         DZnSHhv/70RbLta/OXMWynWrZP6ic5ca1Bo5CV3CEVZWf7oiW3G+Gj7gmpddvlrDqMGB
         2l1D7RGDrjxXbIBWu3f9/XIHpUuxdeZc09D4UxgLxF2GEw4ZS6rMMDJ9CqSmL8c018vG
         WiPg==
X-Gm-Message-State: AOJu0YwhN+M2Dx9ccxbc885uNg5WbsfYgqhz/JpCcRxq6r9Yu6eZg4ar
	aujbZpuZ123NfjViQ71Exn14d83kq7K6+VNN39w7PuStzVaAyFB/8dfX7t/zgt1REqb2CSLHeF9
	ibA4NXjmOX+IMe5vWIugkggSBrodLGbUi
X-Google-Smtp-Source: AGHT+IHObepkxUWIttzIrwrNRw0EGylpBNcjGdRR7e6i2vsdYG3MuQ1tWhou0/7VFoXsega4oJvAIfuQa+CgrHOhVRY=
X-Received: by 2002:a05:6808:2019:b0:3e0:4057:6df9 with SMTP id
 5614622812f47-3e393968b8amr11827290b6e.16.1727792035675; Tue, 01 Oct 2024
 07:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <WGyR.1727789334726206141.xHcB@lists.yoctoproject.org>
In-Reply-To: <WGyR.1727789334726206141.xHcB@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Tue, 1 Oct 2024 16:13:42 +0200
Message-ID: <CAB3asfiW=tE0dTK1+4NiduMHPY-xc8avOoU-qR2XpFJKfdBG+A@mail.gmail.com>
Subject: Re: [yocto] Preventing kernel from recompiling when bundling into initramfs
To: yocto@lists.yoctoproject.org, ersevs@gmail.com
Content-Type: multipart/alternative; boundary="00000000000088479706236aeea0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 14:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63921

--00000000000088479706236aeea0
Content-Type: text/plain; charset="UTF-8"

Hi Ernast

A few weeks ago I sent a patch series that tries to solve this problem. But
refactoring the kernel and especially the kernel-fitimage and u-boot
classes is not easy. My patches solve the problem with rebuilding, but they
are really hard to review, so they were rejected here:
https://lists.openembedded.org/g/openembedded-core/topic/107982760#msg203695
.

The next idea is to split fitImage into separate recipes, hoping that this
will simplify the situation and allow us to better utilize the
sstate-cache. So far I have not tackled this yet.
Thanks for bringing this up.

Regards,
Adrian




Am Di., 1. Okt. 2024 um 15:29 Uhr schrieb Ernast via lists.yoctoproject.org
<ersevs=gmail.com@lists.yoctoproject.org>:

> Hello,
>
>  I have been looking into improving the build time of my yocto build and
> following some of the recommendations regarding debugging long build times,
> I have traced the issue back to dynamic data in my rootfs which causes
> misses in the sstate cache. I believe the dynamic data causes the following
> rebuild chain: do_rootfs -> kernel do_compile -> do_bundle_initramfs.
>
> I understand why do_rootfs/do_bundle_initramfs must be rerun but in this
> particular case there shouldn't be a need to recompile the kernel. As far
> as I can tell, this is only happening because the final initramfs (which
> needs rebuilt) and the bzImage are part of the same sstate artifact (which
> is invalidated as a result of the dynamic data in the rootfs). I'm
> wondering if there is an opportunity to improve this and keep the kernel
> from recompiling each time only the rootfs changes.
>
> Unfortunately the dynamic data in the rootfs is a hard requirement for me
> and cannot be removed.
>
> Thanks,
>
>  Ernast
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63920):
> https://lists.yoctoproject.org/g/yocto/message/63920
> Mute This Topic: https://lists.yoctoproject.org/mt/108758712/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000088479706236aeea0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ernast</div><div><br></div>A few weeks ago I sent =
a patch series that tries to solve this problem. But refactoring the kernel=
 and especially the kernel-fitimage and u-boot classes is not easy. My patc=
hes solve the problem with rebuilding, but they are really hard to review, =
so they were rejected here: <a href=3D"https://lists.openembedded.org/g/ope=
nembedded-core/topic/107982760#msg203695">https://lists.openembedded.org/g/=
openembedded-core/topic/107982760#msg203695</a>.<br><br><div>The next idea =
is to split fitImage into separate recipes, hoping that this will simplify =
the situation and allow us to better utilize the sstate-cache. So far I hav=
e not tackled this yet.</div><div></div><div>Thanks for bringing this up.</=
div><div><br></div><div>Regards,</div><div>Adrian<br></div><div><br></div><=
div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am Di., 1. Okt. 2024 um 15:29=C2=A0Uhr schrie=
b Ernast via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.o=
rg</a> &lt;ersevs=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gma=
il.com@lists.yoctoproject.org</a>&gt;:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div>Hello,</div>
<div>=C2=A0</div>
<div>=C2=A0I have been looking into improving the build time of my yocto bu=
ild and following some of the recommendations regarding debugging long buil=
d times, I have traced the issue back to dynamic data in my rootfs which ca=
uses misses in the sstate cache. I believe the dynamic data causes the foll=
owing rebuild chain: do_rootfs -&gt; kernel do_compile -&gt; do_bundle_init=
ramfs.</div>
<div>=C2=A0</div>
<div>I understand why do_rootfs/do_bundle_initramfs must be rerun but in th=
is particular case there shouldn&#39;t be a need to recompile the kernel. A=
s far as I can tell, this is only happening because the final initramfs (wh=
ich needs rebuilt) and the bzImage are part of the same sstate artifact (wh=
ich is invalidated as a result of the dynamic data in the rootfs). I&#39;m =
wondering if there is an opportunity to improve this and keep the kernel fr=
om recompiling each time only the rootfs changes.</div>
<div>=C2=A0</div>
<div>Unfortunately the dynamic data in the rootfs is a hard requirement for=
 me and cannot be removed.=C2=A0</div>
<div>=C2=A0</div>
<div>Thanks,</div>
<div>=C2=A0</div>
<div>=C2=A0Ernast=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63920): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63920" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63920</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108758712/445=
4582" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108758712/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank">ad=
rian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000088479706236aeea0--

