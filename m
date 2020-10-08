Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.8599.1602150687940743314
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 02:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AwpV5dkQ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: balazovic.peter@gmail.com)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D745D38C0889
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 02:51:26 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id 67so5527935iob.8
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ophiGgqAV+Genlede+Qw01rIleKYV8DC+T3zdX3N5x8=;
        b=AwpV5dkQ4jf+A7F9yBBNJkTjaB+dl/zd77sC2PnDNm9MlKKHnFzm0nRth51vXO7KDi
         hSWKhvhq5OgtM0CmXRgPKrwttq3U75aA3Dvj4RMejZLWJkmrSZra6nzjAxBGY+lNbbMk
         EtE3Ftiw2uVJk8Sv8BOQcWLEPbO7y2c9CzCpvnomAdqmmShitsrqOi+Jx1FajSUL/R3o
         mXDIa8/8IADcPlEbeU6PuLj14n/1xG3lpkES8mzOo9NC3HDHnZewWvme9D73JS5bmrJ+
         NJWQ3e1jC2cgq8ira9/kVEDUdSxXbUtaE80OuCYeCKRPnER8JnoxKH+fdrETUadoLc8I
         mn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ophiGgqAV+Genlede+Qw01rIleKYV8DC+T3zdX3N5x8=;
        b=GvxtlywTRx2/Lgf4XPHE02hz2NDUkERl+YyjOJpZ5CS6PKuPb4KT5liW5A+daV+GSU
         4fdtetFRPMO4++ritFRBo8yTXH/fCX5YT35T6NWv/IyTzr1jQxVAXu/cxJ8/cEYorF1M
         NcTEbv4Yq3OwWWqh80yKapKJIn3Wli6gGeugFZc/C86SU7nKvqHZt2l266tJB9k2S9xj
         3JOuXJx3zSRNEEP3GOLKEtbcRUCO+rMm0kzKWcOMKtwNlRdNQR4oChj4+VE2Yok/zDmq
         Co+ftTcoINMuzjO2Es/pHIQSMSeeRjuwsAFrD95zJJhqTgEb5GrgGaFzX0zCeX2Fc15w
         T0mw==
X-Gm-Message-State: AOAM532FUhi9QfVwHSlNl84kaz9VHz86mHt4ITBxJR2OE8cuUUd2VIjI
	MCvzAifmDBf8/cgl3DZtU7dRI3EEikcwZRbhRltiS2fxo2WAbA==
X-Google-Smtp-Source: ABdhPJzY4I2b2JPsoW+MT3AwutOZMFkcJdtDygM+PPHKf8kDPzEpF868/5qBUM5N+UFBdRAk8Vp+SGkYgGnbX96TV4g=
X-Received: by 2002:a5d:97c2:: with SMTP id k2mr5499349ios.9.1602150685906;
 Thu, 08 Oct 2020 02:51:25 -0700 (PDT)
MIME-Version: 1.0
From: "Peter Balazovic" <balazovic.peter@gmail.com>
Date: Thu, 8 Oct 2020 11:51:15 +0200
Message-ID: <CAFq4t4i8VoPepAnDFEjQ7unNS13tyY_X=z-=iPaiWBDDfqX38w@mail.gmail.com>
Subject: Application development under WSLv2/vscode
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000829c5205b125c6c4"

--000000000000829c5205b125c6c4
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm using Windows Subsystem for Linux, where I have Yocto build project.
I'm using VS Code trying to compile but I use "source environment ..." to
activate the SDK. How to activate the "source environment ..."
automatically either during the start WSLv2 or before VSCode build
(Configure Build Task)?

Thank you.
Peter

--000000000000829c5205b125c6c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m using Win=
dows Subsystem for Linux, where I have Yocto build project. I&#39;m using V=
S Code trying to compile but I use &quot;source environment ...&quot; to ac=
tivate the SDK. How to activate the &quot;source environment ...&quot; auto=
matically=C2=A0either during the start WSLv2 or before VSCode build (Config=
ure Build Task)?<br></div><div><br></div><div>Thank you.</div><div>Peter</d=
iv></div>

--000000000000829c5205b125c6c4--
