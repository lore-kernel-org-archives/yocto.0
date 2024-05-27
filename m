Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A9BC25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 17:47:55 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.3126.1716832067552273013
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 10:47:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U4FjgTtg;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: rybczynska@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-681919f89f2so43662a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 10:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716832067; x=1717436867; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sW26Vc3OT4/cbRj8hdlyexqUoSKUDdW6McK6ruGIe+w=;
        b=U4FjgTtggKuB6+0jSJxreZRuMQd2dboa8U8HLv3Hcrd1TVGK4az1ne2tErjAoQv8D4
         BG863uk885qTVvaWj6+IgLcXqx5DgHJMespED2aGwhW3mZxzYNJutHjAM9cpg1u2kwfh
         FMtOZaGofxS39eH5VmFsuPXUo2vQv9/oeugOEleEGNxPZnuae4+8oA2NE9WGELEY4GiR
         KmIFb67ZCV5X9bSo6SKUVy+DD5Gf/T9t75UhmaY96Wxn/w/bZ4hD2tx3TqpasbNiBCfO
         331IE0zv2rvfv/kJb21gXLUZhaO+vboEzlY1hffRBlatXJqp8VDebtRXg9HsuJQX2eSl
         29UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716832067; x=1717436867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sW26Vc3OT4/cbRj8hdlyexqUoSKUDdW6McK6ruGIe+w=;
        b=t/X20rWrN4qyxg+vo6/4Zdz9s5SuSja6CGOvmTNGuUkSOW2dSuiRv30CbvH5e09sbL
         wsR4HyBtaVWlvtBD+Vp0NbjVDe7/w2bk/jsbbpOdnA1eS+FYv6g29pxjPOsR2MNkrV5L
         3ML1KS1PneDEmLwaWgzP+EmZBdbII+n1mVazEjG3chEM/iCvXmZt/2P2RIvqL+AKLjJ+
         RYfp2e0xqulBOD0wGYqGOoODVRDESAzVC7+c8YbrJFMYFieP7iIb8Q54fbcjVEgAZrfI
         fugbCiUtq5b+axS132PNYWPeXYzaYQI52/svPD5lF5oCWEXgr6UnBJojC0dkhUZo4190
         p0dw==
X-Gm-Message-State: AOJu0YzYJy7jNUgF6GRPq0xdTB2iweC9/I8CSGFOmnFqwZnDq402le1D
	1XIaYSeKWTTUQC6OGQrol/XU7x5NDKeL0AoIa7Oi6PRocQDPNPtBYTYhkYiepG7uHcIwBMMhbzN
	GaKfD/9ceJ9S/4EKFXNH14+j2DHE=
X-Google-Smtp-Source: AGHT+IEcJTddDmHBh4Q0RPomXysf9oyKSNiy2E6l+P7tRT0cBetm1GlTshQFDRe5RbFTYXDPmHPmL2kE2VfZwd5NMts=
X-Received: by 2002:a17:90b:ec4:b0:2bd:e8ca:d302 with SMTP id
 98e67ed59e1d1-2bf5f51ad84mr9868516a91.37.1716832066876; Mon, 27 May 2024
 10:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
 <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
In-Reply-To: <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Mon, 27 May 2024 19:47:34 +0200
Message-ID: <CAApg2=Q+K-twqpgTGpddzRJjUB21a7xOjgOg=FxcDzq3pLdgqQ@mail.gmail.com>
Subject: Re: SPDX delivery
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000007c3d2d0619731d1f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 17:47:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63207

--0000000000007c3d2d0619731d1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.com> =
wrote:

> On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@gma=
il.com>
> wrote:
> >
> > Hello all,
> > As this discussion might be interesting to multiple people, I post it t=
o
> YP list and the OE architecture list.
> >
> > In the VEX work (the status will go out in a moment in a separate
> message), we're collecting SPDX and CVE files for builds to re-run the CV=
E
> checks later (potentially months later). The CVE check file is generated
> for both the image and the build as it is (including the SDK).
> >
> > On the other hand, the SPDX archive is generated for the image only, an=
d
> contains only packages from the system image itself, omitting the build
> system. This is possible for us to get all the partial SPDX files from th=
e
> build dir, but we do not expect the complete build dir to be kept for
> months.
>
> Can you clarify what you mean by "build" here? We do generate SPDX for
> the "native" recipes used during the build, and they are in the final
> SPDX generated for an image, so we do have some idea of the "build"
> tools used to generate an image.
>


Hello Joshua,
This is still unclear to me. When I build an image eg bitbake
core-image-minimal I get the spdx archive as expected:

./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs.s=
pdx.tar.zst

./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs-2=
0240522164207.spdx.tar.zst

./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-ima=
ge-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar.zst

./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-ima=
ge-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-202405221642=
07.spdx.tar.zst

However, there's no archive for the world build (not going to mention how
long it lasted). Is it on purpose?

Kind regards,
Marta

--0000000000007c3d2d0619731d1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 202=
4 at 8:09=E2=80=AFPM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com=
" target=3D"_blank" rel=3D"noreferrer">jpewhacker@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, May 15, =
2024 at 11:11=E2=80=AFAM Marta Rybczynska &lt;<a href=3D"mailto:rybczynska@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">rybczynska@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt; As this discussion might be interesting to multiple people, I post it =
to YP list and the OE architecture list.<br>
&gt;<br>
&gt; In the VEX work (the status will go out in a moment in a separate mess=
age), we&#39;re collecting SPDX and CVE files for builds to re-run the CVE =
checks later (potentially months later). The CVE check file is generated fo=
r both the image and the build as it is (including the SDK).<br>
&gt;<br>
&gt; On the other hand, the SPDX archive is generated for the image only, a=
nd contains only packages from the system image itself, omitting the build =
system. This is possible for us to get all the partial SPDX files from the =
build dir, but we do not expect the complete build dir to be kept for month=
s.<br>
<br>
Can you clarify what you mean by &quot;build&quot; here? We do generate SPD=
X for<br>
the &quot;native&quot; recipes used during the build, and they are in the f=
inal<br>
SPDX generated for an image, so we do have some idea of the &quot;build&quo=
t;<br>
tools used to generate an image.<br></blockquote><div><br></div><div><br></=
div><div>Hello Joshua,</div><div>This is still unclear to me. When I build =
an image eg bitbake core-image-minimal I get the spdx archive as expected:<=
/div><div><br></div><div><span style=3D"font-family:monospace"><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">./tmp-glibc/deploy/=
images/qemux86-64/core-image-minimal-qemux86-64.rootfs.spdx.tar.zst
</span><br>./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-=
64.rootfs-20240522164207.spdx.tar.zst
<br>./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar=
.zst
<br>./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-20240522=
164207.spdx.tar.zst<br>
<br>However, there&#39;s no archive for the world build (not going to menti=
on how long it lasted). Is it on purpose?</span></div><div dir=3D"auto"><sp=
an style=3D"font-family:monospace"><br></span></div><div dir=3D"auto"><span=
 style=3D"font-family:monospace">Kind regards,</span></div><div dir=3D"auto=
"><span style=3D"font-family:monospace">Marta</span></div><br></div></div><=
/div>

--0000000000007c3d2d0619731d1f--

