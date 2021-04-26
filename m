Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.5202.1619433815750059600
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 03:43:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gj+ppQdC;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: aladyshev22@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id a13so9654359ljp.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Apr 2021 03:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7DWKXWr3N9/Ctm6PkRGatJVfiipFWDzXjRpzTEdSgPE=;
        b=gj+ppQdCBxOcPZUnra9dXIE0otW0WUZ5ss/dg1yA+R0Hdpi8oLVxmeGSsTAgCDIPX2
         q7u5cmAcJB6+8wqkFDTTb3YFbBoyYn4AYi6xpZelDmwEnd1gjg9F8saSsPetoouuyh1e
         ji3xV9u80V3I2DrBpY3kyeqpjeurWXZK1xGVV3PYd86n9n3A1GABnTuYE8HP27+HKS0r
         3Uxrzrc2yN0juU6FD2igAXiglwrRXzGWiaAoUnusEWn0JXdPILvOXWEQA+2krgJ9nvXx
         s+K5/V7jXCKpl8bi2kqmsIXDSD193jEm8HwAnQ/DDGl7WN/88H8k/bunkHPdTjzX5Apx
         Trww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7DWKXWr3N9/Ctm6PkRGatJVfiipFWDzXjRpzTEdSgPE=;
        b=cxjN0/c6kp/g68qZqPUZRRDXqKJVpXWK7J3Cl1kltYZlaOWcYE0NLMcnXRlSJFR70f
         m+ntm6V1u3EWNUlPaUOG5YQtPD4kSaXVrlgiL6iFXBdtfJXqShJyrry1I9yILPRNKzWG
         vNx3J49jkUMzIP/ERM94qIgFqNo7yEcWg58frdxiCLuBKIiq47Lm4q3BQCxVDnnjNr/p
         ZK2M2geEGK0x3SFlcpbwXzDGxkkf0ocrBKYTDQqcMti4V1AWw029HCcf/MC8FpZLeSDT
         NWw7C0weDfQXh2h3+/+Nari0j509N+gSH86taJWiCtEKcf4xKZ0ScRygwkirBC9H/ohc
         4jvQ==
X-Gm-Message-State: AOAM532d73AyjjZV4lChU8EuNxGoEza+z6a4kQlGxEglKM+rajDgORew
	T75N1TTPPeLX9I164OhfRodIRFL2gT+HOwtBTcKvAp28uKHY8g==
X-Google-Smtp-Source: ABdhPJyeKmW4Y68J/gJ2hJC934d7ae60TCDbb4+cVYKD2nhYe5eM7MkWnUSMWeCCHFIXuGhWwrHTC4g5crb7pG0q1Sc=
X-Received: by 2002:a2e:b168:: with SMTP id a8mr12412012ljm.412.1619433813283;
 Mon, 26 Apr 2021 03:43:33 -0700 (PDT)
MIME-Version: 1.0
From: "Konstantin Aladyshev" <aladyshev22@gmail.com>
Date: Mon, 26 Apr 2021 13:45:30 +0300
Message-ID: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
Subject: AppArmor with BusyBox
To: yocto@lists.yoctoproject.org
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
