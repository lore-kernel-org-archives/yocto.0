Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.5006.1619432864616374555
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 03:27:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=K5nro4ep;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: aladyshev22@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id n138so87634144lfa.3;
        Mon, 26 Apr 2021 03:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7DWKXWr3N9/Ctm6PkRGatJVfiipFWDzXjRpzTEdSgPE=;
        b=K5nro4epazha8PfpAoaYzYEdsoLLzumUFPQ4pch+yz+I9o9hsKpKi5+S/Ft+9XVMSg
         m5poCQ9Luu5Wa20IWqSqzPG/g3KhzRazZV4XjmWlcM5jU1j/feS+rRHTiS5zh69QzyL5
         9JuVE33wDUw5Nf7+ihhbNUgcXcAtSQV+ypBrHCK74Imq1DQ0oMb4WA2rd8QfuvNxFNaB
         Uplal5nai5Dsro8MpAqU+KuE5PaCu0uJWDzl4gOIAs7Zr7S+o08KBTX1Kxwd87boLfxl
         ZBj5KOv4ZuP/4N1zUcf1DR7SpGYharaCcMznuDu+AX6zjOpCKcgKu6zcml2JqaUD1Knj
         6Uqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7DWKXWr3N9/Ctm6PkRGatJVfiipFWDzXjRpzTEdSgPE=;
        b=rXqx9hRcIZxV2JSOc3hXUbMYw1WNLpHMjjLM6KM6SRMTFdAd34ClHA9wCZ3EOhkRop
         3KmSMUijy6U6Rj6t11ZOkXF047UXBBDks1tMaPSF1/CrIYC6RsaCsm0gfKEDBxyNaBD/
         A60kEYH5IbifhxhMeUr8VWt2B3lZfAUusQLjBwa5PYGBCvAIt94KRYRVCM9AQoXn3YTN
         LWWA+tmJW+WKf8Rj+wJ1N2nxK/2O0a5g+QlzAfz5OrVLaWuYqQyI20Qvn/GHG/P8c3vV
         WCDcC1OQPL7axaTvAm67dl2LtqXC4WmC4WYyQXlP8Job/m3o3SukqJH4kBmwuiXccj0A
         Zl4w==
X-Gm-Message-State: AOAM5313wJstfx28xEtDuln7nY0E/Y9fEbXdKBKqO4lm+AlxdApAvBml
	Ge070uuvBalf1Ad41cUvWTLgvDYdjHTpxmm2+8P0fxX+UZgeSw==
X-Google-Smtp-Source: ABdhPJwRqUe5iM3+RBeeeGPKi0TbvRSZIhxChgpwRq8M1dgTlr06v/fGeBWJHc6Lhe+VFdRAUhpajxO0ZS/51ZXZJ/A=
X-Received: by 2002:a05:6512:3087:: with SMTP id z7mr11925982lfd.285.1619432862099;
 Mon, 26 Apr 2021 03:27:42 -0700 (PDT)
MIME-Version: 1.0
From: aladyshev22@gmail.com
Date: Mon, 26 Apr 2021 13:29:39 +0300
Message-ID: <CACSj6VWHwj-t37BpGr57sbP8WL4iOM2i8hRdsrLLNGGeq5HwWg@mail.gmail.com>
Subject: AppArmor with BusyBox
To: yocto@lists.yoctoproject.org, main@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I'm using the OpenBMC system (https://github.com/openbmc/openbmc) and
I've tried to enable AppArmor functionality from the 'meta-security'
layer.

To achieve this I've added these strings to my local.conf file:
DISTRO_FEATURES_append = " apparmor"
IMAGE_INSTALL += "apparmor"

The AppArmor functionality was installed to my image, but
unfortunately I've come to this issue:

kernel: AppArmor: AppArmor initialized
kernel: AppArmor: AppArmor Filesystem Enabled
kernel: AppArmor: AppArmor sha1 policy hashing enabled
systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT
-SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT
-GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
-PCRE2 default-hierarchy=hybrid)
systemd[1]: Starting AppArmor initialization...
apparmor[113]: Starting AppArmor profiles
apparmor[128]: xargs: invalid option -- 'd'
apparmor[128]: BusyBox v1.33.0 (2021-04-01 10:05:19 UTC) multi-call binary.
apparmor[128]: Usage: xargs [OPTIONS] [PROG ARGS]
apparmor[131]: /lib/apparmor/functions: line 76: echo: write error: Broken pipe
apparmor[131]: /lib/apparmor/functions: line 76: echo: write error: Broken pipe
...
apparmor[131]: /lib/apparmor/functions: line 76: echo: write error: Broken pipe
apparmor[131]: /lib/apparmor/functions: line 76: echo: write error: Broken pipe
apparmor[138]: xargs: invalid option -- 'd'
apparmor[138]: BusyBox v1.33.0 (2021-04-01 10:05:19 UTC) multi-call binary.
apparmor[138]: Usage: xargs [OPTIONS] [PROG ARGS]
apparmor[142]: /lib/apparmor/functions: line 92: echo: write error: Broken pipe
apparmor[142]: /lib/apparmor/functions: line 92: echo: write error: Broken pipe
...
apparmor[142]: /lib/apparmor/functions: line 92: echo: write error: Broken pipe
apparmor[142]: /lib/apparmor/functions: line 92: echo: write error: Broken pipe
apparmor[113]:  failed!
systemd[1]: apparmor.service: Main process exited, code=exited, status=1/FAILURE
systemd[1]: apparmor.service: Failed with result 'exit-code'.
systemd[1]: Failed to start AppArmor initialization.
dbus-broker-launch[152]: AppArmor enabled, but not supported. Ignoring.


From the way I see it the problems start from this output:
xargs: invalid option -- 'd'

This error comes from a fact that `xargs` from the `busybox` doesn't
have the `-d` option
(https://git.busybox.net/busybox/tree/findutils/xargs.c)
but this functionality is used in the file:
https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/tree/recipes-mac/AppArmor/files/functions

Once I've discovered it, I started to wonder if I'm doing everything correctly.
Is my issue a simple bug, or AppArmor is not supposed to be run in an
environment like mine?

Best regards,
Konstantin Aladyshev
