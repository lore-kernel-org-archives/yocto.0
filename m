Return-Path: <vedingrot@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F92CFED9FD
	for <webhook@archiver.kernel.org>; Tue, 17 Mar 2026 17:44:22 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.82101.1773769461363856247
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2026 10:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OuVJ9ebD;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: vedingrot@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ad617d5b80so42928765ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2026 10:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773769461; x=1774374261; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BEgtcSPuf0EoNGCL4IJmkB4v6gVSv6LZEQ2QZEFM1t8=;
        b=OuVJ9ebDBUiEumUOFS9d0uMLdrzhaD3USQ7bB1TZZsKTLadW9CFjAAmD+bnL3cQ8fK
         90sgchMElwf+3SbJNPbale6r37bCwuH4msZf0jbOPAgUZRRF0HtYqpno8fBsUyE6QWv+
         shoQ+SilGWAqgD6wS1gS6itG8PU3WkQu54HqEMIozTC30HzM1a1WSn9wBD/xuQtzdR0d
         w0R7FgpguUi8meApS4pgVZjiugEprRaVbpFDjKVlCjyjno3vBsBKXMPJeg/w8ZubQh4h
         3CIQFqlaHlS7QIeOGVCOa4+KSh7GJaQDtUOsRFA/s+CY1k68Qx2+CS6o02YKfWOXxIPP
         05LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773769461; x=1774374261;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BEgtcSPuf0EoNGCL4IJmkB4v6gVSv6LZEQ2QZEFM1t8=;
        b=CSnSDOxpwAVFMiu8uOzD5W5L22+2Ew72rxZ6rP6g07i8l7nOSL0fMFjRN9lqZFkAcB
         Mk0UNgqFgcXCjXMfymtbNjlytdNL5Qk4IKXZmXaORyNlEo/QEjADqpy4pcwudTRD/xvw
         jr9YZY5vJ1GqmxVvU9jPZH3Q2k55hLu9Jh8Usw+h7h0Guw6y7bI0HMNOMMkrATYRIg7Z
         kRI1A7r1wTMbNJsDepDDsnZ85mafwlHoU+jW95WghARuFNskI+owfZqJrhd9ZJj+Aa9R
         2UDqvT+ZolxBZmlRrEWTYUB8MF5DCHGLB4/SwJjPvTvIO4y5RQeUwMSGIsJ5sWQGWC2K
         9UQA==
X-Gm-Message-State: AOJu0YxNo3nMyo7/DiKl9ZKsRuaB1tb5Ogx7o/aTuyKaQStB4V9+eAqG
	UrndJvnPBVvCbk+Mj2/NGsFCv+d/fmvOQ4YwpXerUPJxvwRsn8rBczRMxGf54A==
X-Gm-Gg: ATEYQzyBKbrw6qoB/F5nj93J6yv3S5K1D7yZQDY/nV3iawseFNRuwAu1jcOEthF3gBj
	4T859ClZo0p5T0Oz8MTk1CucY3Ax1FRmhtP4L1HZXSEffJG9WPDfDR+NAO5QlCe6GaCyg2mJJS1
	9S/KsaU7tC4HPIys1hYHXrLXpa55Pa1RdVx7CNLv9x3AgHBBCAuknlt60HCqzomARCmbMQLfzsc
	s2fUBZG5tiGSKm6gpyXHK32S9QcYzAG9v85/MiDbVFFzrTUGcvxKnrxv7bkeBhOI+mTLpR7v0lu
	LlTtRcM55qMvC1SguaE0vdaQTTkzou+4HANZQzl2qJq/NZ50aj4XNl5iSIwNJcsKm8+OsDHFUvs
	Hkbrvqe88wYnhQmiXT4PviIBGQxvVd8walXSJuFrv20dI0nzktCQ3iWoQZPKXTeAD86lvWTT4+B
	z6DphgwI3uPeQ+DAWK+BFujXTFu8MZs1O0S8tZUw==
X-Received: by 2002:a17:903:2282:b0:2ae:6579:4795 with SMTP id d9443c01a7336-2b06e35b4a0mr3452455ad.21.1773769460444;
        Tue, 17 Mar 2026 10:44:20 -0700 (PDT)
Received: from silver ([1.47.17.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e454a8fsm1592465ad.37.2026.03.17.10.44.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:44:20 -0700 (PDT)
Date: Tue, 17 Mar 2026 17:44:16 +0000
From: Egor Shestakov <vedingrot@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: m4-native configure fails
Message-ID: <abmS8Bk0sFZOKY2f@silver>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2026 17:44:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66342

Hi, List!

I'm trying to follow the Quick Build instruction under ALT Linux, build
fails on m4-native do_configure(). Do you have some idea what is could be?
It looks like a missed dependency but gcc in the configure script uses
sysroot.

Part of config.log:
```
configure:6795: $? =3D 1
configure:6815: checking whether the C compiler works
configure:6837: gcc  -isystem/home/ved_b/yocto_build/bitbake-builds/poky-ma=
ster/build/tmp/work/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/usr=
/include -O2 -pipe -isystem/home/ved_b/yocto_build/bitbake-builds/poky-mast=
er/build/tmp/work/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/usr/i=
nclude -L/home/ved_b/yocto_build/bitbake-builds/poky-master/build/tmp/work/=
x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/usr/lib                =
         -L/home/ved_b/yocto_build/bitbake-builds/poky-master/build/tmp/wor=
k/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/lib                  =
       -Wl,--enable-new-dtags                         -Wl,-rpath-link,/home=
/ved_b/yocto_build/bitbake-builds/poky-master/build/tmp/work/x86_64-linux/m=
4-native/1.4.20/recipe-sysroot-native/usr/lib                         -Wl,-=
rpath-link,/home/ved_b/yocto_build/bitbake-builds/poky-master/build/tmp/wor=
k/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/lib                  =
       -Wl,-rpath,/home/ved_b/yocto_build/bitbake-builds/poky-master/build/=
tmp/work/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/usr/lib       =
                  -Wl,-rpath,/home/ved_b/yocto_build/bitbake-builds/poky-ma=
ster/build/tmp/work/x86_64-linux/m4-native/1.4.20/recipe-sysroot-native/lib=
                         -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-=
linker=3D/home/ved_b/yocto_build/bitbake-builds/poky-master/build/tmp/sysro=
ots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2 -pthread conftest.c  >&5
x86_64-alt-linux-gcc: fatal error: cannot execute 'cc1': posix_spawnp: No s=
uch file or directory
compilation terminated.
configure:6841: $? =3D 1
configure:6882: result: no
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU M4"
| #define PACKAGE_TARNAME "m4"
| #define PACKAGE_VERSION "1.4.20"
| #define PACKAGE_STRING "GNU M4 1.4.20"
| #define PACKAGE_BUGREPORT "bug-m4@gnu.org"
| #define PACKAGE_URL "https://www.gnu.org/software/m4/"
| #define PACKAGE "m4"
| #define VERSION "1.4.20"
| /* end confdefs.h.  */
|=20
| int
| main (void)
| {
|=20
|   ;
|   return 0;
| }
configure:6887: error: in '/home/ved_b/yocto_build/bitbake-builds/poky-mast=
er/build/tmp/work/x86_64-linux/m4-native/1.4.20/build':
configure:6889: error: C compiler cannot create executables
See 'config.log' for more details
```

Also, I have some strange failure messages, although they don't look fatal.

```
gcc version 14.3.1 20251017 (ALT Sisyphus 14.3.1-alt2) (GCC)
configure:6795: $? =3D 0
configure:6784: gcc  -V >&5
x86_64-alt-linux-gcc: error: unrecognized command-line option '-V'
x86_64-alt-linux-gcc: fatal error: no input files
compilation terminated.
configure:6795: $? =3D 1
configure:6784: gcc  -qversion >&5
x86_64-alt-linux-gcc: error: unrecognized command-line option '-qversion'; =
did you mean '--version'?
x86_64-alt-linux-gcc: fatal error: no input files
compilation terminated.
configure:6795: $? =3D 1
configure:6784: gcc  -version >&5
x86_64-alt-linux-gcc: error: unrecognized command-line option '-version'
x86_64-alt-linux-gcc: fatal error: no input files
compilation terminated.
```

config.log:
https://pastebin.com/vaBmnqhk

log.do_configure:
https://pastebin.com/7UkJwtjh

Thanks in advance!

--=20
Egor Shestakov
vedingrot ascii(0x40) gmail ascii(0x2E) com

