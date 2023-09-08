Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04BA5EE57F6
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 10:58:56 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.36431.1694170731098870318
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 03:58:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=aG9Haj0t;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-401d67434daso20480075e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 03:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694170729; x=1694775529; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cFo/lQwyDYM38ORPWZCcoGZg3XOw6JQKPAnSlfqXL7g=;
        b=aG9Haj0tqIrQJDS8uCkOlXDXJucf2QNa5seEi1R5K5EEhlYE6UX/4BP+7DRVjvRZ5G
         X3OKBdz7EXH2glKcU7dwUC752PYvcrMUO5tCFYBFxJ8ZOSW10NbZVM2GLVDjuN/YX47h
         6C6o1CqjEe1Y14w3ccq+6Nb1SYGmwLEPjRIUEGYynN3LkP2fBmtgZDJ4QHHEnzHE14jW
         47B0gHkpmDholsLdHN57Zpw5wfPw91yNZ14AZVB+W1FXCTd6JJ/L3SsfEQiq38lYM9ek
         Ck8RgB3y5J0NWwLyj2hkieRf1Yka+J510VtgDFVNqkX320LVgdXWrlonHlldgCnHftVL
         c/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694170729; x=1694775529;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFo/lQwyDYM38ORPWZCcoGZg3XOw6JQKPAnSlfqXL7g=;
        b=Dtnsvew04kpuBv0RBEFEMTghD1zjIN8wQX/aSC40KcE7M+EmnC8WTlfN3SRJ8f2LDC
         kW7fesITRk9146wi6xVOa4vvXwwoxpvNIC36AsyeI8y/rEr1tvo2SzCjOsDr/D4osxjY
         bIIaDueQnWV0iFSarVFbIqevh8c52w8FT9CpVJb4Ulm2UsskJhb0rCfQxglxnAq4r8dO
         JDFTUfOag1/HUDypRZiJRfAl+F5K7Eo5lJz6uc0Lg++W5nGlLS+PEYq5KF2UgXqrldoZ
         m8uMIAhZTdUpgOEcFOnWPtMhNvBE4kiX8PsVHE0a5nS7hdXFPuEHKvAscj/qLo4vZiem
         NYPw==
X-Gm-Message-State: AOJu0YwdpPAf0H/ZVLs+MBrLf6KZ6/poiN4QcUx1rumwLVKNieAn6vtT
	2r4xQZ8JgK93MeS3LTedEVy8EXPkfFQHIJMyw6A=
X-Google-Smtp-Source: AGHT+IGslEKeoLwM69uW5mcW5E0DzEmAEOxRaGtRs0FS8Eqd7KU28pVqcA4+LXTR1JGkfp5VykOyTqS0Gbo4u0vLdpk=
X-Received: by 2002:a5d:628c:0:b0:319:5e0d:9b0f with SMTP id
 k12-20020a5d628c000000b003195e0d9b0fmr1495416wru.33.1694170729361; Fri, 08
 Sep 2023 03:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org> <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
 <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
 <20230908072034c8e150e6@mail.local> <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
 <ZPrgi+npm5MBZ6QC@nuoska>
In-Reply-To: <ZPrgi+npm5MBZ6QC@nuoska>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 8 Sep 2023 12:58:37 +0200
Message-ID: <CA+chaQdU2sny=vg+7vNM5eXfXiikM2yRna22JdqrAja=GUvddg@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Yoann Congal <yoann.congal@smile.fr>, 
	MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000083376b0604d6dc0a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 10:58:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60953

--00000000000083376b0604d6dc0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FWIW: I'm mounting my OE drives with barrier=3D0 and ext4 without journal
(commit=3D10000 cannot be used on ext4 without journal)

BTW: During last OE Happy Hours Khem mentioned using F2FS on NVMEs, anyone
else already played with it?

Not sure how different the effect is from the suggested sysctl setting, but
for my work station I would use it only for build disks (as there are some
more valuable data on other disks including my PREMIRROR and the backup of
NVMEs without SSTATE and TMPDIRs), so I don't mind much loosing data from
these NVMEs, but using the same on regular /home would be bad.

On Fri, Sep 8, 2023 at 10:51=E2=80=AFAM Mikko Rapeli <mikko.rapeli@linaro.o=
rg>
wrote:

> Hi,
>
> One related improvement is to avoid IO to disk completely as long as RAM =
is
> available. By default file systems like ext4 will start writing all buffe=
rs
> in the background after few seconds which is wasted IO if memory is
> available and
> rm_work will anyway wipe the tmp to produce a target filesystem image tar
> ball etc.
> sysctl settings are:
>
> vm.dirty_background_bytes =3D 0
> vm.dirty_background_ratio =3D 90
> vm.dirty_expire_centisecs =3D 4320000
> vm.dirtytime_expire_seconds =3D 432000
> vm.dirty_bytes =3D 0
> vm.dirty_ratio =3D 60
> vm.dirty_writeback_centisecs =3D 0
>
>
> http://events17.linuxfoundation.org/sites/events/files/slides/elce-2016-m=
ario-goulart-mikko-rapeli.pdf
>
> It the best case in-memory file systems like tmpfs will do but it's hard
> to estimate
> the disk usage and memory size beforehand. Overflowing to disk IO only if
> RAM is
> getting full scales better.
>
> It makes sense to monitor build system CPU, memory, disk and network usag=
e
> while builds are on
> going. A lot of odd things will pop up, like IO bottlenecks (most CPUs
> idle), suprising network
> downloads.
>
> And deleting files is a heavy operation and if flushed to disk, it's
> annoyingly slow
> compared to wiping an entire partition and creating a new file system on
> it.
>
> Cheers,
>
> -Mikko
>

--00000000000083376b0604d6dc0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FWIW: I&#39;m mounting my OE drives with barrier=3D0 and e=
xt4 without journal (commit=3D10000 cannot be used on ext4 without journal)=
<div><br></div><div>BTW: During last OE Happy Hours Khem mentioned using F2=
FS on NVMEs, anyone else already played with it?<br><div><br></div><div>Not=
 sure how different the effect is from the suggested sysctl setting, but fo=
r my work station I would use it only for build disks (as there are some mo=
re valuable data on other disks including my PREMIRROR and the backup of NV=
MEs without SSTATE and TMPDIRs), so I don&#39;t mind much loosing data from=
 these NVMEs, but using the same on regular /home would be bad.</div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Sep 8, 2023 at 10:51=E2=80=AFAM Mikko Rapeli &lt;<a href=3D"mailto:=
mikko.rapeli@linaro.org">mikko.rapeli@linaro.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
One related improvement is to avoid IO to disk completely as long as RAM is=
<br>
available. By default file systems like ext4 will start writing all buffers=
<br>
in the background after few seconds which is wasted IO if memory is availab=
le and<br>
rm_work will anyway wipe the tmp to produce a target filesystem image tar b=
all etc.<br>
sysctl settings are:<br>
<br>
vm.dirty_background_bytes =3D 0<br>
vm.dirty_background_ratio =3D 90<br>
vm.dirty_expire_centisecs =3D 4320000<br>
vm.dirtytime_expire_seconds =3D 432000<br>
vm.dirty_bytes =3D 0<br>
vm.dirty_ratio =3D 60<br>
vm.dirty_writeback_centisecs =3D 0<br>
<br>
<a href=3D"http://events17.linuxfoundation.org/sites/events/files/slides/el=
ce-2016-mario-goulart-mikko-rapeli.pdf" rel=3D"noreferrer" target=3D"_blank=
">http://events17.linuxfoundation.org/sites/events/files/slides/elce-2016-m=
ario-goulart-mikko-rapeli.pdf</a><br>
<br>
It the best case in-memory file systems like tmpfs will do but it&#39;s har=
d to estimate<br>
the disk usage and memory size beforehand. Overflowing to disk IO only if R=
AM is<br>
getting full scales better.<br>
<br>
It makes sense to monitor build system CPU, memory, disk and network usage =
while builds are on<br>
going. A lot of odd things will pop up, like IO bottlenecks (most CPUs idle=
), suprising network<br>
downloads.<br>
<br>
And deleting files is a heavy operation and if flushed to disk, it&#39;s an=
noyingly slow<br>
compared to wiping an entire partition and creating a new file system on it=
.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</blockquote></div>

--00000000000083376b0604d6dc0a--

