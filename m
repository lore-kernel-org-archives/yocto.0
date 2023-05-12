Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B22C77B7F
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 11:46:12 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.22868.1683891965069558140
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 04:46:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@googlemail.com header.s=20221208 header.b=fQ443pps;
 spf=pass (domain: googlemail.com, ip: 209.85.219.176, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-b9daef8681fso8407122276.1
        for <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 04:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1683891964; x=1686483964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b8fPEkdJj3TDHXKXIUFWKRDJF9nf1QaS97u10kdXvGs=;
        b=fQ443ppsY2wuPy+LT+AV0p9Ilf0FJNYGTH8brRW+/jG/WMkbvVBNQNFsWIcs/zm04f
         wb5DyWyP58SaFcaoNt4CseC4NEBf86XzZvehoEGZ85El71PA2DKHS4vHKbqIH3mDr0Li
         LQ7j/3tOMF8oq7XSHlDBVpuPZ0SwhWvz1o8OTIgGRBNpGEDC4rgyLa69YuEpVLKofltN
         cxfYCpgoI4+4A4jxdqWv/IdZYOBWWu3P7gExPdn0wvgeOcBO2mq9ifZwMuI4n9jkogHh
         qYP9kjBfFhA98z7Fo0/cL+d7nE9u2pzjsZIAflEMBiL1eoKrB5QEp7Jm38KK5S8WUnX9
         U9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683891964; x=1686483964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b8fPEkdJj3TDHXKXIUFWKRDJF9nf1QaS97u10kdXvGs=;
        b=Q3YS1WkldVqWM1kDGlgXboogegOfj0CagAX82RBUftMckMq75vp0/EXS2nLYhH4Jjb
         2BsrkRQNbUtwm3SvCaih1ffmokC4nnywZhUMZbwy+jwEFoaOcyT3+QouwEQ5OMIUihbS
         hOcW+M2rsUHsp8A3nJokMClFknjEGHTGuXcRuqkAeJBDINdbchbGS9dBZxB+ZwPSo3wc
         /R5H2iXts+T6P31CojJaB/Cpvuo2HC8E+WplsI/Eiv7CxZsgRRr2qn0+j+Prc1aXaY+E
         VuYy0W0+ndQOCsry9GXb0vNhzxRPw4MoNHskhXRW5ZuJun+co/9hbvJxaeu7yXYm7S5S
         L3uw==
X-Gm-Message-State: AC+VfDyYpx/glIvlqmRKClA967jyOX/BpT/CAzXa9+/WZ1UpX8L+KSpm
	16GMFBhcK5EpePJylOyfOI8I3cNDz182BoA12Zk=
X-Google-Smtp-Source: ACHHUZ7ZOXtlpyYPMLjXfQZoVjkHgTksABlpZwoXYgHZyXBT6ojNoQgVdFnElBBmN3ES33vYjqHTV2Kj+gQjkwNAG+U=
X-Received: by 2002:a0d:f346:0:b0:55d:820f:11b7 with SMTP id
 c67-20020a0df346000000b0055d820f11b7mr22386015ywf.32.1683891963946; Fri, 12
 May 2023 04:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com> <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
 <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com> <DC50ACAA-3952-40AE-B025-EE31B64BB0E9@arm.com>
In-Reply-To: <DC50ACAA-3952-40AE-B025-EE31B64BB0E9@arm.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 12 May 2023 13:45:53 +0200
Message-ID: <CA+-BmJZXKw-=WViAmXKjSGpRzrpE7XBzNE4Vm0ZzbY-sJ55BcQ@mail.gmail.com>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
To: Ross Burton <Ross.Burton@arm.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000059eba805fb7da637"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 11:46:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60003

--00000000000059eba805fb7da637
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After testing on the target, static busybox cannot be started, it looks
like Cortex M7 (MMU less) cannot run ELF Binaries and need BFLT format:

https://unix.stackexchange.com/questions/610094/kernel-cannot-execute-binar=
ies-error-8

I saw that uClibc was removed and replaced with Musl, can Musl also
generate  BFLT format binaries ?



On Fri, May 12, 2023 at 11:35=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> =
wrote:

> On 12 May 2023, at 10:24, Ayoub Zaki <ayoub.zaki@googlemail.com> wrote:
> >
> > Ross' suggestion to remove opkg-utils hard coded build dependency on
> python solved the issue
>
> I have some local patches to clean this up, so you never need to build
> opkg-utils.
>
> > but I noticed that there is a similar issue if PACKAGE_CLASSES =3D
> "package_deb" is selected.
> > wouldn't it be possible to disable in yocto completely package
> management e.g PACKAGE_CLASSES =3D "=E2=80=9D ?
>
> Images are constructed from packages, so this would be tricky.
>
> Use package_ipk and you get the leanest package manager.  If you don=E2=
=80=99t
> have package-management in IMAGE_FEATURES then you don=E2=80=99t get on-t=
arget
> tools, which saves building them at all.
>
> > Another issue I faced since my target is MMU less is that busybox
> enforce shared lib build:
> >
> >
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/bus=
ybox/busybox.inc?h=3Dkirkstone#n115
> >
> > what is the reason behind this? shouldn't yocto support mmu less target=
 ?
>
> We don=E2=80=99t have any official MMU-less supported targets.  If recipe=
s need to
> be cleaned up to support them, then please do send patches.
>
> Ross

--00000000000059eba805fb7da637
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After testing on the target, static busybox cannot be star=
ted, it looks like Cortex M7 (MMU less) cannot run ELF Binaries and need BF=
LT format:<div><br></div><div><a href=3D"https://unix.stackexchange.com/que=
stions/610094/kernel-cannot-execute-binaries-error-8">https://unix.stackexc=
hange.com/questions/610094/kernel-cannot-execute-binaries-error-8</a><br></=
div><div><br></div><div>I saw that uClibc was removed and replaced with Mus=
l, can Musl also generate=C2=A0 BFLT format binaries ?</div><div><br></div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 12, 2023 at 11:35=E2=80=AFAM Ross Burton &lt;<a=
 href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On 12 May 2023, at =
10:24, Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=
=3D"_blank">ayoub.zaki@googlemail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; Ross&#39; suggestion to remove opkg-utils hard coded build dependency =
on python solved the issue<br>
<br>
I have some local patches to clean this up, so you never need to build opkg=
-utils.<br>
<br>
&gt; but I noticed that there is a similar issue if PACKAGE_CLASSES =3D &qu=
ot;package_deb&quot; is selected.<br>
&gt; wouldn&#39;t it be possible to disable in yocto completely package man=
agement e.g PACKAGE_CLASSES =3D &quot;=E2=80=9D ?<br>
<br>
Images are constructed from packages, so this would be tricky.<br>
<br>
Use package_ipk and you get the leanest package manager.=C2=A0 If you don=
=E2=80=99t have package-management in IMAGE_FEATURES then you don=E2=80=99t=
 get on-target tools, which saves building them at all.<br>
<br>
&gt; Another issue I faced since my target is MMU less is that busybox enfo=
rce shared lib build:<br>
&gt; <br>
&gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/re=
cipes-core/busybox/busybox.inc?h=3Dkirkstone#n115" rel=3D"noreferrer" targe=
t=3D"_blank">http://cgit.openembedded.org/openembedded-core/tree/meta/recip=
es-core/busybox/busybox.inc?h=3Dkirkstone#n115</a><br>
&gt; <br>
&gt; what is the reason behind this? shouldn&#39;t yocto support mmu less t=
arget ?<br>
<br>
We don=E2=80=99t have any official MMU-less supported targets.=C2=A0 If rec=
ipes need to be cleaned up to support them, then please do send patches.<br=
>
<br>
Ross</blockquote></div>

--00000000000059eba805fb7da637--

