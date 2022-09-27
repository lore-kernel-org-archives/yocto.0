Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F8AC6FA83
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 22:19:24 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.1149.1664317162218441387
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 15:19:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=isD61RaD;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id
 v10-20020a17090a634a00b00205e48cf845so55508pjs.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 15:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=QVYj1Re5+KGDLfxp874bH0aUQz0+29bha8ilM8kT8iE=;
        b=isD61RaDFscCoHm05I1J9z3VcPRkEE99Zk6Hh1QSVlFTgqaKminWH7ImDVXrJYX8Tz
         SdoyWptusG6l6V7zHOOobu5RXEgMbGO1t/ZSbo1PR20M8x18Y/FdeLifF/PHLjjWduxw
         0fW5dscB9SAdltdTs9aW5u3VOHwgpqbG+0oDJhwH/EqdIZjIK7UQECTkEzJ3/tALfWbz
         ulDjGfPov0gPHC0/X2SWTIKfmUiB5OlPMJql3HY9rr3O5oOaHAHZC1Yp6JUzGuIfZiJc
         +zyfwAyKPwd/NqgjyWylr3h9ujyeOIDwY14WNOjk8UvkoP7nn+qiDNMmahJn+CfL4tL1
         52sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=QVYj1Re5+KGDLfxp874bH0aUQz0+29bha8ilM8kT8iE=;
        b=p1a/GAEkBYsjKD0Wj359UKhLqDqFF3EAdCZUpvWpo/Pv+SbGbsFQjgXgYKlhQ0N01I
         ina3jt/WbOwRF+3Yh1DTu8/CNfGFW6nsb+GVtJU/V5O3zvrMS8DjRjyx6pmp1Wrv6E3S
         i3wfRvnuWwCg2ch5MbJ3Y9I0dMfxbbSg/rrWkFkBmNjjzmgpkLVY4vQkffYhzdgk7+qB
         4xE/yIID3ZhillNWaR7yzufrYyMD6gGMGUlUlDMreCNJnmA27PTCxa18Bri+8+Gnru18
         q98V+MS85JvMVex79E7rBmqfyWPOk045oHrh+LDRf2Q0EfcKgrywRCGbDyrwQWCha+Lw
         FHTw==
X-Gm-Message-State: ACrzQf30OBEYckII43nczwkvML6oEzsG6dY0/7RB2fz6VC0flTWDdYKM
	i8OrA2zOe5NdTiiwieS4uymsfEbo9W5Xa95rbTU=
X-Google-Smtp-Source: 
 AMsMyM6ruq0/TQ8L8UG/gZN/s1Kb7UT4Csibk3F5WGLpmaznsALFufHJIBG5AS9G4YT0f6Vqj9wvX0ScLgYJHNhxcbY=
X-Received: by 2002:a17:90a:8992:b0:202:f6b1:ef25 with SMTP id
 v18-20020a17090a899200b00202f6b1ef25mr6818417pjn.239.1664317161168; Tue, 27
 Sep 2022 15:19:21 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 27 Sep 2022 15:19:09 -0700
Message-ID: 
 <CANx9H-Auue6ofUXyL76ORzF5PRC+hdGAP1nnYjJ=d6KYSzF2UA@mail.gmail.com>
Subject: OpenEmbedded Happy Hour September 28 5pm/1700 UTC
To: openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
 <Openembedded-devel@lists.openembedded.org>,
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002f642e05e9b00922"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 22:19:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58190

--0000000000002f642e05e9b00922
Content-Type: text/plain; charset="UTF-8"

You are cordially invited to the next OpenEmbedded Happy Hour on September
28
for Europe/Americas time zones @ 1700/5pm UTC (7pm CEST / 1pm ET / 10am PT).

https://www.openembedded.org/wiki/Calendar
https://www.openembedded.org/wiki/Happy_Hours
https://www.timeanddate.com/worldclock/fixedtime.html?msg=OpenEmbedded+Happy+Hour+September+28&iso=20220928T17&p1=1440

Regards,
Tim "moto-timo" Orling

--0000000000002f642e05e9b00922
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br class=3D"gmail-Apple-interchange-newline">You are=
 cordially invited to the next OpenEmbedded Happy Hour on September 28</div=
><div>for Europe/Americas time zones=C2=A0@ 1700/5pm UTC (7pm CEST / 1pm ET=
 / 10am PT).</div><div><br></div><div><a href=3D"https://www.openembedded.o=
rg/wiki/Calendar" rel=3D"noreferrer" target=3D"_blank">https://www.openembe=
dded.org/wiki/Calendar</a><br></div><div><a href=3D"https://www.openembedde=
d.org/wiki/Happy_Hours" rel=3D"noreferrer" target=3D"_blank">https://www.op=
enembedded.org/wiki/Happy_Hours</a><br></div><div><a href=3D"https://www.ti=
meanddate.com/worldclock/fixedtime.html?msg=3DOpenEmbedded+Happy+Hour+Septe=
mber+28&amp;iso=3D20220928T17&amp;p1=3D1440">https://www.timeanddate.com/wo=
rldclock/fixedtime.html?msg=3DOpenEmbedded+Happy+Hour+September+28&amp;iso=
=3D20220928T17&amp;p1=3D1440</a></div><div><br></div><div>Regards,</div><di=
v>Tim &quot;moto-timo&quot; Orling</div></div>

--0000000000002f642e05e9b00922--

