Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.1934.1628556526562717573
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Aug 2021 17:48:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJmSW1qI;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id m193so33038166ybf.9
        for <yocto@lists.yoctoproject.org>; Mon, 09 Aug 2021 17:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Ud8Lx1J2wQcvQQsyxpnRIMC/ggV8jHZy0lF1vSGIQZI=;
        b=YJmSW1qIC1OSylboGJfaOdJlRxV2RdN+0DdBZAcNyQ8c0yz0q9hz0cTotiEXWwZrJ4
         GYqjAMiPqXjYNfgRVgotCeqcnfN5tbAH5rhIQgwxbNI3Dw6khMZH+uZJGLRdzR6ORyA4
         GG1klXVWEdTAvJhcZpLwWCzJ5ildxesBJ3B0KKPSK5r/viC64BDTYgtzx1aNNRPiZhur
         O0yp9/uImeJLckmJsIhJKcHrEic9bXWaPqnuilIVApKGezqvikJYJGejcm7pTp0JaXgv
         VxBc2aL8tIx/SMv3U/igQXjsRiDjGD3Hpb6T+cifHzzjh6QCezNQYiXwxcV37qmW04lA
         iuRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Ud8Lx1J2wQcvQQsyxpnRIMC/ggV8jHZy0lF1vSGIQZI=;
        b=tWqjEwKFVOexlGguBNLgjosf7XukcF82ZoBtMjgn95KkcHgux/bNpIAjaAILCHeEgX
         V8+fc9k2zEHidImDZ/JuHTDclg+d2/sT4Q/+FV5lpJ4Ni7yRzu7dUx5x+xfKxBlc1rVe
         dkVKFIVmrJuSeRC5PlQyj1Wx1IZ8XLPh5Uc9RrjWTg0nAPtknUW3dhjFjM12Mq8vTM+0
         dh3pB63POLkHF0X6LpI/JFzRsH/v4kzLQD74Uf3uyOaRuq1R91a7WphGeCFku3fiXS1R
         28v4JhykHKMkeKZiFzsvSsTTqcxZmZ0URhpzNVZW/4QaYSE4/biSiy1jSUPkUFuTa101
         Pw5Q==
X-Gm-Message-State: AOAM531ShMMPYGWo5J6BL2FO1UIgh7v6uqSzedPvi+RFsvBesn/7tdCX
	/YbvL1FiXWKgwr/fND/2o1agdu1QuRn+wApX7XFrfWp1YH+Fpw==
X-Google-Smtp-Source: ABdhPJzETmqqDHD/KU5wRYBw6XxyparoGGXySXtviQ+7LiW/8Tfv2InutpBQkeekDBVCDtUUAn71/IhJfDPaVPY/Lis=
X-Received: by 2002:a25:ac18:: with SMTP id w24mr36951760ybi.289.1628556525602;
 Mon, 09 Aug 2021 17:48:45 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 10 Aug 2021 10:48:09 +1000
Message-ID: <CAA=hcWSW6yT+u-PRw3UwwzfuLkLJybzABD-S+6qoF2YtnTpMbg@mail.gmail.com>
Subject: What is the best way to get Environment variables setup in my shell script for export PATH?
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Please correct me, but I think the system environment set up in Yocto
Linux may not be the same as other distributions. I have a shell
script to set up export PATH and LD_LIBRARY_PATH, I want to avoid
putting full path in ExecStart and all of my shell scripts

ExecStart=my_measurement.sh

I have been thinking of the following options, but I am not sure which
one works, if the syntax is correct or not, which one is the best for
common practice, appreciate your advice.

(1) Setup in all systemd service scripts

[Service]
EnvironmentFile=/usr/bin/my_export.sh
ExecStart=my_measurement.sh

Is the syntax above statements in service scripts correct? Will it work?

(2) Add my_export.sh to /etc/profile.d

That one works for Ubuntu, Debian and CentOS, will all Yocto systemd
service scripts pick up environment setup from /etc/profile.d
automatically in Yocto Linux distribution?

(3) Add my_export.sh to /etc/default

Some distributions automatically pick setup from /etc/default, does it
work for Yocto Linux for systemd service scripts to pick up
my_export.sh setup from /etc/default?

Thank  you.

Kind regards,

- jupiter
