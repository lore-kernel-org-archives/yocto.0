Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web12.34880.1629171831444461055
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 20:43:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=byvZLYNU;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso2636596pjh.5
        for <yocto@lists.yoctoproject.org>; Mon, 16 Aug 2021 20:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IZzYq5ETnY+ok52XgJL7Tbn0dJQ6QM5PnjmeKkPO5XQ=;
        b=byvZLYNUHnytr95ne1tPJ25xf/Uje8eyO4CA0MFb6LVUl+Cqb+lib2tEwvNASDE4Hs
         x1YqKxgrlswdE89l+a+JkqhpFdAoPjtIrlpJj28Rb16BPrt9baaOHgZ1Fio4+xMhMGK0
         SKG7/BQJnWHh6GKjEHjMvCEiTyesMToGzT0l3IC1xYpWSDAlt8/1EyBqzhQV/dSIAeG3
         DEwbeRUFGs8JfWN2sOJPoooXXP4Zwho5cSh8Zzn5Hc0gATHBYeHWbt1c53n3ta/JnrKG
         HFrOtCTVn2uWVtkqLMINNhYmhbLH2K7fmwjvVZJGzr0wbLbFszQlisi/TRsimB6fIlgC
         FpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IZzYq5ETnY+ok52XgJL7Tbn0dJQ6QM5PnjmeKkPO5XQ=;
        b=kqh+5rFNe8cNZWP17rJZnkPZ8+ECimb1H5HyqjDrUPCEQmKdy8KB/p7VWWia9NO2DF
         nOEpmzKG49WlYMZTXRxyosJjD+TPw1+SwhKrf8NnGHsbRuaYz0RJ2xOw6pTUnRZNtOcM
         Dfz7Kiby4/dC0sS7a4Vbljg2O6a3K/XJ6O993NyF9ChxQ7DIIec7+dznXwFT/2zk4UHx
         CdP5zs8YpVpvD0RuB+9va+zLwBoJaP6TtpvG+xbm0fYWf4ytm+QT+uezYnrT/G71eWOP
         Ixm80Gv3VzReEcXYryZ4ngXdej0MKCPMFzis3RQudG0hXRDIZ8m1JqKBjYPzfyk9TJJf
         CFfA==
X-Gm-Message-State: AOAM530TdYrRjmmdC+xKFvTx5a3wTtxumrWLCq9B+2hy2wbnwVBU5von
	aFkYn5BCrAmlubnMOPZk5Zq14qTu/6LJWXseZTI=
X-Google-Smtp-Source: ABdhPJxDXdftlyvgJO41BfNOcmFOxX0k6WNt4DmnTOAYnEYIwuB0me8aluaI5I75T/iZCDCcU0EWB69rkBdw3H8AFOY=
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr1405551pjr.83.1629171830841;
 Mon, 16 Aug 2021 20:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTy177KCeQaFdzeXYM=0Sga_PgGHRh=ZuVjxiDLtz-v_Q@mail.gmail.com>
In-Reply-To: <CAA=hcWTy177KCeQaFdzeXYM=0Sga_PgGHRh=ZuVjxiDLtz-v_Q@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 17 Aug 2021 05:43:39 +0200
Message-ID: <CAGAf8Lz9V4Q7LzW_HCHFOW5iK6G=NQ5kEP_CzFzb_ozaap2uLA@mail.gmail.com>
Subject: Re: [yocto] Hardknott systemd-journald issue
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004163eb05c9b92080"

--0000000000004163eb05c9b92080
Content-Type: text/plain; charset="UTF-8"

Hello Jupiter,

This might provide you a great help:
https://askubuntu.com/questions/864722/where-is-journalctl-data-stored

Namely:





*Usually the storage directory is /var/log/journal or /run/log/journal, but
it doesn't have to necessarily exist in your system.If you just want to
check the amount of space that the journal is currently occupying on your
disk, simply type:$ journalctl --disk-usage*

You also can combine the df command (look into man df).

Zee
_______


On Tue, Aug 17, 2021 at 4:18 AM JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> I've just upgraded from Zeus to Hardknott with the kernel 5.10.59, the
> /run/log/journal was running out of space and crashed, is it a kernel
> issue or Hardknott build issue?
>
> I never seen that issue in Zeus, I thought that systemd-journald
> should be capable of detecting the space, if it is no log space, stop
> writing rather crashing the tmpfs
>
> [13749.397288] systemd-journald[97]: Failed to open runtime journal:
> No space left on device
> [13749.439047] systemd-journald[97]: File
> /run/log/journal/4ba2cd613d004916863e30730800bb69/system.journal
> corrupted or uncleanly shut down, renaming and replacing.
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> 
>
>

--0000000000004163eb05c9b92080
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Jupiter,<br><br>This might provide you a great help:=
<br><a href=3D"https://askubuntu.com/questions/864722/where-is-journalctl-d=
ata-stored">https://askubuntu.com/questions/864722/where-is-journalctl-data=
-stored</a><br><br>Namely:<br><br><i><u>Usually the storage directory is /v=
ar/log/journal or /run/log/journal, but it doesn&#39;t have to necessarily =
exist in your system.<br><br>If you just want to check the amount of space =
that the journal is currently occupying on your disk, simply type:<br><br>$=
 journalctl --disk-usage</u></i><br><br>You also can combine the df command=
 (look into man df).<br><br>Zee<br>_______</div><br><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 17, 2021 at 4:18 =
AM JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,=
<br>
<br>
I&#39;ve just upgraded from Zeus to Hardknott with the kernel 5.10.59, the<=
br>
/run/log/journal was running out of space and crashed, is it a kernel<br>
issue or Hardknott build issue?<br>
<br>
I never seen that issue in Zeus, I thought that systemd-journald<br>
should be capable of detecting the space, if it is no log space, stop<br>
writing rather crashing the tmpfs<br>
<br>
[13749.397288] systemd-journald[97]: Failed to open runtime journal:<br>
No space left on device<br>
[13749.439047] systemd-journald[97]: File<br>
/run/log/journal/4ba2cd613d004916863e30730800bb69/system.journal<br>
corrupted or uncleanly shut down, renaming and replacing.<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000004163eb05c9b92080--
