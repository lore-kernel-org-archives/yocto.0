Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
 by mx.groups.io with SMTP id smtpd.web10.2391.1586286680590867990
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 12:11:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ApOJKdyI;
 spf=pass (domain: gmail.com, ip: 209.85.221.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f177.google.com with SMTP id f17so1175077vkk.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2020 12:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uB3phOktsf0wMf2Gfcm1yIh4CnoE7HBRzS6maGr2PuI=;
        b=ApOJKdyIDDdfHmu1NDP/xZwBPDkWC6n9V4/jexlodgI1o7JZLb9vcpr4B/+z+QwxQs
         lGcig6IlDVeTQGApnZ87JlYb3hDnkPTku3JDHmJQo7Gh0BYFVT+nCRHYKYUhaLsFONJd
         WsRqLEapfsfdx5nsOdZNKqN0P5Ah/NuFD8T6yTBQa4U7Ad7rC/6zqVZaZ6zD0CI6kHZ6
         451hLXW5P6+VZuBQngUO4Uhpgh8iTTmbVdp67wYZG81lsVyoClStSiIK/TIHpiDCqK59
         8j2Ded/9wUUbmqiFJVaJ8SXSfzjyez/syvm0SDftggmSwV+B51NRRCZxcQBlMHB5PwWI
         B+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uB3phOktsf0wMf2Gfcm1yIh4CnoE7HBRzS6maGr2PuI=;
        b=JvtMeSU0zN8jkZUsUa4acwOmUNwMB46eBehANDMDeun0dhVuMrxXiBbQTW3NKTcogg
         mO5s7UBbhjj+oFcq4lc/u1AyxrcBl3Jp7V6Am2zwEA0gJDZvRPqWNa1BKyz/CCfkKxIF
         /sIyIAVOrjteHwJdIULrR5X6bRZ6L1KAyNpXI50LXbRNSQnn5v4IWqYC7up4mXMaCccr
         0XDfjEMBy+/3G9nWS7CAZ9f6tGjsObawPhOm3WPZ8PkLGPa+zw9ANq9l4i2O/HF+LKFl
         od6z9qHHFidq1NqGvHdJuXwodT8fzaLnYcL5HK1DGRYacWgvkclv1jvM5ZAjxiaSMf4q
         +IRA==
X-Gm-Message-State: AGi0Pubuqedp31shp4GQ6g62ZgfxfGHMJnzxyNNhHVNn7dSoFlvxJ2U0
	dy35wSvtMQrotMD7Q1SzAHKA4bKjqQZQpaMTk1Q=
X-Google-Smtp-Source: APiQypIwzUwN8gIAy8H8NpfCuS6g8+xE3q4nAmcj/iNf57tqJxdYJWTF4sTbVrszxLGt3alSYZygxj/XGCQHDjrtDkU=
X-Received: by 2002:a1f:e182:: with SMTP id y124mr2861133vkg.0.1586286679771;
 Tue, 07 Apr 2020 12:11:19 -0700 (PDT)
MIME-Version: 1.0
References: <TU4PR8401MB11515FC6348D7E24918F9BA482C30@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <TU4PR8401MB11515FC6348D7E24918F9BA482C30@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 7 Apr 2020 21:11:08 +0200
Message-ID: <CANNYZj9XrHcierPY4LS80_+eC5v4Uj5xZPCn1=EtE0cS8Xcrmg@mail.gmail.com>
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
To: Sean McKay <sean.mckay@hpe.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000f519f05a2b82635"

--0000000000000f519f05a2b82635
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Apr 2020 at 21:03, Sean McKay <sean.mckay@hpe.com> wrote:

>   If you=E2=80=99re interested, this is quite easy to reproduce =E2=80=93=
 these are my
> repro steps
>
>    - Check out a clean copy of zeus (22.0.2)
>    - Add kernel-image to core-image-minimal in whatever fashion you
>    choose (I just dumped it in the RDEPENDS for packagegroup-core-boot fo=
r
>    testing)
>    - bitbake core-image-minimal
>    - bitbake -c clean core-image-minimal linux-yocto (or just wipe your
>    whole build dir, since everything should come from sstate now)
>    - Delete the sstate object(s) for linux-yocto=E2=80=99s deploy task.
>    - bitbake core-image-minimal
>    - Compare the BuildID hashes for the kernel in the two locations using
>    file (you=E2=80=99ll need to use the kernel=E2=80=99s extract-vmlinux =
script to get it out
>    of the bzImage)
>       - file
>       tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/boo=
t/vmlinux-5.2.28-yocto-standard
>       - ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinu=
x
>       tmp/deploy/images/qemux86-64/bzImage > vmlinux-deploy && file vmlin=
ux-deploy
>
> The kernel is still re-built from the same source, so why is this causing
issues?

Alex

--0000000000000f519f05a2b82635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 7 Apr 2020 at 21:03, Sean McKay &=
lt;<a href=3D"mailto:sean.mckay@hpe.com">sean.mckay@hpe.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">=C2=A0
If you=E2=80=99re interested, this is quite easy to reproduce =E2=80=93 the=
se are my repro steps<div lang=3D"EN-US"><div class=3D"gmail-m_111215118926=
8673983WordSection1">
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-l=
eft:0in">Check out a clean copy of zeus (22.0.2)<u></u><u></u></li><li clas=
s=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-left:0in"=
>Add kernel-image to core-image-minimal in whatever fashion you choose (I j=
ust dumped it in the RDEPENDS for packagegroup-core-boot for testing)<u></u=
><u></u></li><li class=3D"gmail-m_1112151189268673983MsoListParagraph" styl=
e=3D"margin-left:0in">bitbake core-image-minimal<u></u><u></u></li><li clas=
s=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-left:0in"=
>bitbake -c clean core-image-minimal linux-yocto (or just wipe your whole b=
uild dir, since everything should come from sstate now)<u></u><u></u></li><=
li class=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-le=
ft:0in">Delete the sstate object(s) for linux-yocto=E2=80=99s deploy task.<=
u></u><u></u></li><li class=3D"gmail-m_1112151189268673983MsoListParagraph"=
 style=3D"margin-left:0in">bitbake core-image-minimal<u></u><u></u></li><li=
 class=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-left=
:0in">Compare the BuildID hashes for the kernel in the two locations using =
file (you=E2=80=99ll need to use the kernel=E2=80=99s extract-vmlinux scrip=
t to get it out of the bzImage)<u></u><u></u></li><ul style=3D"margin-top:0=
in" type=3D"circle">
<li class=3D"gmail-m_1112151189268673983MsoListParagraph" style=3D"margin-l=
eft:0in">file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/root=
fs/boot/vmlinux-5.2.28-yocto-standard<u></u><u></u></li><li class=3D"gmail-=
m_1112151189268673983MsoListParagraph" style=3D"margin-left:0in">./tmp/work=
-shared/qemux86-64/kernel-source/scripts/extract-vmlinux tmp/deploy/images/=
qemux86-64/bzImage &gt; vmlinux-deploy &amp;&amp; file vmlinux-deploy<u></u=
><u></u></li></ul>
</ul>
</div></div></blockquote><div>The kernel is still re-built from the same so=
urce, so why is this causing issues?</div><div><br></div><div>Alex<br></div=
></div></div>

--0000000000000f519f05a2b82635--
