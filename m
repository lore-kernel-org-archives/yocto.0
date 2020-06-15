Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.22674.1592239614689289642
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jun 2020 09:46:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRSljDtw;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id e1so4104205vkd.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jun 2020 09:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YRYDpb3w44IRn0YbGSATFU8x1d2uRYNyzFDCxzx7FcE=;
        b=VRSljDtwDyTrQ5ALPHiCESuilNbjWQZoGpanY7sWkRU5IE83fnqGMLxI9z01TJvIdj
         dBmDCTCMvId0BEvjXgGLYpSrj7UF/wH3LmJ7bjGYWEB8t+d65+WHkylp4GV10UhrUvX5
         fGW+kX2+Quf16v0ytFBWtoM824A2gOlwLJfFbDJOHbuCThoyqriXzRieTsUif3K6mI9T
         kVHMK/ao89wY/Q/pUC4NaoKaHJKTDSWUOJyhbdjhkk/eeA1f1FS5HIJxdAEFAzj7PdLa
         B8vFTm+ymn7lWEApeuqjyqnDGC5iL4JrDcFjU0q5I+0yfCjqvPdHPH2Lfxky1pP4yLEL
         3WeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YRYDpb3w44IRn0YbGSATFU8x1d2uRYNyzFDCxzx7FcE=;
        b=Pl7Z/sxAmn7BoDs3TBP4tS7d+RpgHrAC4xiluO7dfNqOt5ZcFFqFGD2ryD+aAjWm+m
         n7Xc17mJ6JxG8iCEBaYJIQqGftEis+Mi2LnpQMuKqBPaYfmEwclS5b+TEFvxmjSlNz+U
         OxDnS/eptelgicM1ktAH/ntav/LwWdwWA6jj/VOjspn9LWeEmMPxuKIZtdvtr6t4Zmdo
         bKnHfYhrxdPBo1ua2r1V/tWV4KbOcx6EFx9rk+K0qPVhHMAr02mYdsi9pF0ztu/Hzz4B
         B4WaabUw+URUrJrjSna5A8qY1OX/Lfso+bhBibs4iyCI53HPIsTD2unAqHlFey62Aocn
         bmLA==
X-Gm-Message-State: AOAM531kliTe6GzeVj7Jr+4Y4r2bTPnpVcDV1iC6vN91wORr0eJ9x+Nb
	/dbDWY7qYV4c3rzH2DsSY6rPAKUcodOm0Ci542lVbPxU
X-Google-Smtp-Source: ABdhPJx8Z1eVWITl06XXXKd6EJ5/ymdkN+CJx4JXEmTeplkyRmdcXrgTt4h6R2ESdt4fGcqvz+dB25mCZTCrp9gI38o=
X-Received: by 2002:a1f:19cd:: with SMTP id 196mr19377302vkz.0.1592239613736;
 Mon, 15 Jun 2020 09:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200615135023.1044067-1-ross@burtonini.com>
In-Reply-To: <20200615135023.1044067-1-ross@burtonini.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 15 Jun 2020 18:46:42 +0200
Message-ID: <CANNYZj8_oGAVL6SScEEVKOsE-=tJnZKSU7jc2528BZPMO5GpBg@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: generate the buildtools tarballs for aarch64
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000092ffc005a8222c8b"

--00000000000092ffc005a8222c8b
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Jun 2020 at 15:50, Ross Burton <ross@burtonini.com> wrote:

> From: Ross Burton <ross.burton@intel.com>
>

                                       ^^^^


>                  "SDKMACHINE" : "aarch64",
> -                "BBTARGETS" : "uninative-tarball"
> +                "BBTARGETS" : "buildtools-tarball
> buildtools-extended-tarball uninative-tarball"
>

(insert Intel-abandoning-x86 joke here)

Alex

--00000000000092ffc005a8222c8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 15 Jun 2020 at 15:50, Ross Burton &lt;<a href=3D"mailto:ross=
@burtonini.com">ross@burtonini.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">From: Ross Burton &lt;<a href=3D"mailto:r=
oss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<br></=
blockquote><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^^^^<br></div><div>=C2=A0 <br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 &quot;SDKMACH=
INE&quot; : &quot;aarch64&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BBTARGETS&qu=
ot; : &quot;uninative-tarball&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BBTARGETS&qu=
ot; : &quot;buildtools-tarball buildtools-extended-tarball uninative-tarbal=
l&quot;<br></blockquote><div><br></div><div>(insert Intel-abandoning-x86 jo=
ke here)<br></div><div><br></div><div>Alex<br></div></div></div>

--00000000000092ffc005a8222c8b--
