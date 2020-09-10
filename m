Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.27307.1599758360309592819
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 10:19:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VLDIRlvg;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id g3so5451141qtq.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 10:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=K7qZxmYfLYv/r7kuABEE517lpklycmtpYErMwpVXZKE=;
        b=VLDIRlvg65W1W29nONkpZ55mxtI9jUEXpBTd3v7w9aoFcIAjAC78DgsWQcg/7u1wje
         y9qPMakURKM7JA5ER6m6Ss31W0lmvTRtGTuDbNGnCMp3xWkQpFXFrnHHBfG73paKlJ3K
         jHU8BRVHbMB7EyS5QLpD3LPV4NhMpSuPKI7ftKRRaF1sOhlZHZ+AR1q3H46jTklnn8qA
         ZC2b0usbqS8BBOSXKEzuMXWQoyLSQUKxrsi57quyErEDbGl/Ot8Gjp6WEoob4p67OKdQ
         /YnICL0iQD9LFj/17WuSXBs3qO13payAyWIC1RsLwdUTvYt5hHbEAMxD1GlWrGseic2H
         5yIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=K7qZxmYfLYv/r7kuABEE517lpklycmtpYErMwpVXZKE=;
        b=fMESg+GgqijfVdnJRzTlmMNb1fW9PeFUtwKpagyCELQYZoAdtmQr/xOjv8ZGKBELGQ
         je4qchbPnipDgyrixK45OYSSfYGnpk85nfJD2592H0Z4DQos8k/3a4prS6HbDe4dn/G8
         lAB7NFQkDAMmLE8IN7wBp0eWmQZY3TTToZhvrxliFCZgUfM4hxvY+HMknmJfmHWZm4oj
         IVSQV/wmiWulevt1jAQYS6tBjKW7rUF6WHozto7Jb6tuEq2q3XFnDBIf6DMDvgnob62b
         eQ7ULN7wkzrZa97cD84gxEFs9SF81K2aVeJDTCz9F9M7P+emKrqrv5pqI8wNaZeQzeka
         jceg==
X-Gm-Message-State: AOAM532iRzyC938/7SkTYQWNX36EGX2D6l2Wu7gC8C1uy6JXd3/8xBT4
	h8NM9XSPlBm9m1Aj57HNkAIgzxPwP497jt3ydZY=
X-Google-Smtp-Source: ABdhPJzfF4BhssamEeq52wqrUpsLUbku0rcvJiOnG0UTAVj++/Bl9NpsCgrdtKfVVb7Svx1cAyLQh7kzVL9dgRB76vo=
X-Received: by 2002:ac8:72d6:: with SMTP id o22mr9072366qtp.53.1599758359243;
 Thu, 10 Sep 2020 10:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.163328BFD191E99D.22921@lists.yoctoproject.org>
In-Reply-To: <MADEUP.163328BFD191E99D.22921@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 10 Sep 2020 10:18:53 -0700
Message-ID: <CAMKF1srHH2rMbXymC735jrDmWtNhzt_6K_nd9p6uJ-_ZvJjnKw@mail.gmail.com>
Subject: Re: [yocto] #sdk #yocto Appears SDK searching host for files that are only present on target side
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

its looking for tools in sdk dir, which is normal. I wonder if your
apps cmake files should be using CC or CLANGCC to do linking.

On Wed, Sep 9, 2020 at 8:58 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Looking to understand why the SDK is searching the host/native (x86_64-p=
okysdk-linux) side when it should be looking at the target side (corei7-64-=
poky-linux) =E2=80=A6
>
>
>
> All the =E2=80=9Ccrt=E2=80=9D files are present under the target side.
>
>
>
> Can someone explain what might be miss-configured ?, or better, point me=
 to a possible patch ?
>
>
>
> I have seen some talk on-line about similar issues, but no clear indicat=
ion what the issue was, or how it was resolved=E2=80=A6
>
>
>
> I am running Yocto clang 6.0.1, cmake 3.8.2, under =E2=80=9Crocko=E2=80=
=9D, my SDK is a standard SDK, not extensible.
>
>
>
> 11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>make
>
> Scanning dependencies of target gbeinterp
>
> [  0%] Building CXX object backend/src/CMakeFiles/gbeinterp.dir/gbe_bin_=
interpreter.cpp.o
>
> [  0%] Linking CXX shared library libgbeinterp.so
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
crti.o: No such file or directory
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
crtbeginS.o: No such file or directory
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
-lstdc++
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
-lm
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
-lgcc_s
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
-lc
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
-lgcc_s
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
crtendS.o: No such file or directory
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find =
crtn.o: No such file or directory
>
> collect2: error: ld returned 1 exit status
>
> make[2]: *** [backend/src/libgbeinterp.so] Error 1
>
> make[1]: *** [backend/src/CMakeFiles/gbeinterp.dir/all] Error 2
>
> make: *** [all] Error 2
>
> 11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>
>=20
