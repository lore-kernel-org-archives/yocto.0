Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web08.82422.1629457060754604125
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 03:57:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NLI+OYuJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id n126so4772265ybf.6
        for <yocto@lists.yoctoproject.org>; Fri, 20 Aug 2021 03:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=90dqmYXiP7KTrX7xxA9WW8zxnzQL0Q5lhT6EYg/L/xU=;
        b=NLI+OYuJtEiACNvk3JGs8YJPzJ6p5QRDfvmluOEIZPuuxaGXiNCxPOC2Z3a6QOB6Xy
         9tzPOl+uFXKrfdGFBEJ/b6NQ2fdGGxGXRn08N9ECExqtszGVv7BRYvnRZRnv1GL3MQOD
         mQ37rojCU5dx6AGZP+awzTEQo7OnQR+4OKbyFQtlPYwAvYMwWvcF6bEeKVmbnI155/6M
         aD1UAeIwCfuFXnts7/HzOOBhibZZJQ6qnR9RCr2AXQ41nzWO06jJqezg71VeoMKnNL8R
         HSFKujPt8TCQiCjAmIqX7DAhWtlBXyGti3rCqC20EB6bzwG6ssyLPeBIWIcYA2FkTscQ
         ObFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=90dqmYXiP7KTrX7xxA9WW8zxnzQL0Q5lhT6EYg/L/xU=;
        b=KAyHy3x3fO188ejqeG20iRjueivdpIHpFvI7ygXcyMjwmFnEeCZuXvstdHl/mNtqfh
         HyT+Yhw5ThKlwBnHDzfMcUCPuK2BHA3itTS6WrqJFdpGZB3k91tvXljSGNIHjb/+3cp4
         0bfOC4abkQ8MkDqNUWBX7Kv9a2OMR/kM9i+h1V7x/XJ899xf59nc1J3CSK1wraxYlHXq
         hkgzeBosqJpSBVSBu5xYn3FOpgi4gAHCugaCE6K+VxfS9Ogs4rmDSIRN4ZE5OM4Iquqx
         WOYiDX0PR8Y3QJrBQ9smxUROnNHpZS/68zA5qm/LRyWRdP/pttkuGNpRVliaz8Jkw9QK
         SyLQ==
X-Gm-Message-State: AOAM533Q0V1DSNbbQDmbr/5DgCHtGNXEtAzMQTOfbRg5AZ53RZj/Ts8C
	XREDhuDfMcYRjxv7hoGHI9meX0jT62S1cF6/myeiAypNuZs=
X-Google-Smtp-Source: ABdhPJzSylodqEdKwn6BLb0nQgfMO2lzDuiVQelpQP1MorKcnzzWHLInbwLe9H7/0iDe7YkzoG708Jihwnv3AuCC7FM=
X-Received: by 2002:a25:4114:: with SMTP id o20mr25322544yba.330.1629457059970;
 Fri, 20 Aug 2021 03:57:39 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 20 Aug 2021 20:57:04 +1000
Message-ID: <CAA=hcWSyr3-zdT829OFMNCBM6GgdDU1-01i5REh3khs6w=+W4Q@mail.gmail.com>
Subject: Failed dbus on Hardknott oFono 1.31
To: ofono <ofono@ofono.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I upgraded from Zeus to Hardknotte, I was able to run dbus to get
interface properties, but I failed on Hardknotte ofono 1.31. Has
anyone got oFono 1.31 dbus work?

Thank you.

Kind regards,

- jupiter
