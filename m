Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web08.3682.1628128877921596193
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 19:01:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQOifqWz;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id k3so3576936ilu.2
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 19:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RTlgO9wpXkwSUlkFwyGwriCWCK4F4jpBpdCcXF5vdv8=;
        b=gQOifqWzGDoj5bKwrDojXNPJ/rtn35R58G4W/ugnzha3MCMBGiTf8N0uaQgxKzf/ho
         mpLW2jlMZVG6Ey18Y+tP3HGb5wwe6j1usZQKb00YhMoPSXA6P5bBOg/nOBKH74WLoahx
         uSEYpFsyN4fDyhmAgz9b5wiZwI5ZkJFdqt7mS61hJV2nxrBrfslBV3QT7mt2Y8dGZJC+
         W0e1gpUu/2tkSqz/S1d3mJ6myP55J+16HW7440tI7EeL8PXPnP/TR6o/g/bsDnx6dscK
         tbIgreK4TUZQSMVHZvCZdOoEwrT8c0m8jhOw2zANiiyx4OoGESh5RW2+TOagZfVTyWDb
         cdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RTlgO9wpXkwSUlkFwyGwriCWCK4F4jpBpdCcXF5vdv8=;
        b=fUN2jo6Jc06D9r6UzlX8sMVt/M16PQox0osu3ViyMdlxTadhTveNYHiDaq8GDyV+v3
         R62e5YPHKEyF9NdnFF16ajn6z7unasUauDa+i+mSHikoxg76gRzUY/X3gQx5EpCwL3gx
         yCk7NdFY3VGKlK53m3stcrfb+uSy+5wbqJUtMQ2tYol/WAm5pXxToMoBgiLBy8VljjfY
         D2TDs/UDOuwsHnfalNVPso/OMlv54rU+6FgvLDl0kbdg0L6g/AtDiTy386R74mfG0kh1
         53PiDlwkfgKXcQ8RjFeNlJOgaZ/3AVwmzLV7RxbQD64L96c2YXpxSh46tYT11NlevmYx
         wGkg==
X-Gm-Message-State: AOAM5308q3PFD2BymHyG2WBsN71xT/zv1YnTVQ1S0hY1B92pJjzH76t/
	rYYh+PR9E/LQ33kxjtcZ2oU/GrNWC41W0Tv7mhjeMWeb
X-Google-Smtp-Source: ABdhPJy7t0zdRW09dSU6b4IzCWO084EYCnB8thlpOTYHJOFthexyGSgvUc4RbcG8tpZNl7FNFVjDHCG7dCDAss3Ux4Y=
X-Received: by 2002:a05:6e02:1bcc:: with SMTP id x12mr172556ilv.275.1628128876950;
 Wed, 04 Aug 2021 19:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210804174953.12346-1-twoerner@gmail.com> <20210804174953.12346-2-twoerner@gmail.com>
In-Reply-To: <20210804174953.12346-2-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Wed, 4 Aug 2021 22:01:05 -0400
Message-ID: <CAHUNapROPBSFW4MEiVi5JUK93tQcAdiCij2tzsQ46J1CmWx9oA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 2/2] switch to the new bitbake OVERRIDE syntax
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005bfef005c8c64b03"

--0000000000005bfef005c8c64b03
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 4, 2021 at 1:50 PM Trevor Woerner <twoerner@gmail.com> wrote:

> With bitbake commit 7dcf317cc141dc980634f8c18bfa84f83e57206a
> ("bitbake: Switch to using new override syntax"), applied on
> Aug 2, 2021, the OVERRIDE separator is now a colon instead of
> an underscore. Therefore all builds performed with a bitbake
> before this change must use a meta-rockchip commit before this
> one, and any builds performed with a bitbake after this change
> must use a meta-rockchip starting from this commit onwards.
>
> Build-tested for all meta-rockchip MACHINEs.
>
> Run tested on:
> - tinker-board
> - nanopi-m4-2gb
> - rock64
> - rock-pi-4b
> - rock-pi-e
>
> The tinker-board and rock-pi-e work fine. The rest of the boards
> seem to have a, hopefully unrelated, issue running a
> 5.13-yocto-standard kernel. However, all boards work with the
> 5.10-yocto-standard kernel.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass              |  6 ++--
>  conf/machine/include/rk3288.inc               |  2 +-
>  conf/machine/include/rk3328.inc               |  2 +-
>  conf/machine/include/rk3399.inc               |  2 +-
>  conf/machine/include/rockchip-defaults.inc    |  2 +-
>  conf/machine/include/rockchip-wic.inc         |  2 +-
>  conf/machine/rock-pi-e.conf                   |  4 +--
>  .../recipes-qt/qt5/qtbase_%.bbappend          | 10 +++----
>  .../trusted-firmware-a_%.bbappend             |  8 +++---
>  recipes-bsp/u-boot/u-boot%.bbappend           | 10 +++----
>  recipes-graphics/mesa/mesa_%.bbappend         |  4 +--
>  recipes-kernel/linux/linux-yocto%.bbappend    | 28 +++++++++----------
>  recipes-kernel/linux/linux-yocto_5.4.bbappend |  4 +--
>  13 files changed, 42 insertions(+), 42 deletions(-)
>

applied to meta-rockchip, master

--0000000000005bfef005c8c64b03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Aug 4, 2021 at 1:50 PM Trevor Woe=
rner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">With bitbake commit 7dcf317cc141dc980634f8c18bfa84f83e5720=
6a<br>
(&quot;bitbake: Switch to using new override syntax&quot;), applied on<br>
Aug 2, 2021, the OVERRIDE separator is now a colon instead of<br>
an underscore. Therefore all builds performed with a bitbake<br>
before this change must use a meta-rockchip commit before this<br>
one, and any builds performed with a bitbake after this change<br>
must use a meta-rockchip starting from this commit onwards.<br>
<br>
Build-tested for all meta-rockchip MACHINEs.<br>
<br>
Run tested on:<br>
- tinker-board<br>
- nanopi-m4-2gb<br>
- rock64<br>
- rock-pi-4b<br>
- rock-pi-e<br>
<br>
The tinker-board and rock-pi-e work fine. The rest of the boards<br>
seem to have a, hopefully unrelated, issue running a<br>
5.13-yocto-standard kernel. However, all boards work with the<br>
5.10-yocto-standard kernel.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0classes/rockchip-gpt-img.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 6 ++--<br>
=C2=A0conf/machine/include/rk3288.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0conf/machine/include/rk3328.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0conf/machine/include/rk3399.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0conf/machine/include/rockchip-defaults.inc=C2=A0 =C2=A0 |=C2=A0 2 +-<=
br>
=C2=A0conf/machine/include/rockchip-wic.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 2 +-<br>
=C2=A0conf/machine/rock-pi-e.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 4 +--<br>
=C2=A0.../recipes-qt/qt5/qtbase_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 10 +++----<br>
=C2=A0.../trusted-firmware-a_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 8 +++---<br>
=C2=A0recipes-bsp/u-boot/u-boot%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| 10 +++----<br>
=C2=A0recipes-graphics/mesa/mesa_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 4 +--<br>
=C2=A0recipes-kernel/linux/linux-yocto%.bbappend=C2=A0 =C2=A0 | 28 ++++++++=
+----------<br>
=C2=A0recipes-kernel/linux/linux-yocto_5.4.bbappend |=C2=A0 4 +--<br>
=C2=A013 files changed, 42 insertions(+), 42 deletions(-)<br></blockquote><=
div><br></div><div>applied to meta-rockchip, master=C2=A0</div></div></div>

--0000000000005bfef005c8c64b03--
