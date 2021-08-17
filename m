Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web08.34064.1629166736541178176
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 19:18:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b2yjeVB+;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id a126so7700532ybg.6
        for <yocto@lists.yoctoproject.org>; Mon, 16 Aug 2021 19:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=uf+37kGVqfF6muMck8vbj4kg2LvXdWIPv4nQIRR9k5Y=;
        b=b2yjeVB+laFnpKco8a6nnpRmG7B7aFmXKK7uQsw6l7gN9mGaoPR01X5ragt+3XIib+
         mrzXj7duqpanI/DAqEJ0tXvJKE0ZrKsKgHTa9ug5vH8YZbAcV8xGzDdxqjx0TfNqmoms
         xW0dnn8IlA4na+wGErkX3KMzz/9Jw6GYO1UOW0Wpx5FYX7svbBVS1T4GNNxJW5p9rh1e
         7ETfukg41PnxjQRuILunWnLGBTCAkPa/kKiURv5rYt3wH50oZOU8LJ7IF3IMiOpCpz5D
         QunuIM8MRAAvufjaP+EKfGiKQ8Xy7kldKcjPabP/7FIJdn6pbjKvxXewIkmn+9iP2FE9
         Rk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=uf+37kGVqfF6muMck8vbj4kg2LvXdWIPv4nQIRR9k5Y=;
        b=RV1aaH1vH/Ti0damWl2nZvMvJuJhtX24q0XmZdCby+pYUaRTKMTzKiKAzyjzwMVlYO
         AHOwxI6ObHfQv3Y6+mjKwk6UwX41UBUScfPM/bVwQ8Er0zuf/FTBuSjpEqlnRNCUyUvu
         jNazw3IY50BNCLGSCC4pQ/ofGJl0aEx9RmyCCX3Lm2kZOW9ZgpuryzzQ8z6W1a8MJhWW
         sxnYH45PLrLgiv/M74gHD59QQJLh06oMC8CjAHniCbbwQl+zmFHOWucniKu1hYdG+q4k
         kvP1a3FLqobSzCqIWiwIFLUgwpovOtpNC+x6UQC9Hou+VvbtB7hOeN6LTL1Gj5utOTIO
         Vrmw==
X-Gm-Message-State: AOAM532X1DPTyTi/ePGSLBHDZAVUjdYRh8Hn/ENNcXJLTBHkNp8T80af
	yCy3DcYVyXNO3LKa/UZMraDyp7d0748lpIl3msraG/oo4oQ=
X-Google-Smtp-Source: ABdhPJzzNBlHPTZBVdKMXIwZ0K+rjINsmhmFnJFkWQ4VVYTYv2Iqq5ZhlvAc06Q0x8BiuKrfeLtbHlgX4ERRtuLRyYc=
X-Received: by 2002:a25:9ac6:: with SMTP id t6mr1499105ybo.190.1629166735525;
 Mon, 16 Aug 2021 19:18:55 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 17 Aug 2021 12:18:19 +1000
Message-ID: <CAA=hcWTy177KCeQaFdzeXYM=0Sga_PgGHRh=ZuVjxiDLtz-v_Q@mail.gmail.com>
Subject: Hardknott systemd-journald issue
To: yocto <yocto@lists.yoctoproject.org>
Cc: oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I've just upgraded from Zeus to Hardknott with the kernel 5.10.59, the
/run/log/journal was running out of space and crashed, is it a kernel
issue or Hardknott build issue?

I never seen that issue in Zeus, I thought that systemd-journald
should be capable of detecting the space, if it is no log space, stop
writing rather crashing the tmpfs

[13749.397288] systemd-journald[97]: Failed to open runtime journal:
No space left on device
[13749.439047] systemd-journald[97]: File
/run/log/journal/4ba2cd613d004916863e30730800bb69/system.journal
corrupted or uncleanly shut down, renaming and replacing.

Thank you.

Kind regards,

- jh
