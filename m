Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59F9EDE9B8
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:17:48 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.10590.1694693865159133085
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:17:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=MpG8pIjr;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-31f7400cb74so720424f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694693863; x=1695298663; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=stKh/74jcHe1uMCa4bsbp3vC8WLVYKJhq/QDeoRqi+E=;
        b=MpG8pIjr3Ye5Px+8nis8iWYSguoNI5slta3gJGIiMM5qttdJ8IRm8W8xPcccLzqkz6
         P9/vEaJRx5W+v7JhE6KUr7oSNR9Eux7aSeyftVP3oos4qQQ9fULtIU5RItD40lHEcyhL
         HGxb7d+zVxtouNuhpT9q/VrLDwp0ftjHWdcqwLAM5Nlh2SkW4fhqj5x4lMpibiwzHdTO
         SfJ8qb17jo8TpReCxZPyi2R7rWuLsaGedc97Yc6uqGop/YIJuO/GiIIhGDI5K3AKE1Ob
         lt72f6k7t/0MKHIvIJ4cODMEwWMIORrm/pWswDVi/Rhcyw8jLrRAH/IHRUICZGPJb6g1
         T2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694693863; x=1695298663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stKh/74jcHe1uMCa4bsbp3vC8WLVYKJhq/QDeoRqi+E=;
        b=ecNL/CqslKlFEtzYCgBFE5JesurSZoeEEUfsVvtBMYegJ+OBTIiTRQGo7LUwo+tkw/
         sBvLGMuHUWsr8ZQamScuj+pHXEiDg+XlTRf4G0lNewB++/8rFSb8LH8uuryj2JFznyDb
         t0sCNqz3gZcva6G+xd8hSyyFlclgtTQJ5zDBtbHOee8wdeXYNkcK45E0bMlw2sysXl2r
         FjA4IjcSwvODfSZxz5rZfwZodtRpAIPAiTYtgza+1VlqCIa5cAnomn/A+8Oyu8OLZF0l
         od3JEUu6XAF7Uok5O67cCcc7wPxDqFE4gNSoJboNH/R7C+mGScsTMwSmfK4hguTjCorr
         ODNA==
X-Gm-Message-State: AOJu0YwgXis72bPo//0dZaq3n/12VN4uFkTOvUtqLwVeSiS8/4swv+tK
	HWvYB2jiftYBZQcysNmAKZHRWMaQuhbsbVJrdY4=
X-Google-Smtp-Source: AGHT+IFgW1PUSytUNurZb3rXR2ZAbWxEgt/VmweljFnxGbrrrSMD0zmaDgInfWwFHEYIixEFK0l7QHXq+DYROGQ2pSI=
X-Received: by 2002:adf:f98a:0:b0:316:e249:c285 with SMTP id
 f10-20020adff98a000000b00316e249c285mr4056973wrr.71.1694693863203; Thu, 14
 Sep 2023 05:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 14 Sep 2023 14:17:30 +0200
Message-ID: <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com>
Subject: Re: [yocto] Errno=No space left on device
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b829e9060550a996"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:17:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60999

--000000000000b829e9060550a996
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 2:07=E2=80=AFPM Dave Hitchman <dave.hitchman@kymati=
.com>
wrote:

> ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
> ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
> ERROR: To modify max_user_watches: sysctl -n -w
> fs.inotify.max_user_watches=3D<value>.
>


> pyinotify.WatchManagerError: add_watch: cannot watch
> /home/dave/Documents/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space le=
ft on
> device (ENOSPC)
>
> dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -n
> fs.inotify.max_user_watches
> 65536
>
> What IS the actual problem and how is it actually fixed? I cant be the
> only person facing this surely?
>

Have you tried to increase fs.inotify.max_user_watches as the error says?

$ sysctl -n fs.inotify.max_user_watches
1048576

64K might not be enough.

--000000000000b829e9060550a996
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 14, 2023 at 2:07=E2=80=AFPM D=
ave Hitchman &lt;<a href=3D"mailto:dave.hitchman@kymati.com">dave.hitchman@=
kymati.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div class=3D"msg-7908973965563717212"=
>




<div dir=3D"ltr">
<div>ERROR: No space left on device or exceeds fs.inotify.max_user_watches?=
<br></div>
<div>ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watche=
s.</div>
<div>ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_wa=
tches=3D&lt;value&gt;.</div>
<div></div></div></div></blockquote><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div class=3D"msg-7908973965563717212"><div dir=
=3D"ltr"><div>pyinotify.WatchManagerError: add_watch: cannot watch /home/da=
ve/Documents/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space left on devi=
ce (ENOSPC)<br></div>
<div><br>
</div>
<div>dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -=
n fs.inotify.max_user_watches</div>
<div>65536</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What IS the actual problem and how is it actually fixed? I cant be the only=
 person facing this surely?</div></div></div></blockquote><div><br></div><d=
iv>Have you tried to increase fs.inotify.max_user_watches as the error says=
?</div><div><br></div><div>$ sysctl -n fs.inotify.max_user_watches<br>10485=
76<br></div><div><br></div><div>64K might not be enough.</div></div></div>

--000000000000b829e9060550a996--

