Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web12.4870.1621317858145558487
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 23:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMjQVvBD;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id u33so4386531qvf.9
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 23:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tt3hlYfcQgUChTiAsNgA/5njZC17lhGaxhyLq49SYgA=;
        b=OMjQVvBDNm8lcsZU/oWY07degf0XLg+JqilBY3vAzwQZhOUS5Oiptpkf9rXZPlElaQ
         DlYMqQPa2ZSe0wguAF9s3In8N2SA99iE6heFOGKGpItfmAgjbzGS5Sj4pPYPaGu5HFwB
         45IU5PmzTbN7Dy3q+fUDpBXO/+Dn7DfxkHe//Zd64hGNQzfHK9OTo7wsO/KBh+PRLFHI
         qz5UmStQcq6o7TxOuSzrg81z3+fbFbovKTve0xmpg04cCuuCosbYP4JEjaLlIFnrTYK4
         CKYeIjtoTfyz8jVnnrjvCw3nC0+qcTyS0x7gpZMIBRQoxpiMC1Y4dWoDxAdxZ6+H9K/a
         2mlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tt3hlYfcQgUChTiAsNgA/5njZC17lhGaxhyLq49SYgA=;
        b=BKrybhibJWkIGW28lRbNVepmuyezE5Cvkcf+GWj+b6EWBnrdEMl0TsWWmTlWfLVpr6
         LNgHuYbdwKaC9I3BuP7D5xUIAF/UP26dkt6R9JBIpboBV+eAmfxI7LmSzdNvGjLua9tB
         aq7tIfWrePGxMgpCeyeZ6sLv1xWMuN9gRr1mVMfFydPjawCl+qsIMUQYoJDyY5sg/jxs
         H8Zcmh2ZpOZ5H8nVW6r0OsJTzszHBNqtLZDQRKScQBJ3l86rar1q28XeSuwd0T89PuII
         k1LYp44V+sAxqvkoN0R/Zm1vctzMHfMmcUdBsLIG62Sjhh0RpnNHZjOM4zp2WamQ3uO1
         Go3g==
X-Gm-Message-State: AOAM5318H+DT1ZZ/SI1D8dsbIySkDi8Ywz0RteLzRTfhrUpP2x8CDQ9F
	mOcXNOLQ+FowV8IRgZ/MbI/sPOuBogDBiaRklyQ=
X-Google-Smtp-Source: ABdhPJyuectAmccFunhIXcA6LOFvV5wHv8ZAysWckf7Ahal5HFM0elhjRnON2l2TyREVNWfwN8cFgqOtX7ERqW3MRcE=
X-Received: by 2002:ad4:4dc8:: with SMTP id cw8mr3862015qvb.16.1621317857308;
 Mon, 17 May 2021 23:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <woAI.1621317416137960841.EGTa@lists.yoctoproject.org>
In-Reply-To: <woAI.1621317416137960841.EGTa@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 17 May 2021 23:03:51 -0700
Message-ID: <CAMKF1sqHNBogNctS1ry8X0+2_wDnz=afxMs-m7TUbxpnqNAMeA@mail.gmail.com>
Subject: Re: [yocto] vlc 3.0.11 package issue
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, May 17, 2021 at 10:57 PM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi ,
>
>    I am trying to run vlc-3.0.11 media player on my riscv target board.  I am facing problem this package
>
>  [cli] lua interface error: Error loading script /usr/lib/vlc/lua/intf/cli.luac: ../../vlc-3.0.11.1/share/lua/modules/common.lua:3: attempt to call a nil value (global 'module')
>
> lua package also I installed version is 5.3.6 .
>

usually it means lua version mismatch. You might be hitting same issue
as reported here

https://trac.videolan.org/vlc/ticket/25036

there is a patch attached to that ticket. Please try to apply that and
see if it helps.

https://trac.videolan.org/vlc/attachment/ticket/25036/0001-lua-Make-scripts-compatible-to-lua-5.4.patch

> How can I fix this issue. Is I need to apply patch for this?if patch is present please give me guidance. Can anybody knows this problem help me.
>
> Thanking you in advance.
> --
> Regards,
> Sateesh
> 
>
