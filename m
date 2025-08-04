Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A266CC87FCB
	for <webhook@archiver.kernel.org>; Mon,  4 Aug 2025 14:05:55 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.18613.1754316351605248588
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Aug 2025 07:05:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Etf0LRDW;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e8d96ff2dfaso3975319276.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 Aug 2025 07:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754316351; x=1754921151; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nnbfCHCd3m5TiQD41fsaaYFUHKsaz7VHDEKG6BbYX9M=;
        b=Etf0LRDWCZ8hPVeEwJtmJBfBC6HKVS8DirXBlZfECAUcahFLhJS8I0ArmOaCriUgNS
         rh14z5rfKcrixZj9E6cBic45eLW3QJZptH40pVJfRDJdWAEW6z8lZZqq6zf7ba8Hkv7H
         +xyQ7i6QI+nAPEe5F+Zus/k1H0WliIurGMXg9DZHmvmQxSgUc41YCQyO30TBtbZ5dQnO
         FE5wG3YnpSRGoMq39EsIb6Dvjm8JiIMfsax/L88oa+wLk58N31M3hn1aSMWUDY6uDh4F
         FZGAEE8L1LtrFiH1UBK+5WaL/lburWPUcO1ljtiIC7f14e53CB9Uoco4uyLPwwxKlKQl
         pBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754316351; x=1754921151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnbfCHCd3m5TiQD41fsaaYFUHKsaz7VHDEKG6BbYX9M=;
        b=kYtO3Yp8HJ8PqdYwq2jcv8Svh8r31bUSPWvj09mdX1NMPBKGOqmRF0BUt8VAenKVay
         Td7YKGor1iYkxWpfIokY0MUJiYjbnPIRlzX7+qYBUfkJDV9XN8EBId3g3a8i2DXsJF2b
         WZQf8klUXZ+W7z/417RcTId6bKAOuiv5TkQPE4TIp/3AE77YDfCIDHEATrQtYA/LJskL
         sfHJaNp+Z5earxZa3GiBgOVNAz/J3y8xy5BjqGLotK7/cbz6S1w6vypORCv47n31Nr0z
         VAwB8XqFUlDCInMEuZL/47xZfvE+v5zv+j87L6YLskx9Ewe7T2ZD7A/lLYwy7B77Zk7V
         xO+Q==
X-Gm-Message-State: AOJu0YwX2PdXcL+CMKXlyh0kMamRBLkprSlOgxvXrn8prJ/T9zvwzrzq
	Jk3rVTY9c9fCzdHxVsn0o1MYshYR5AMn9IdxmWKn+lEWmb6cVlQDTHsJphREe1FikbV13DlSKZm
	t3zQzwuPtSx3fmP2GQnhVcZMtIhi6OcS2hHZ6R64=
X-Gm-Gg: ASbGncu2etD8RzEWqLo3/CO4yv53bXB+9Oiyc6rfzwo7SDJajY9MYCj3FbNxXIIHm7T
	Lj27IX6W9GkEiVddYkp4UGwkVjEym22wEX2/6AZdNj+paHMQVi04QhTCyoRSQ7uszY42vvhWswW
	jvU3ahc71deFt7FT6CtrKohgsTK9WD3NghsBc6YHfsZ1JZGuBEfP9HmQXIo1VHzflzS3fJEkuFL
	tq7jU/LFMPUYrOTqpbN24DKLyJFtUI6hzRNoK8=
X-Google-Smtp-Source: AGHT+IEJos5lFBSebXmE2TieLK7QKysxc8oEknyL3LHufrHZfQUATY99v7vi+Xg+6FpRfwX6Yr9QzKfUOI5hM90iwhc=
X-Received: by 2002:a05:690c:91:b0:71b:6c7b:c802 with SMTP id
 00721157ae682-71b7f0c517fmr126850597b3.6.1754316350196; Mon, 04 Aug 2025
 07:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <82477f52-5602-438f-9bf3-403920a79ea0@gmail.com> <15453.1754305469032491670@lists.yoctoproject.org>
In-Reply-To: <15453.1754305469032491670@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Aug 2025 07:05:39 -0700
X-Gm-Features: Ac12FXxWVav8tLR3yDvmr3dodcVCAak7Tnzb43F07fv9AYgB3D_gvj2w243-NkM
Message-ID: <CAMKF1sqQ+PnaRBQ6eJLe2++ZV46k+6SgBEdXbHRYT7Gg9CRZwQ@mail.gmail.com>
Subject: Re: [yocto] User login fails despite successful creation with useradd
 class on NVIDIA Jetson AGX Orin #yocto #nvidia-jetson-ags-orin
To: felix.beck@karevo.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e09069063b8a9a62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Aug 2025 14:05:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65730

--000000000000e09069063b8a9a62
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 4, 2025 at 4:04=E2=80=AFAM felix.beck via Lists.Yoctoproject.Or=
g
<felix.beck=3Dkarevo.de@lists.yoctoproject.org> wrote:

> I managed to solve the login issue. I used your distro for that.
>
> However, the issue was not connected to Yocto but to the way I flash the
> image. My situation was that I was able to build, flash and boot. But
> everytime I saw a ubuntu-gnome-like GUI with a user "jetson" that I had n=
ot
> created. The problem was that I had a M.2/nvme harddisk on my jetson. Thi=
s
> caused issues during the flashing and booting that did not result in any
> error messages. When I removed the M.2/nvme device from the AGX Orin and
> flashed the yocto files onto the emmc chip, it worked. I was able to logi=
n
> with the user "root" without any password.
>
> Unfortunately, I still do not manage to create a custom user. Now I'm
> hitting an issue with EXTRA_USERS_PARAMS on my Jetson AGX Orin build. My
> user setup works fine for the main image but bombs out on the minimal Teg=
ra
> images:
> My config (from yoe-distro
> <https://github.com/YoeDistro/yoe-distro/blob/master/conf/projects/jetson=
-agx-orin-devkit/config.conf>
> ):
>
> # Setting a user/password in system
> INHERIT +=3D "extrausers"
> EXTRA_USERS_PARAMS +=3D "\
>    useradd admin; \
>    usermod -p '$(openssl passwd -6 myrootpassword)' admin; \
>    usermod -p '$(openssl passwd -6 myrootpassword)' root; \
>    usermod -a -G adm admin; \
>    usermod -a -G video admin; \
>    usermod -a -G audio admin; \
>    usermod -a -G systemd-journal admin; \
> "
> # Remove features that allow empty passwords - this MUST be uncommented t=
o
> work
> EXTRA_IMAGE_FEATURES:remove =3D "allow-empty-password empty-root-password=
"
>
> Error during build:
> usermod: group 'systemd-journal' does not exist
> ERROR: tegra-espimage: usermod command did not succeed.
>
> The problem is that tegra-espimage and tegra-minimal-initramfs don't
> include systemd, so no systemd-journal group gets created. But my main
> yoe-simple-image has systemd and needs this group assignment.
> Same machine config builds multiple image types - some with systemd, some
> without. EXTRA_USERS_PARAMS gets applied to all of them.
>
> What's the cleanest way to handle this? Conditional logic in the user
> params? Per-image overrides? Or am I missing something obvious? Currently
> just removing the systemd-journal line to get builds working, but then my
> admin user can't read journals in the full image.
>

Perhaps write happeneds for those images and empty this variable in there

>
> Thanks!
>

--000000000000e09069063b8a9a62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 4, 2025 at 4:04=E2=80=AFAM =
felix.beck via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject=
.Org</a> &lt;felix.beck=3D<a href=3D"mailto:karevo.de@lists.yoctoproject.or=
g">karevo.de@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div>I managed to solve the login issue. I used your distro=
 for that.</div>
<div>=C2=A0</div>
<div>However, the issue was not connected to Yocto but to the way I flash t=
he image. My situation was that I was able to build, flash and boot. But ev=
erytime I saw a ubuntu-gnome-like GUI with a user &quot;jetson&quot; that I=
 had not created. The problem was that I had a M.2/nvme harddisk on my jets=
on. This caused issues during the flashing and booting that did not result =
in any error messages. When I removed the M.2/nvme device from the AGX Orin=
 and flashed the yocto files onto the emmc chip, it worked. I was able to l=
ogin with the user &quot;root&quot; without any password.</div>
<div>=C2=A0</div>
<div>Unfortunately, I still do not manage to create a custom user. Now I&#3=
9;m hitting an issue with EXTRA_USERS_PARAMS on my Jetson AGX Orin build. M=
y user setup works fine for the main image but bombs out on the minimal Teg=
ra images:<br>My config (<a href=3D"https://github.com/YoeDistro/yoe-distro=
/blob/master/conf/projects/jetson-agx-orin-devkit/config.conf" rel=3D"noope=
ner" target=3D"_blank">from yoe-distro</a>):</div>
<div>
<div>=C2=A0</div>
<div># Setting a user/password in system<br>INHERIT +=3D &quot;extrausers&q=
uot;<br>EXTRA_USERS_PARAMS +=3D &quot;\<br>=C2=A0 =C2=A0useradd admin; \<br=
>=C2=A0 =C2=A0usermod -p &#39;$(openssl passwd -6 myrootpassword)&#39; admi=
n; \<br>=C2=A0 =C2=A0usermod -p &#39;$(openssl passwd -6 myrootpassword)&#3=
9; root; \<br>=C2=A0 =C2=A0usermod -a -G adm admin; \<br>=C2=A0 =C2=A0userm=
od -a -G video admin; \<br>=C2=A0 =C2=A0usermod -a -G audio admin; \<br>=C2=
=A0 =C2=A0usermod -a -G systemd-journal admin; \<br>&quot;</div>
<div># Remove features that allow empty passwords - this MUST be uncommente=
d to work<br>EXTRA_IMAGE_FEATURES:remove =3D &quot;allow-empty-password emp=
ty-root-password&quot;</div>
<div>=C2=A0</div>
<div>Error during build:</div>
<div>usermod: group &#39;systemd-journal&#39; does not exist<br>ERROR: tegr=
a-espimage: usermod command did not succeed.</div>
</div>
<div><br>The problem is that tegra-espimage and tegra-minimal-initramfs don=
&#39;t include systemd, so no systemd-journal group gets created. But my ma=
in yoe-simple-image has systemd and needs this group assignment.<br>Same ma=
chine config builds multiple image types - some with systemd, some without.=
 EXTRA_USERS_PARAMS gets applied to all of them.</div>
<div><br>What&#39;s the cleanest way to handle this? Conditional logic in t=
he user params? Per-image overrides? Or am I missing something obvious? Cur=
rently just removing the systemd-journal line to get builds working, but th=
en my admin user can&#39;t read journals in the full image.</div></blockquo=
te><div dir=3D"auto"><br></div><div dir=3D"auto">Perhaps write happeneds fo=
r those images and empty this variable in there=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"auto"></div>
<div><br>Thanks!</div>
</blockquote></div></div>

--000000000000e09069063b8a9a62--

