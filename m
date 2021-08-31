Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.2124.1630392107255647028
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 23:41:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pky5VZ6H;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id l18so29890365lji.12
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 23:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uK1Boxz3QKjIQiqdSMIoVNjH91Ug9XmdyJleigo3RUg=;
        b=Pky5VZ6HoZDysR+q1umJd0lBdQoo2MFgh10CzGnlPxmJSKRuEO2hb3MGw/pOzHhzGa
         LZMidPW30Lw/c/WzhBpQMtdQ5nQtRkVvs0ejFChLZ06ugLdUQdVILoZSN+QYZvzAdw36
         rfRxFwME6jFQjtU9fPwMWWUgNxuX9/RZkgn/HFqF8h86mVYmlTtL6PpQ0iExsa+j8MjD
         h0GbaPkqDggrzEaREJKikvQrudVQbFidM6+qjm1CkKuJSvBSex8gUNjwqYVaG/yKkYcX
         7e3mk+iZXVsTN7Ia/FyjM5JVgWpcCo/H0L8Ts94SVHLyGgYmWLggvay+Iz2HypMGRDmY
         nm2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uK1Boxz3QKjIQiqdSMIoVNjH91Ug9XmdyJleigo3RUg=;
        b=T8kpxZeSkVDOnleNjXpVpDNh1IVOXTF7Zmyqglw+pIq08afj1WcqwqJGVq6DsOiBu3
         RRJl82zeSnXQcLU9DA2TovLQaZQKP9yguyhN05/A6fKHfAyuf3OJwY0hcnC7El3zKTCf
         mffA3OyO2gM3q5YwkyUyiDrtg0gGERNMf+Mo2m4ttSav9gIjlHE7K2Wp5ogXKQJmVHdx
         Ms+z2FUoalbY5SCAGqCiQ4VIrEgtqfI3cGylnQVc2+aCUa6XP74G8owbtE6JPlunERT5
         wCcaixpsofQglM/ubG8HAc8dAT3K0Vm/S+9yNc4sevpzOPMokbFY4ANkBcdBkfl85VMX
         hrUQ==
X-Gm-Message-State: AOAM533fSL7z7WYVSdkinYs8nGFRjy5ArzErOWJZoSxXcvZv2iW5Dl2W
	ACpp5NUeIgNeZQoLVvwF513nrgfduVHGfmPoIgKE32tla9o=
X-Google-Smtp-Source: ABdhPJyhzzCnFLIG7ikovRdGRKLGnT09N0L6Z4R14mC/HBZ6i1qEZHfhAFlF15F9Fy9vAcrZykqPHpzabJCuzCGZ37o=
X-Received: by 2002:a2e:b551:: with SMTP id a17mr14567790ljn.128.1630392104640;
 Mon, 30 Aug 2021 23:41:44 -0700 (PDT)
MIME-Version: 1.0
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Tue, 31 Aug 2021 09:41:33 +0300
Message-ID: <CAKAnv4G_EQ56PqvP0aO1g+JfzMZTrsTGLLXCiqE0xzg3arQyww@mail.gmail.com>
Subject: editing Makefile after configure stage to disable -Werror
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, I have the following error:

../../elfutils-0.166/libelf/libelfP.h:53:30: error: =E2=80=98__elf64_msize=
=E2=80=99
specifies less restrictive attribute than its target =E2=80=98elf64_fsize=
=E2=80=99:
=E2=80=98const=E2=80=99 [-Werror=3Dmissing-attributes]

i try to solve this by patch:

diff -Naur elfutils-0.166_orig/libelf/libelfP.h elfutils-0.166/libelf/libel=
fP.h
--- elfutils-0.166_orig/libelf/libelfP.h 2016-01-12 15:49:19.000000000 +030=
0
+++ elfutils-0.166/libelf/libelfP.h 2021-08-30 19:38:44.866175082 +0300
@@ -48,6 +48,8 @@


 /* Helper Macros to write 32 bit and 64 bit functions.  */
+#pragma GCC diagnostic push
+#pragma GCC diagnostic ignored "-Wmissing-attributes"
 #define __elfw2_(Bits, Name) __elf##Bits##_##Name
 #define elfw2_(Bits, Name) elf##Bits##_##Name
 #define ElfW2_(Bits, Name) Elf##Bits##_##Name
@@ -632,4 +634,5 @@
 #define INVALID_NDX(ndx, type, data) \
   unlikely ((data)->d_size / sizeof (type) <=3D (unsigned int) (ndx))

+#pragma GCC diagnostic pop
 #endif  /* libelfP.h */


But the patch does  not work, error appears again.


i try to add --disable-werror to configure flags, but i have follows warnin=
g:

configure: WARNING: unrecognized options: --disable-werror.


The only solution to the problem I could think of is editing the
Makefile after configuration, please tell me how this can be done?
