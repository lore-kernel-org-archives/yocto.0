Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web12.4824.1576077058002677394
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 07:10:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQJP4J0f;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: dimtass@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id u17so24472790lja.4
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 07:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZk5cG4qiQxL15QKgAWpmvdygEkTyxD6A8FPc7LI0C0=;
        b=lQJP4J0fZnJ1nQWqpOr/MjShE25Pc4NZ8SPc764GIu60TNPlLyWGjDv+O1yHwuug+d
         aYT+9zEJ0x0MWaE1UWzYU5SAE5NQ9P0UiD1vohkvlIj23ydQeT0M3jCYnmQaWOmlpJhk
         2/W8/LpuaoyTXO3GevvroOHOjmJYMf8u4w2j6gGUZwtYGUn+Uhk+BcUtQio0SNvFK47o
         dHRfOXafdypxSGtbwhsSMbPvUIwPeFl6LJWgucjuzwr3ZO0fu2/Ulab0G5l6hhsCfeyb
         aArDMIt8mWsNXgiYC4BJQAcYEjjqShskTFQdcH2q+N0l3LUdMXKv/cU/cSPYzj47iC/F
         8vTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZk5cG4qiQxL15QKgAWpmvdygEkTyxD6A8FPc7LI0C0=;
        b=YXEo43HI5/MtxWZWrjSQ/t4Stly5btUk5Ydks/8hl7hv8qFTV+ItG1LCth10gr8jIf
         OqxWusIYi6PnBpsbDv6BGNtfr64ztQ5QE1aK+b7/kZkXk/eWCm13sj+pt5A6w2wQSq79
         J1AQZAu7WdSW2h+IMYkxYiV3vh5C/OCyAtSgDDocNp2SC7LU3aLdcxT9Jsi1di37g1hc
         Lr4tTgU7jyS5+ocmMstPN5ewVMCsd19EQ49C/PhuAYbV7RudY6qECtfcwcN98IilOxlQ
         9Ss7ZECNSN7nXbzjB8EofmVg45oq5PLK15FUzpH0JKKlB1Ab86Mp5qQ4EEDg7xP2e2m1
         lW2A==
X-Gm-Message-State: APjAAAUpIMMRd0RQ0qEfIAVUfIWwY8+zQDGyah8X2xoT+yVRD4k9jMaI
	fWrFashI+FhpjMIBep/48M8JbW65uaVkFVzhIJE=
X-Google-Smtp-Source: APXvYqwbU7n0PCIp/la41jKNTT86idAGGMIzklRVEgi2wgCCf6V0SfoAl5FQ7hEAClaHX2k/s0yWcUoQnH96JGCO42w=
X-Received: by 2002:a2e:9741:: with SMTP id f1mr2343496ljj.123.1576077056162;
 Wed, 11 Dec 2019 07:10:56 -0800 (PST)
MIME-Version: 1.0
References: <3uWx.1576070177005275968.UQCr@lists.yoctoproject.org>
In-Reply-To: <3uWx.1576070177005275968.UQCr@lists.yoctoproject.org>
From: "Dimitris Tassopoulos" <dimtass@gmail.com>
Date: Wed, 11 Dec 2019 16:10:44 +0100
Message-ID: <CACKFPN0qnwf5oTK99i1gYTSOoC6-PPqd09cfg57Mx12LMBemCg@mail.gmail.com>
Subject: Re: [yocto] meta-intel stuck on bootup #yocto
To: eph_pendragon <leocorp96@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000123e8f05996f09a7"

--000000000000123e8f05996f09a7
Content-Type: text/plain; charset="UTF-8"

Hi, I don't is alsa is your actual issue, even if the kernel seems that
it's stuck there,
but in any case you can remove the alsa from your distro. I guess you're
using poky
as base distro, so add this line to your tmp/conf/local.conf file.

DISTRO_FEATURES_remove = "alsa"

then rebuild.

Regards.

On Wed, Dec 11, 2019 at 2:16 PM eph_pendragon <leocorp96@gmail.com> wrote:

> Hi everyone,
> So I am relatively new to the project and I have successfully been a able
> to make a few builds following the really well crafted documentation.
>
> I however have a few issues regarding my target system, an IPC (Simatic
> Nanobox) with a quad-core Intel celeron processor. Since there's no Bsp
> that I am aware of, building an image with "genericx86-64" everything boots
> up alright but I am unable to reboot or shutdown the target system
> successfully.
>
> I later on added the "meta-intel" layer but up to no avail. The image gets
> stuck indefinitely on boot-up at: "listing ALSA devices ...".
>
> 1. Since I am not really interested in sound for my project, could someone
> point me to how to remove, fix or skip this step in the boot process
> altogether?
>
> 2. Also, what configuration should I make to my kernel or Bsp layer in
> order to achieve a successful reboot and shutdown on my target machine when
> using the bare yocto core-image-minimal?
>
> Thanks. -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47631):
> https://lists.yoctoproject.org/g/yocto/message/47631
> Mute This Topic: https://lists.yoctoproject.org/mt/68149279/3958120
> Mute #yocto: https://lists.yoctoproject.org/mk?hashtag=yocto&subid=7196821
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> dimtass@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000123e8f05996f09a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I don&#39;t is alsa is your actual issue, even if the =
kernel seems that it&#39;s stuck there,<div>but in any case you can remove =
the alsa from your distro. I guess you&#39;re using poky</div><div>as base =
distro, so add this line to your tmp/conf/local.conf file.</div><div><br></=
div><div>DISTRO_FEATURES_remove =3D &quot;alsa&quot;<br></div><div><br></di=
v><div>then rebuild.</div><div><br></div><div>Regards.</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11,=
 2019 at 2:16 PM eph_pendragon &lt;<a href=3D"mailto:leocorp96@gmail.com">l=
eocorp96@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi everyone,<br>So I am relatively new to the project and=
 I have successfully been a able to make a few builds following the really =
well crafted documentation.<br><br>I however have a few issues regarding my=
 target system, an IPC (Simatic Nanobox) with a quad-core Intel celeron pro=
cessor. Since there&#39;s no Bsp that I am aware of, building an image with=
 &quot;genericx86-64&quot; everything boots up alright but I am unable to r=
eboot or shutdown the target system successfully.=C2=A0<br><br>I later on a=
dded the &quot;meta-intel&quot; layer but up to no avail. The image gets st=
uck indefinitely on boot-up at: &quot;listing ALSA devices ...&quot;.<br><b=
r>1. Since I am not really interested in sound for my project, could someon=
e point me to how to remove, fix or skip this step in the boot process alto=
gether?<br><br>2. Also, what configuration should I make to my kernel or Bs=
p layer in order to achieve a successful reboot and shutdown on my target m=
achine when using the bare yocto core-image-minimal?<br><br>Thanks.
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47631): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47631" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47631</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68149279/3958=
120" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/68149279/3958120</a><br>
Mute #yocto: <a href=3D"https://lists.yoctoproject.org/mk?hashtag=3Dyocto&a=
mp;subid=3D7196821" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mk?hashtag=3Dyocto&amp;subid=3D7196821</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:dimtass@gmail.com" target=3D"_blank">dimta=
ss@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000123e8f05996f09a7--
