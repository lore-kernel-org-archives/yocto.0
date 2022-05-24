Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A2C433F5
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 17:51:48 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.12776.1653414707253291581
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 10:51:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FgNbZaGw;
 spf=pass (domain: gmail.com, ip: 209.85.210.179,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id h13so10798155pfq.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 10:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=m6KYjriY7meCQEj0m299HUbA70VJ7ih+2T5HRVpAm6k=;
        b=FgNbZaGwNHe66FsOLYBKX4P6sLlQiGRrSTy9Nm7gRx13mqITD01eLF0OPgtwYVfPvv
         sLKMZfa7Cl+c3pHAvXgiQOzUdEXBNftNMFz1wBHIGeeCLa1pKeL3/Htm0GGf07U3G4/F
         KPfsKGQ+XZ06fuZJPB2YI0tNRnQIbqbhWku2/mNM/+9jQWkXr9YOD4l1B71d8N332BHz
         s+g3+GqHqWbxojSFyiOvQbKKncNigwi0HiIxi+6RJaGVdn+Fde6Adx0bUStonoFs06UQ
         yZwabPWX7ycmXVxBhu4m4e9mrMK1PPS50yrQkaXosTMttVKAWzmUCYyLS7VoSJJBxkwg
         8X5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m6KYjriY7meCQEj0m299HUbA70VJ7ih+2T5HRVpAm6k=;
        b=ApySAEkPecF57z0cfGp1RAWH8qNek0DFGIKFF26b8ZW/JMJsQFX8bJW4qISCbxZjVM
         UuP/pLxTae0MaZkPBbF+ImVRfRutwnztV+GT3vh5dp88J21d4F6HEDSFEGb9txZC99CV
         VYKyKvRkSqLkGyhNawLHeyGrpn0TuhmlugLbaBeZRyfNlnXXksuqQ3U0Nj3xmfz11Sy/
         vwfMALe1eOYXl9CT7CiymzQQ4GLdFbClJk8HEUonFIzb77LVPFCPpNIx2O7VwH2Eu8Qa
         uDebTd0wCVqtTto8KOjbvy0UZAo69JUZzZ2uD1DwziiAL5Wva9NIyXAZ2oVzEEkm8ozr
         Kfvg==
X-Gm-Message-State: AOAM531q0LqXjBortOC30l7BGMzxk1jBPci9puTY7vch0gcooua1Gcju
	4ibF/m09sEiZh0K+PK7+QIDHbcCVMtGGx2ZL8Fo=
X-Google-Smtp-Source: 
 ABdhPJyAxER18mHyxXwMd+YL/HGRH7UsbWzimHV3lnGHIZ3VPa8iq9TVXgD5usRPdniM3sv80YOXkfPDkABZWpCC2wU=
X-Received: by 2002:a63:343:0:b0:3f6:52e5:edbe with SMTP id
 64-20020a630343000000b003f652e5edbemr22486713pgd.272.1653414706580; Tue, 24
 May 2022 10:51:46 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 24 May 2022 10:51:35 -0700
Message-ID: 
 <CANx9H-AbvivDSi_6oDWRuMpd5+NjwJAFUfrE6f1iLM2s+mzu8g@mail.gmail.com>
Subject: OpenEmbedded Happy Hour May 25 5pm/1700 UTC
To: openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
 <Openembedded-devel@lists.openembedded.org>,
	openembedded-members@lists.openembedded.org,
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004091b105dfc59c6e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 17:51:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57181

--0000000000004091b105dfc59c6e
Content-Type: text/plain; charset="UTF-8"

All,

You are cordially invited to the next OpenEmbedded Happy Hour on May 25
for Europe/Americas time zones @ 1700/5pm UTC (1pm ET / 10am PT).

https://www.openembedded.org/wiki/Calendar
https://www.openembedded.org/wiki/Happy_Hours
https://www.timeanddate.com/worldclock/fixedtime.html?msg=OpenEmbedded+Happy+Hour+May+25&iso=20220525T17&p1=1440

Regards,
Tim "moto-timo" Orling

--0000000000004091b105dfc59c6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All,<div><br></div><div>You are cordially invited to the n=
ext OpenEmbedded Happy Hour on May 25</div><div>for Europe/Americas time zo=
nes=C2=A0@ 1700/5pm UTC (1pm ET / 10am PT).</div><div><br></div><div><a hre=
f=3D"https://www.openembedded.org/wiki/Calendar" rel=3D"noreferrer" target=
=3D"_blank">https://www.openembedded.org/wiki/Calendar</a><br></div><div><a=
 href=3D"https://www.openembedded.org/wiki/Happy_Hours" rel=3D"noreferrer" =
target=3D"_blank">https://www.openembedded.org/wiki/Happy_Hours</a><br></di=
v><div><a href=3D"https://www.timeanddate.com/worldclock/fixedtime.html?msg=
=3DOpenEmbedded+Happy+Hour+May+25&amp;iso=3D20220525T17&amp;p1=3D1440">http=
s://www.timeanddate.com/worldclock/fixedtime.html?msg=3DOpenEmbedded+Happy+=
Hour+May+25&amp;iso=3D20220525T17&amp;p1=3D1440</a><br></div><div><br></div=
><div>Regards,</div><div>Tim &quot;moto-timo&quot; Orling</div><div><br></d=
iv></div>

--0000000000004091b105dfc59c6e--

