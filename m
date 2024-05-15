Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698EAC25B79
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 21:16:05 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.5914.1715807763350669454
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 14:16:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=F/od3kUb;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.50, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-7f944fd870dso3217842241.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 14:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715807762; x=1716412562; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l1GhszsaeLiKAHDdtIYCnL7g5+uH2EOeixGiFRztNsA=;
        b=F/od3kUb5FB0w8sCGvj1iFyO8I6BVOtSooKEhcsC2Z5i/U6aTQl1F+xSjjPR1d2uXO
         S1e6QtGvjWr6XJKDbza5NYOEaa0i5Kj5ZBjl193ix+3Jg+xsrWo/YeDG7wZdrP4zbIhj
         v0afGmg92C3vDey8+UDPncFuTVF+sUTkfLHC9rQa5wg+y8WP0gjKayb6lLoaplKxg3ib
         gel7X9T3/gom0JPkm10a4IbXDOg1BSDOugGWBvL6/9EuCAMYBD3q1qMfRs53BJKlXCOe
         xtcTzDK8R8SUfYRDeUbvRDX+xZxIB61b63JqY8NJWFoO/b/7FRRkIGBndC6jUvN75GV1
         vKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715807762; x=1716412562;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l1GhszsaeLiKAHDdtIYCnL7g5+uH2EOeixGiFRztNsA=;
        b=XDSAhMERDqATK3pilrmTZV+F4auJQwY84VospSXGXFLTLGlPUU7UyCo9SujE2/+idn
         UgcP1Ra6eigSx+tR0rzN9dvtJ1MkMYFlyIxh/RCXjHYQwOUj3Tt8djoQXTejgLRTcweD
         HsCGdee0TuU98gCIu85iZs/ZZdF92tWyV0UNDMqPAItOqvuatCEtFQSNMHKyKdyY3v7x
         9BT9BmrsjAio5eOoClcEzS/llkMiCvCMk+mbZ7uSaJDRy/TL2tUwCe/aSgufrvYAN/Ce
         8xyTe9iMMe4sfOwsW6Qrq7+0fs80lIcCmpfm+mlH80feYFR8OhZZ7rIIeIbFjZ2Tv4Ux
         ZeBg==
X-Gm-Message-State: AOJu0YyXmJVcXSlJyvPLEAv4VTt7iJqO8AYL/2t0Kt/uRpf4inu4+E7E
	nxGBRFF2L+j7B7DSQNXUqvTuavRwZRTFHuF7jC3Vs11e8m376TGvi+UB94dHKT2R9T7sGDfMUf0
	GJpAvuqlMMljyaZTmPeAfI14zJRhaQrMmVssGx+W81uUyMgJS
X-Google-Smtp-Source: AGHT+IETh9Kue15N71qmqpSmszMwz4VxY7Ahmyk/PHc/QAxE1d1sdeDTb3h01Fek1+EIMHaAs3hH+Nr566Vhusxx+bA=
X-Received: by 2002:a05:6122:c97:b0:4b9:e8bd:3b2 with SMTP id
 71dfb90a1353d-4df88285487mr14035308e0c.2.1715807762062; Wed, 15 May 2024
 14:16:02 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHvmSZ1xuEuSW=aUy3ig93ckw7o+Zb6Wd_4hDm=_tscnQ@mail.gmail.com>
 <CANNYZj8zTegW8tnHoKrkDDKKaQPmvY36FVQpGxzsbvjCJisKeQ@mail.gmail.com> <17CF3B3BCDD18A8E.29130@lists.yoctoproject.org>
In-Reply-To: <17CF3B3BCDD18A8E.29130@lists.yoctoproject.org>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Thu, 16 May 2024 09:15:51 +1200
Message-ID: <CANuMBWEf=2ZaHqEBhifsMMYNjwh8yR5utUfi6rNAdo6acqsnwQ@mail.gmail.com>
Subject: Re: [yocto] Opkg cannot find anything to satisfy 'kernel-module-iwlmvm'
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002936ce061884a06b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 21:16:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63104

--0000000000002936ce061884a06b
Content-Type: text/plain; charset="UTF-8"

If anybody else has the problem of their kernel config being rewritten by
the yocto build process when configuring a iwlwifi chip I have the answer.
Not the reason, just the answer.

On Tue, 14 May 2024 at 14:51, Worik Stanton via lists.yoctoproject.org
<worik.stanton=tirotech.co.nz@lists.yoctoproject.org> wrote:

>
>
> On Mon, 13 May 2024 at 19:14, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> You need to look into build logs and build directory for the kernel
>> recipe to see what modules are being built and packaged.
>>
>
> Rightio.  (I found that the failure is logged in the "do_rootfs" recipe,
> but concentrating on the kernel recipe):
>
> I found a problem, straight away:  The kernel recipe includes in its
> SRC_URI a file that (looks like) it sets kernel configuration to load the
> iwlwifi modules.
> However when I build it and boot it and examine /proc/config.gz none of
> the configuration from the kernel recipe are there
>

If anybody cares, the problem with the kernel configuration being rewritten
was solved by adding "CONFIG_WLAN_VENDOR_INTEL=y" to the config.

On the face of it this makes no sense because this is the documentation
from https://www.kernelconfig.io/config_wlan_vendor_intel

---
If you have a wireless card belonging to this class, say Y.

Note that the answer to this question doesn't directly affect the
kernel: saying N will just cause the configurator to skip all the
questions about these cards. If you say Y, you will be asked for
your specific card in the following questions.
---

Now I am moving on to getting the firmware installed by Yocto.  I find if I
add the firmware by hand the wireless chip is working well, which

ATM it looks as if the opkg error I started with was a red herring.  I
still have no explanation for it.

I am disturbed that the kernel config is getting rewritten, and the answer
is a "magic incantation".   I am sure there are sensible reasons, and it is
not magic.

--0000000000002936ce061884a06b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If anybody else has the problem of their kernel confi=
g being rewritten by the yocto build process when configuring a iwlwifi chi=
p I have the answer.=C2=A0 Not the reason, just the answer.<br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 14 M=
ay 2024 at 14:51, Worik Stanton via <a href=3D"http://lists.yoctoproject.or=
g">lists.yoctoproject.org</a> &lt;worik.stanton=3D<a href=3D"mailto:tirotec=
h.co.nz@lists.yoctoproject.org">tirotech.co.nz@lists.yoctoproject.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, 13 May 2024 at 19:14, Alexander Kan=
avin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">You need to look into build logs and build directory for th=
e kernel<br>
recipe to see what modules are being built and packaged.<br></blockquote><d=
iv><br></div><div>Rightio.=C2=A0 (I found that the failure is logged in the=
 &quot;do_rootfs&quot; recipe, but concentrating on the kernel recipe):</di=
v><div><br></div><div>I found a problem, straight away:=C2=A0 The kernel re=
cipe includes in its SRC_URI a file that (looks like) it sets kernel config=
uration to load the iwlwifi modules. <br></div><div>However when I build it=
 and boot it and examine /proc/config.gz none of the configuration from the=
 kernel recipe are there</div></div></div></blockquote><div><br></div><div>=
If anybody cares, the problem with the kernel configuration being rewritten=
 was solved by adding &quot;CONFIG_WLAN_VENDOR_INTEL=3Dy&quot; to the confi=
g.</div><div><br></div><div>On the face of it this makes no sense because t=
his is the documentation from <a href=3D"https://www.kernelconfig.io/config=
_wlan_vendor_intel">https://www.kernelconfig.io/config_wlan_vendor_intel</a=
></div><div><br></div><div>---</div><div>If you have a wireless card belong=
ing to this class, say Y.
						<br>						=09
						<br>							Note that the answer to this question doesn&#39;t directly=
 affect the
						<br>							kernel: saying N will just cause the configurator to skip =
all the
						<br>							questions about these cards. If you say Y, you will be ask=
ed for
						<br>							your specific card in the following questions.
						</div><div>---</div><div><br></div><div>Now I am moving on to getting=
 the firmware installed by Yocto.=C2=A0 I find if I add the firmware by han=
d the wireless chip is working well, which <br></div><div><br></div><div>AT=
M it looks as if the opkg error I started with was a red herring.=C2=A0 I s=
till have no explanation for it.</div><div><br></div><div>I am disturbed th=
at the kernel config is getting rewritten, and the answer is a &quot;magic =
incantation&quot;.=C2=A0=C2=A0 I am sure there are sensible reasons, and it=
 is not magic.<br></div><br></div></div>

--0000000000002936ce061884a06b--

