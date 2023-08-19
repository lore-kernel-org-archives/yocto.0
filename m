Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 884DCEE4993
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 17:22:12 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.13885.1692465725947757486
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Aug 2023 10:22:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=W4tkiDoF;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4ffae5bdc9aso753968e87.1
        for <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 10:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692465724; x=1693070524;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ISF7Iev8OQZ5ZBqVqtyrt93E91JOytOJR6mYqUcn1TI=;
        b=W4tkiDoFKv9kAkbJdnBCpj5X+qr7n1NgA0q5VPaUo3arsGm+7POqSiJbUG2F52KoA8
         y7WIPw6gvCfoeNHOt9vwDCyjzVV1qo8WYpKrnpFMMt3MlAs9BcPumC2xaErXb7qNpdUz
         dpGUbZ3hIaEOKnGvAZJvBMofxnWJvTlN4dTK627Ay8eMrwP9lt4jnyARME4zy1o2kd6r
         uR6fgM4pM2LyGuHELxAkloodx+rb9k8ocycZVgxRvbwahyqcUZpmxrTwoiIvA1QX708v
         93LsVuwTF0YSUu4B6zWi9wcr65/eQgoAnqzEI35GNlAa8WGmznuyzq/gXnEAlGdSUMwD
         W/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692465724; x=1693070524;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ISF7Iev8OQZ5ZBqVqtyrt93E91JOytOJR6mYqUcn1TI=;
        b=SU7l1gP8xy87LvKNOC+t2ImaOjmB8lCzUHHUovGsTCk1BTPuSgyolfqBkFSgndoWpL
         gydQKouH7/+Pwd0l7C43r5c4FmCVoHtqRL02HCafXNrmE+1zRObeFKfJwLmJZZBah9Yw
         NZeN81QmXnZOoWWNS2NalgIx2UoPzvGTxABSfqPdxMcCP6bYxrUebSqge6YEPuky3Y5e
         RqmQii9Bix7RmO5WVNOrdy+H9Ia4ush+0QTPAkpQ+eZCqc+87OH3ti21zdMm9j9aVGns
         pqjHBItyi17eemS8x36FP7QZvruplr5TznUuFEVgMfABpPmWRqB7ZzjZB0E9devoju2p
         EMbQ==
X-Gm-Message-State: AOJu0YxyIKOIdyRGO0NfcW3oHKMYX9Q4wU3/Tpyf2Aa4f5zQ8rE7yaXM
	2Hgf27MgmZxN9/jzdq+kCRa9AO8KiDE9SsCc/XM=
X-Google-Smtp-Source: AGHT+IEyXDK7QepaKNNgOf1EsceH7XdyyruL04JG7m7lwIACEBVQ7bow2wfXqCcYMGrbfpTtXDM3EABisDps7Bm7vB4=
X-Received: by 2002:a05:6512:128c:b0:4fa:f96c:745f with SMTP id
 u12-20020a056512128c00b004faf96c745fmr2070907lfs.38.1692465723746; Sat, 19
 Aug 2023 10:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <8vPi.1692448940660132639.f92P@lists.yoctoproject.org> <CAMKF1song8RTfJ-k0ht97zSDedp+eAk8tu=GYWoLM5C8Rhg25Q@mail.gmail.com>
In-Reply-To: <CAMKF1song8RTfJ-k0ht97zSDedp+eAk8tu=GYWoLM5C8Rhg25Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 19 Aug 2023 19:21:53 +0200
Message-ID: <CANNYZj8KhtafOYpJV_5O1=a91dfD3o5psZF13WHL5TRjZH6PAw@mail.gmail.com>
Subject: Re: [yocto] Qemu not working for raspberry pi
To: Khem Raj <raj.khem@gmail.com>
Cc: shrikantvaishnav@hotmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000422d8b060349e20d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 17:22:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60832

--000000000000422d8b060349e20d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s well possible that emulating the arm hardware is not needed, i=
n this
case x86_64 is vastly better, as it will run at native speeds with kvm.
When qemu translates arm to x86, the performance drops 10x or more.

The issue preventing qemu from running is something else in any case, I=E2=
=80=99d
suggest making a plain poky build in a new build directory from scratch
actually.

Alex

On Sat 19. Aug 2023 at 19.09, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Aug 19, 2023 at 5:42=E2=80=AFAM <shrikantvaishnav@hotmail.com> wr=
ote:
> >
> > Hi all,
> > i want to run my raspberry pi in qemu and for this, I have created the
> image using core-image-weston and also set machine to:MACHINE ??=3D
> "qemux86-64" .after this whenever I try to run using qemu it shows
> > Error:"runqemu - ERROR - IMAGE_LINK_NAME wasn't set to find
> corresponding .qemuboot.conf file"
>
> Its not clear what you are trying to do but I guess you have built an
> image for RPI which
> you want to run on an emulator instead of real hardware. In that case,
> you have to use
> either qemuarm or qemuarm64 depending upon your image being 64bit or
> 32bit. you might
> have to explore runqemu options where you can point it to a kernel and
> rootfs explicitly
> and use that to point it to the rpi images. This may not work even
> after that since there might be more tweaks needed for the pi image to
> run in qemu.
>
> >
> > Please help
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60831):
> https://lists.yoctoproject.org/g/yocto/message/60831
> Mute This Topic: https://lists.yoctoproject.org/mt/100837806/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000422d8b060349e20d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It=E2=80=99s well possible that emulating the arm hardwar=
e is not needed, in this case x86_64 is vastly better, as it will run at na=
tive speeds with kvm. When qemu translates arm to x86, the performance drop=
s 10x or more.</div><div dir=3D"auto"><br></div><div dir=3D"auto">The issue=
 preventing qemu from running is something else in any case, I=E2=80=99d su=
ggest making a plain poky build in a new build directory from scratch actua=
lly.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat 19.=
 Aug 2023 at 19.09, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;padding-left:1ex;border-left-color:rgb(204,204,204)">On Sat, Aug 19, 202=
3 at 5:42=E2=80=AFAM &lt;<a href=3D"mailto:shrikantvaishnav@hotmail.com" ta=
rget=3D"_blank">shrikantvaishnav@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt; i want to run my raspberry pi in qemu and for this, I have created the=
 image using core-image-weston and also set machine to:MACHINE ??=3D &quot;=
qemux86-64&quot; .after this whenever I try to run using qemu it shows<br>
&gt; Error:&quot;runqemu - ERROR - IMAGE_LINK_NAME wasn&#39;t set to find c=
orresponding .qemuboot.conf file&quot;<br>
<br>
Its not clear what you are trying to do but I guess you have built an<br>
image for RPI which<br>
you want to run on an emulator instead of real hardware. In that case,<br>
you have to use<br>
either qemuarm or qemuarm64 depending upon your image being 64bit or<br>
32bit. you might<br>
have to explore runqemu options where you can point it to a kernel and<br>
rootfs explicitly<br>
and use that to point it to the rpi images. This may not work even<br>
after that since there might be more tweaks needed for the pi image to<br>
run in qemu.<br>
<br>
&gt;<br>
&gt; Please help<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60831): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60831" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60831</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100837806/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100837806/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000422d8b060349e20d--

